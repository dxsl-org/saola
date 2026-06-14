//// A resizable panel layout implemented as a Lustre component backed by the
//// `<resizable-split>` custom element.
////
//// ## Setup
////
//// Register the custom element once at application startup:
////
//// ```gleam
//// import saola/component/resizable_split
////
//// pub fn main() {
////   let assert Ok(_) = resizable_split.register()
////   // ... start your Lustre app
//// }
//// ```
////
//// ## Basic usage
////
//// ```gleam
//// import saola/component/resizable_split as rp
//// import lustre/element/html as h
////
//// fn view(model: Model) -> Element(Msg) {
////   rp.element(
////     [rp.direction(rp.Horizontal), rp.on_resize(UserResized)],
////     [
////       rp.panel_simple(50.0, h.div([], [h.text("Left")])),
////       rp.panel_simple(50.0, h.div([], [h.text("Right")])),
////     ],
////   )
//// }
//// ```
////
//// Use `panel` when you need a custom minimum size:
////
//// ```gleam
//// rp.panel(33.0, 15.0, h.div([], [h.text("Left")]))
//// ```

import gleam/dynamic
import gleam/dynamic/decode
import gleam/float
import gleam/int
import gleam/json
import gleam/list
import gleam/option.{type Option, None, Some}
import gleam/result
import lustre
import lustre/attribute.{type Attribute} as a
import lustre/component
import lustre/effect.{type Effect}
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as ev

pub const tag = "resizable-split"

pub type Direction {
  Horizontal
  Vertical
}

/// Per-panel configuration. Bundles size, minimum size, and content so the
/// compiler enforces consistent panel counts — mismatched lists are impossible.
pub type Panel(m) {
  Panel(size: Float, min_size: Float, content: Element(m))
}

/// Convenience constructor with a default minimum size of 10.0%.
pub fn panel_simple(size: Float, content: Element(m)) -> Panel(m) {
  Panel(size: size, min_size: 10.0, content: content)
}

/// Full constructor — explicit minimum size.
pub fn panel(size: Float, min_size: Float, content: Element(m)) -> Panel(m) {
  Panel(size: size, min_size: min_size, content: content)
}

/// Documents the events this component emits to the parent.
pub type EmitMessage {
  Resized(List(Float))
}

type Dragging {
  Dragging(
    handle_index: Int,
    start_pos: Float,
    start_sizes: List(Float),
    // 0.0 until measured via effect.before_paint — moves are skipped until set
    total_size: Float,
  )
}

type Model {
  Model(
    direction: Direction,
    sizes: List(Float),
    min_sizes: List(Float),
    dragging: Option(Dragging),
  )
}

type Message {
  ParentChangedDirection(Direction)
  ParentChangedSizes(List(Float))
  ParentChangedMinSizes(List(Float))
  UserPressedHandle(handle_index: Int, pos: Float)
  GotTotalSize(Float)
  UserMovedPointer(pos: Float)
  UserReleasedPointer
}

pub fn register() -> Result(Nil, lustre.Error) {
  let app =
    lustre.component(init, update, view, [
      component.on_attribute_change("direction", fn(raw) {
        raw |> string_to_direction |> result.map(ParentChangedDirection)
      }),
      component.on_property_change(
        "sizes",
        decode.list(decode.float) |> decode.map(ParentChangedSizes),
      ),
      component.on_property_change(
        "min-sizes",
        decode.list(decode.float) |> decode.map(ParentChangedMinSizes),
      ),
    ])
  lustre.register(app, tag)
}

// -- Parent-facing helpers -- //

