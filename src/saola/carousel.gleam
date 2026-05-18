import gleam/dynamic/decode
import gleam/list
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e

@external(javascript, "./carousel_ffi.mjs", "ensure_registered")
fn ensure_registered() -> Nil

pub type CarouselOrientation {
  Horizontal
  Vertical
}

pub type CarouselAttrs {
  CarouselAttrs(orientation: CarouselOrientation, loop: Bool, class: String)
}

pub const default_attrs = CarouselAttrs(
  orientation: Horizontal,
  loop: False,
  class: "",
)

fn decode_change(
  callback: fn(Int, Bool, Bool) -> msg,
) -> decode.Decoder(msg) {
  use idx <- decode.subfield(["detail", "index"], decode.int)
  use can_prev <- decode.subfield(["detail", "canScrollPrev"], decode.bool)
  use can_next <- decode.subfield(["detail", "canScrollNext"], decode.bool)
  decode.success(callback(idx, can_prev, can_next))
}

fn orientation_str(o: CarouselOrientation) -> String {
  case o {
    Horizontal -> "horizontal"
    Vertical -> "vertical"
  }
}

pub fn carousel_full(
  slides: List(Element(msg)),
  current_index: Int,
  can_scroll_prev: Bool,
  can_scroll_next: Bool,
  on_change: fn(Int, Bool, Bool) -> msg,
  attrs: CarouselAttrs,
) -> Element(msg) {
  ensure_registered()
  let _ = current_index
  let _ = can_scroll_prev
  let _ = can_scroll_next
  let extra_class = case attrs.class {
    "" -> a.none()
    c -> a.class(c)
  }
  let loop_attr = case attrs.loop {
    True -> a.attribute("loop", "")
    False -> a.none()
  }
  let slide_wrappers =
    list.map(slides, fn(s) {
      h.div([a.attribute("data-slot", "slide")], [s])
    })
  element.element(
    "saola-carousel",
    [
      a.class("carousel-root"),
      a.attribute("orientation", orientation_str(attrs.orientation)),
      loop_attr,
      e.on("slide-change", decode_change(on_change)),
      extra_class,
    ],
    slide_wrappers,
  )
}

pub fn carousel_simple(
  slides: List(Element(msg)),
  current_index: Int,
  on_change: fn(Int, Bool, Bool) -> msg,
) -> Element(msg) {
  carousel_full(slides, current_index, True, True, on_change, default_attrs)
}
