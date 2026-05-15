import gleam/float
import gleam/int
import gleam/list
import lustre/element.{type Element}
import lustre/element/svg

pub type Layout {
  Layout(
    width: Float,
    height: Float,
    top: Float,
    right: Float,
    bottom: Float,
    left: Float,
    inner_width: Float,
    inner_height: Float,
  )
}

pub fn new_layout(width: Int, height: Int) -> Layout {
  let w = width |> int.max(320) |> int.to_float
  let h = height |> int.max(180) |> int.to_float
  let top = 18.0
  let right = 18.0
  let bottom = 40.0
  let left = 48.0
  Layout(
    width: w,
    height: h,
    top: top,
    right: right,
    bottom: bottom,
    left: left,
    inner_width: w -. left -. right,
    inner_height: h -. top -. bottom,
  )
}

pub fn ticks(max_value: Float) -> List(Float) {
  [0.0, max_value *. 0.25, max_value *. 0.5, max_value *. 0.75, max_value]
}

pub fn max_value(values: List(Float)) -> Float {
  values
  |> list.fold(0.0, fn(max, value) { float.max(max, value) })
  |> float.max(1.0)
}

pub fn max_pair(a: Float, b: Float) -> Float {
  float.max(a, b)
}

pub fn scaled(value: Float, max_value: Float, height: Float) -> Float {
  value /. max_value *. height
}

pub fn indexed_map(items: List(a), mapper: fn(a, Int) -> b) -> List(b) {
  do_indexed_map(items, mapper, 0, [])
}

fn do_indexed_map(
  items: List(a),
  mapper: fn(a, Int) -> b,
  index: Int,
  acc: List(b),
) {
  case items {
    [] -> list.reverse(acc)
    [first, ..rest] ->
      do_indexed_map(rest, mapper, index + 1, [mapper(first, index), ..acc])
  }
}

pub fn f(value: Float) -> String {
  value |> float.round |> int.to_string
}

pub fn with_title(rect: Element(msg), title: String) -> Element(msg) {
  element.namespaced(svg.namespace, "g", [], [
    rect,
    svg.title([], [element.text(title)]),
  ])
}