/// Renders the resizable split layout. Sizes and slot wrappers are derived
/// from `panels` internally, so count mismatches are impossible.
pub fn element(
  attributes: List(Attribute(m)),
  panels: List(Panel(m)),
) -> Element(m) {
  let size_values = list.map(panels, fn(p) { p.size })
  let min_size_values = list.map(panels, fn(p) { p.min_size })
  let children =
    list.index_map(panels, fn(p, i) {
      h.div([a.attribute("slot", "panel-" <> int.to_string(i))], [p.content])
    })
  element.element(
    tag,
    list.flatten([
      [
        a.property("sizes", json.array(size_values, json.float)),
        a.property("min-sizes", json.array(min_size_values, json.float)),
      ],
      attributes,
    ]),
    children,
  )
}

pub fn direction(dir: Direction) -> Attribute(m) {
  a.attribute("direction", direction_to_string(dir))
}

pub fn on_resize(handler: fn(List(Float)) -> m) -> Attribute(m) {
  ev.on("resize", {
    use detail <- decode.field("detail", decode.list(decode.float))
    decode.success(handler(detail))
  })
}

// -- Internal -- //

fn direction_to_string(d: Direction) -> String {
  case d {
    Horizontal -> "horizontal"
    Vertical -> "vertical"
  }
}

fn string_to_direction(raw: String) -> Result(Direction, Nil) {
  case raw {
    "horizontal" -> Ok(Horizontal)
    "vertical" -> Ok(Vertical)
    _ -> Error(Nil)
  }
}

fn init(_) -> #(Model, Effect(Message)) {
  #(
    Model(direction: Horizontal, sizes: [], min_sizes: [], dragging: None),
    effect.none(),
  )
}

fn update(model: Model, message: Message) -> #(Model, Effect(Message)) {
  case message {
    ParentChangedDirection(d) -> #(
      Model(..model, direction: d, dragging: None),
      effect.none(),
    )

    ParentChangedSizes(s) -> #(Model(..model, sizes: s), effect.none())

    ParentChangedMinSizes(m) -> #(Model(..model, min_sizes: m), effect.none())

    UserPressedHandle(i, pos) -> {
      let drag =
        Dragging(
          handle_index: i,
          start_pos: pos,
          start_sizes: model.sizes,
          total_size: 0.0,
        )
      let dir = direction_to_string(model.direction)
      let eff = measure_host_effect(dir)
      #(Model(..model, dragging: Some(drag)), eff)
    }

    GotTotalSize(total) ->
      case model.dragging {
        None -> #(model, effect.none())
        Some(d) -> #(
          Model(..model, dragging: Some(Dragging(..d, total_size: total))),
          effect.none(),
        )
      }

    UserMovedPointer(pos) ->
      case model.dragging {
        None -> #(model, effect.none())
        Some(d) if d.total_size == 0.0 -> #(model, effect.none())
        Some(d) -> {
          let new_sizes = redistribute(model.sizes, model.min_sizes, d, pos)
          #(Model(..model, sizes: new_sizes), effect.none())
        }
      }

    UserReleasedPointer ->
      case model.dragging {
        None -> #(model, effect.none())
        Some(_) -> {
          let eff = emit_resize(model.sizes)
          #(Model(..model, dragging: None), eff)
        }
      }
  }
}

@external(javascript, "./resizable_split.ffi.mjs", "measureRoot")
fn measure_root(root: dynamic.Dynamic, direction: String) -> Float

fn measure_host_effect(direction: String) -> Effect(Message) {
  use dispatch, root <- effect.before_paint
  let size = measure_root(root, direction)
  dispatch(GotTotalSize(size))
  Nil
}

