//// Carousel component — a scroll-snap slideshow registered as a Lustre component.
////
//// ## Setup
////
//// Register once at application startup, before the first render:
////
//// ```gleam
//// import saola/component/carousel
////
//// pub fn main() {
////   let assert Ok(_) = carousel.register()
////   // ... start your Lustre app
//// }
//// ```
////
//// ## Basic usage
////
//// ```gleam
//// carousel.element(
////   [
////     a.attribute("orientation", "horizontal"),
////     carousel.on_change(fn(idx, _can_prev, _can_next) { SlideChanged(idx) }),
////   ],
////   slides,
//// )
//// ```
////
//// ## Parent-driven navigation
////
//// Set the `target-index` property to scroll programmatically:
////
//// ```gleam
//// carousel.element(
////   [
////     a.property("target-index", json.int(model.target_slide)),
////     carousel.on_change(fn(idx, _, _) { SlideChanged(idx) }),
////   ],
////   slides,
//// )
//// ```

import gleam/dynamic.{type Dynamic}
import gleam/dynamic/decode
import gleam/int
import gleam/json
import lustre
import lustre/attribute.{type Attribute} as a
import lustre/component
import lustre/effect.{type Effect}
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as ev

pub const tag = "saola-carousel"

type Model {
  Model(
    index: Int,
    slide_count: Int,
    orientation: Orientation,
    loop: Bool,
    has_listeners: Bool,
  )
}

pub type Orientation {
  Horizontal
  Vertical
}

type Message {
  UserScrolledTo(Int)
  SlidesChanged(Int)
  ParentSetOrientation(Orientation)
  ParentSetLoop(Bool)
  ParentSetTargetIndex(Int)
  ListenersRegistered
}

/// Registers the `<saola-carousel>` custom element with the browser.
/// Call once at application startup before rendering any carousel elements.
pub fn register() -> Result(Nil, lustre.Error) {
  let app =
    lustre.component(init, update, view, [
      component.on_attribute_change("orientation", fn(v) {
        case v {
          "vertical" -> Ok(ParentSetOrientation(Vertical))
          _ -> Ok(ParentSetOrientation(Horizontal))
        }
      }),
      component.on_attribute_change("loop", fn(v) {
        Ok(ParentSetLoop(v == "true"))
      }),
      component.on_property_change("target-index", {
        decode.int |> decode.map(ParentSetTargetIndex)
      }),
    ])
  lustre.register(app, tag)
}

/// Creates a `<saola-carousel>` element.
/// Pass `slides` as direct children — no wrapper divs needed.
pub fn element(
  attributes: List(Attribute(m)),
  slides: List(Element(m)),
) -> Element(m) {
  element.element(tag, attributes, slides)
}

/// Fires when the visible slide changes.
/// Handler receives `(index, can_scroll_prev, can_scroll_next)`.
pub fn on_change(handler: fn(Int, Bool, Bool) -> m) -> Attribute(m) {
  ev.on("slide-change", {
    use idx <- decode.subfield(["detail", "index"], decode.int)
    use can_prev <- decode.subfield(["detail", "canScrollPrev"], decode.bool)
    use can_next <- decode.subfield(["detail", "canScrollNext"], decode.bool)
    decode.success(handler(idx, can_prev, can_next))
  })
}

fn init(_) -> #(Model, Effect(Message)) {
  let model =
    Model(
      index: 0,
      slide_count: 0,
      orientation: Horizontal,
      loop: False,
      has_listeners: False,
    )
  #(model, register_listeners())
}

fn register_listeners() -> Effect(Message) {
  use dispatch, root <- effect.after_paint
  let count = ffi_slide_count(root)
  ffi_add_scroll_listener(root, fn(idx) { dispatch(UserScrolledTo(idx)) })
  ffi_add_slot_change_listener(root, fn(n) { dispatch(SlidesChanged(n)) })
  dispatch(SlidesChanged(count))
  dispatch(ListenersRegistered)
  Nil
}

fn update(model: Model, message: Message) -> #(Model, Effect(Message)) {
  case message {
    UserScrolledTo(idx) ->
      case model.slide_count {
        0 -> #(model, effect.none())
        count -> {
          let clamped = int.clamp(idx, min: 0, max: count - 1)
          #(Model(..model, index: clamped), emit_slide_change(clamped, model))
        }
      }
    SlidesChanged(n) -> #(Model(..model, slide_count: n), effect.none())
    ParentSetOrientation(o) -> #(Model(..model, orientation: o), effect.none())
    ParentSetLoop(b) -> #(Model(..model, loop: b), effect.none())
    ParentSetTargetIndex(idx) ->
      case model.slide_count {
        0 -> #(model, effect.none())
        count -> {
          let target = case model.loop {
            True -> { { idx % count } + count } % count
            False -> int.clamp(idx, min: 0, max: count - 1)
          }
          #(
            Model(..model, index: target),
            effect.batch([
              scroll_to(target, model.orientation),
              emit_slide_change(target, model),
            ]),
          )
        }
      }
    ListenersRegistered -> #(Model(..model, has_listeners: True), effect.none())
  }
}

fn emit_slide_change(index: Int, model: Model) -> Effect(Message) {
  let count = model.slide_count
  let can_prev = model.loop || index > 0
  let can_next = model.loop || index < count - 1
  ev.emit(
    "slide-change",
    json.object([
      #("index", json.int(index)),
      #("canScrollPrev", json.bool(can_prev)),
      #("canScrollNext", json.bool(can_next)),
    ]),
  )
}

fn scroll_to(index: Int, orientation: Orientation) -> Effect(Message) {
  use _, root <- effect.after_paint
  let o = case orientation {
    Horizontal -> "horizontal"
    Vertical -> "vertical"
  }
  ffi_scroll_viewport_to(root, index, o)
  Nil
}

fn view(_: Model) -> Element(Message) {
  h.div([], [
    element.element("style", [], [element.text(shadow_css)]),
    h.div([a.class("viewport")], [element.element("slot", [], [])]),
  ])
}

const shadow_css = "
  :host { display: block; position: relative; width: 100%; height: 100%; }
  :host > div { height: 100%; }
  .viewport {
    display: flex; overflow: auto; width: 100%; height: 100%;
    scroll-snap-type: x mandatory; scrollbar-width: none;
  }
  .viewport::-webkit-scrollbar { display: none; }
  :host([orientation=\"vertical\"]) .viewport {
    flex-direction: column; scroll-snap-type: y mandatory;
  }
  ::slotted(*) { flex: 0 0 100%; scroll-snap-align: start; }
"

@external(javascript, "./carousel.ffi.mjs", "addScrollListener")
fn ffi_add_scroll_listener(root: Dynamic, callback: fn(Int) -> Nil) -> Nil

@external(javascript, "./carousel.ffi.mjs", "addSlotChangeListener")
fn ffi_add_slot_change_listener(root: Dynamic, callback: fn(Int) -> Nil) -> Nil

@external(javascript, "./carousel.ffi.mjs", "scrollViewportTo")
fn ffi_scroll_viewport_to(root: Dynamic, index: Int, orientation: String) -> Nil

@external(javascript, "./carousel.ffi.mjs", "slideCount")
fn ffi_slide_count(root: Dynamic) -> Int
