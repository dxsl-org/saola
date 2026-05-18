import gleam/dynamic/decode
import gleam/json
import gleam/list
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e

@external(javascript, "./resizable_ffi.mjs", "ensure_registered")
fn ensure_registered() -> Nil

pub type ResizableDirection {
  Horizontal
  Vertical
}

pub type ResizablePanel(msg) {
  ResizablePanel(content: Element(msg), min_size: Float)
}

pub type ResizableAttrs {
  ResizableAttrs(direction: ResizableDirection, class: String)
}

pub const default_attrs = ResizableAttrs(direction: Horizontal, class: "")

fn decode_resize(callback: fn(List(Float)) -> msg) -> decode.Decoder(msg) {
  use detail <- decode.field("detail", decode.list(decode.float))
  decode.success(callback(detail))
}

fn direction_str(dir: ResizableDirection) -> String {
  case dir {
    Horizontal -> "horizontal"
    Vertical -> "vertical"
  }
}

fn build_panel_slot(panel: ResizablePanel(msg), idx: Int) -> Element(msg) {
  h.div(
    [
      a.attribute("data-slot", "resizable-panel"),
      a.attribute("slot", "panel-" <> int_to_str(idx)),
    ],
    [panel.content],
  )
}

fn build_handle(_idx: Int) -> Element(msg) {
  h.div(
    [
      a.attribute("data-slot", "resizable-handle"),
      a.class("resizable-handle"),
      a.attribute("role", "separator"),
      a.attribute("aria-label", "Resize handle"),
    ],
    [h.div([a.class("resizable-handle-icon")], [])],
  )
}

fn int_to_str(n: Int) -> String {
  case n {
    0 -> "0"
    1 -> "1"
    2 -> "2"
    3 -> "3"
    4 -> "4"
    5 -> "5"
    6 -> "6"
    7 -> "7"
    8 -> "8"
    9 -> "9"
    _ -> "many"
  }
}

fn interleave_handles(
  panels: List(ResizablePanel(msg)),
  idx: Int,
) -> List(Element(msg)) {
  case panels {
    [] -> []
    [p] -> [build_panel_slot(p, idx)]
    [p, ..rest] ->
      [build_panel_slot(p, idx), build_handle(idx)]
      |> list.append(interleave_handles(rest, idx + 1))
  }
}

pub fn resizable_full(
  panels: List(ResizablePanel(msg)),
  sizes: List(Float),
  on_resize: fn(List(Float)) -> msg,
  attrs: ResizableAttrs,
) -> Element(msg) {
  ensure_registered()
  let min_sizes = list.map(panels, fn(p) { p.min_size })
  let extra_class = case attrs.class {
    "" -> a.none()
    c -> a.class(c)
  }
  element.element(
    "saola-resizable-panels",
    [
      a.class("resizable-root"),
      a.attribute("direction", direction_str(attrs.direction)),
      a.property("sizes", json.array(sizes, json.float)),
      a.property("minSizes", json.array(min_sizes, json.float)),
      e.on("resize", decode_resize(on_resize)),
      extra_class,
    ],
    interleave_handles(panels, 0),
  )
}

pub fn resizable_simple(
  panels: List(ResizablePanel(msg)),
  sizes: List(Float),
  on_resize: fn(List(Float)) -> msg,
) -> Element(msg) {
  resizable_full(panels, sizes, on_resize, default_attrs)
}