fn redistribute(
  sizes: List(Float),
  min_sizes: List(Float),
  d: Dragging,
  pos: Float,
) -> List(Float) {
  let i = d.handle_index
  let delta = { pos -. d.start_pos } /. d.total_size *. 100.0
  let default_min = 5.0
  let at = fn(lst, idx) { list.drop(lst, idx) |> list.first }
  let min_a = at(min_sizes, i) |> result.unwrap(default_min)
  let min_b = at(min_sizes, i + 1) |> result.unwrap(default_min)
  let orig_a = at(d.start_sizes, i) |> result.unwrap(50.0)
  let orig_b = at(d.start_sizes, i + 1) |> result.unwrap(50.0)
  let new_a = float.max(min_a, orig_a +. delta)
  let new_b = float.max(min_b, orig_b -. delta)
  let total = new_a +. new_b
  let orig_total = orig_a +. orig_b
  let #(scaled_a, scaled_b) = case total == orig_total {
    True -> #(new_a, new_b)
    False -> {
      let scale = orig_total /. total
      #(new_a *. scale, new_b *. scale)
    }
  }
  list.index_map(sizes, fn(s, j) {
    case j == i, j == i + 1 {
      True, _ -> scaled_a
      _, True -> scaled_b
      _, _ -> s
    }
  })
}

fn emit_resize(values: List(Float)) -> Effect(Message) {
  ev.emit("resize", json.array(values, json.float))
}

fn pointerdown_decoder(
  direction: Direction,
  index: Int,
) -> decode.Decoder(Message) {
  use client_x <- decode.field("clientX", decode.float)
  use client_y <- decode.field("clientY", decode.float)
  let pos = case direction {
    Horizontal -> client_x
    Vertical -> client_y
  }
  decode.success(UserPressedHandle(index, pos))
}

fn pointermove_decoder(direction: Direction) -> decode.Decoder(Message) {
  use client_x <- decode.field("clientX", decode.float)
  use client_y <- decode.field("clientY", decode.float)
  let pos = case direction {
    Horizontal -> client_x
    Vertical -> client_y
  }
  decode.success(UserMovedPointer(pos))
}

fn view(model: Model) -> Element(Message) {
  let flex_dir = case model.direction {
    Horizontal -> "row"
    Vertical -> "column"
  }
  let cursor = case model.direction {
    Horizontal -> "col-resize"
    Vertical -> "row-resize"
  }
  let panel_count = list.length(model.sizes)
  let panels =
    list.index_map(model.sizes, fn(size, i) {
      let panel_el =
        h.div(
          [
            a.style("flex", "0 0 " <> float.to_string(size) <> "%"),
            a.style("overflow", "auto"),
          ],
          [component.named_slot("panel-" <> int.to_string(i), [], [])],
        )
      case i < panel_count - 1 {
        False -> [panel_el]
        True -> {
          let #(h_w, h_h, icon_w, icon_h) = case model.direction {
            Horizontal -> #("5px", "auto", "3px", "1rem")
            Vertical -> #("100%", "5px", "1rem", "3px")
          }
          let handle =
            h.div(
              [
                a.style("cursor", cursor),
                a.style("width", h_w),
                a.style("height", h_h),
                a.style("flex-shrink", "0"),
                a.style("display", "flex"),
                a.style("align-items", "center"),
                a.style("justify-content", "center"),
                a.style("background-color", "var(--color-border, #dee2e6)"),
                a.style("transition", "background-color 0.15s"),
                a.data("handle-index", int.to_string(i)),
                a.attribute("part", "handle"),
                ev.on("pointerdown", pointerdown_decoder(model.direction, i)),
              ],
              [
                h.div(
                  [
                    a.style("width", icon_w),
                    a.style("height", icon_h),
                    a.style("border-radius", "9999px"),
                    a.style(
                      "background-color",
                      "var(--color-muted-foreground, #6c757d)",
                    ),
                    a.attribute("part", "handle-icon"),
                  ],
                  [],
                ),
              ],
            )
          [panel_el, handle]
        }
      }
    })
    |> list.flatten

  let drag_attrs = case model.dragging {
    None -> []
    Some(_) -> [
      ev.on("pointermove", pointermove_decoder(model.direction)),
      ev.on("pointerup", decode.success(UserReleasedPointer)),
    ]
  }

  h.div(
    list.flatten([
      [
        a.style("display", "flex"),
        a.style("width", "100%"),
        a.style("height", "100%"),
        a.style("flex-direction", flex_dir),
      ],
      drag_attrs,
    ]),
    panels,
  )
}
