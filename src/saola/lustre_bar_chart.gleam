import gleam/int
import gleam/list
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/element/svg
import saola/lustre_bar_chart_helpers as chart

pub type ChartPoint {
  ChartPoint(label: String, value: Float)
}

pub type BarChartAttrs {
  BarChartAttrs(
    id: String,
    title: String,
    width: Int,
    height: Int,
    class: String,
    aria_label: String,
  )
}

pub const default_bar_chart_attrs = BarChartAttrs(
  id: "",
  title: "",
  width: 640,
  height: 320,
  class: "",
  aria_label: "Bar chart",
)

pub fn bar_chart(
  data: List(ChartPoint),
  attrs attrs: BarChartAttrs,
) -> Element(msg) {
  let BarChartAttrs(id:, title:, width:, height:, class:, aria_label:) = attrs
  let layout = chart.new_layout(width, height)
  h.figure(
    [
      case id {
        "" -> a.none()
        value -> a.id(value)
      },
      a.class("saola-lustre-bar-chart " <> class),
      a.role("img"),
      a.aria_label(aria_label),
    ],
    [
      case title {
        "" -> element.none()
        value -> h.figcaption([], [h.text(value)])
      },
      render_svg(data, layout),
    ],
  )
}

fn render_svg(data: List(ChartPoint), layout: chart.Layout) -> Element(msg) {
  svg.svg(
    [
      a.attribute(
        "viewBox",
        "0 0 " <> chart.f(layout.width) <> " " <> chart.f(layout.height),
      ),
      a.attribute("width", "100%"),
      a.attribute("height", chart.f(layout.height)),
    ],
    [
      svg.g(
        [
          a.attribute(
            "transform",
            "translate("
              <> chart.f(layout.left)
              <> ","
              <> chart.f(layout.top)
              <> ")",
          ),
        ],
        chart_content(data, layout),
      ),
    ],
  )
}

fn chart_content(
  data: List(ChartPoint),
  layout: chart.Layout,
) -> List(Element(msg)) {
  case data {
    [] -> [
      svg.text(
        [
          a.attribute("x", chart.f(layout.inner_width /. 2.0)),
          a.attribute("y", chart.f(layout.inner_height /. 2.0)),
          a.attribute("text-anchor", "middle"),
          a.class("value"),
        ],
        "No data",
      ),
    ]
    _ -> {
      let max_value = data |> values |> chart.max_value
      [
        grid(layout, max_value),
        x_axis(data, layout),
        y_axis(layout, max_value),
        ..bars(data, layout, max_value)
      ]
    }
  }
}

fn bars(
  data: List(ChartPoint),
  layout: chart.Layout,
  max_value: Float,
) -> List(Element(msg)) {
  let count = data |> list.length |> int.to_float
  let gap = 18.0
  let band = layout.inner_width /. count
  let bar_width = chart.max_pair(band -. gap, 1.0)

  data
  |> chart.indexed_map(fn(point, index) {
    let ChartPoint(label:, value:) = point
    let x = index |> int.to_float
    let x = x *. band +. gap /. 2.0
    let height = chart.scaled(value, max_value, layout.inner_height)
    let y = layout.inner_height -. height
    svg.rect([
      a.class("bar"),
      a.attribute("x", chart.f(x)),
      a.attribute("y", chart.f(y)),
      a.attribute("width", chart.f(bar_width)),
      a.attribute("height", chart.f(height)),
    ])
    |> chart.with_title(label <> ": " <> chart.f(value))
  })
}

fn grid(layout: chart.Layout, max_value: Float) -> Element(msg) {
  svg.g(
    [a.class("grid")],
    chart.ticks(max_value)
      |> list.map(fn(tick) {
        let y =
          layout.inner_height
          -. chart.scaled(tick, max_value, layout.inner_height)
        svg.line([
          a.attribute("x1", "0"),
          a.attribute("x2", chart.f(layout.inner_width)),
          a.attribute("y1", chart.f(y)),
          a.attribute("y2", chart.f(y)),
        ])
      }),
  )
}

fn x_axis(data: List(ChartPoint), layout: chart.Layout) -> Element(msg) {
  let count = data |> list.length |> int.to_float
  let band = layout.inner_width /. count
  svg.g(
    [a.class("axis")],
    data
      |> chart.indexed_map(fn(point, index) {
        let ChartPoint(label:, ..) = point
        let x = index |> int.to_float
        let x = x *. band +. band /. 2.0
        svg.text(
          [
            a.attribute("x", chart.f(x)),
            a.attribute("y", chart.f(layout.inner_height +. 26.0)),
            a.attribute("text-anchor", "middle"),
          ],
          label,
        )
      }),
  )
}

fn y_axis(layout: chart.Layout, max_value: Float) -> Element(msg) {
  svg.g(
    [a.class("axis")],
    chart.ticks(max_value)
      |> list.map(fn(tick) {
        let y =
          layout.inner_height
          -. chart.scaled(tick, max_value, layout.inner_height)
        svg.text(
          [
            a.attribute("x", "-10"),
            a.attribute("y", chart.f(y +. 4.0)),
            a.attribute("text-anchor", "end"),
          ],
          chart.f(tick),
        )
      }),
  )
}

fn values(data: List(ChartPoint)) -> List(Float) {
  data
  |> list.map(fn(point) {
    let ChartPoint(value:, ..) = point
    value
  })
}
