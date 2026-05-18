import gleam/int
import gleam/json
import lustre/attribute as a
import lustre/element.{type Element}

@external(javascript, "./d3_bar_chart_ffi.mjs", "ensure_registered")
fn ensure_registered() -> Nil

pub type ChartPoint {
  ChartPoint(label: String, value: Float)
}

pub type BarChartAttrs {
  BarChartAttrs(
    id: String,
    title: String,
    height: Int,
    class: String,
    aria_label: String,
  )
}

pub const default_bar_chart_attrs = BarChartAttrs(
  id: "",
  title: "",
  height: 280,
  class: "",
  aria_label: "Bar chart",
)

pub fn bar_chart(
  data: List(ChartPoint),
  attrs attrs: BarChartAttrs,
) -> Element(msg) {
  ensure_registered()
  let BarChartAttrs(id:, title:, height:, class:, aria_label:) = attrs
  element.element("saola-d3-bar-chart", [
    case id {
      "" -> a.none()
      value -> a.id(value)
    },
    a.class("saola-d3-bar-chart " <> class),
    a.property("series", encode_points(data)),
    a.attribute("chart-title", title),
    a.attribute("height", height |> int.to_string),
    a.aria_label(aria_label),
  ], [])
}

pub fn bar_chart_simple(data: List(ChartPoint)) -> Element(msg) {
  bar_chart(data, attrs: default_bar_chart_attrs)
}

fn encode_points(points: List(ChartPoint)) -> json.Json {
  json.array(points, of: fn(point) {
    let ChartPoint(label:, value:) = point
    json.object([
      #("label", json.string(label)),
      #("value", json.float(value)),
    ])
  })
}
