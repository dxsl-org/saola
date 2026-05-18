import gleam/int
import gleam/list
import gleam/option.{type Option, None, Some}
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/element/svg
import saola/canvas_command as canvas
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

// ---------------------------------------------------------------------------
// Canvas renderer — outputs CanvasOutput(msg) instead of Element(msg)
// ---------------------------------------------------------------------------

pub fn bar_chart_canvas(
  data: List(ChartPoint),
  attrs: BarChartAttrs,
  on_bar_click: Option(fn(ChartPoint) -> msg),
) -> canvas.CanvasOutput(msg) {
  let layout = chart.new_layout(attrs.width, attrs.height)
  let max_val = data |> values |> chart.max_value
  let inner = case data {
    [] -> [
      canvas.SetFill("currentColor"),
      canvas.SetFont("12px sans-serif"),
      canvas.SetTextAlign("center"),
      canvas.FillText("No data", layout.inner_width /. 2.0, layout.inner_height /. 2.0),
    ]
    _ ->
      list.flatten([
        canvas_grid(layout, max_val),
        canvas_bars(data, layout, max_val),
        canvas_x_axis(data, layout),
        canvas_y_axis(layout, max_val),
      ])
  }
  let title_cmds = case attrs.title {
    "" -> []
    t -> [
      canvas.SetFill("currentColor"),
      canvas.SetFont("600 14px sans-serif"),
      canvas.SetTextAlign("center"),
      canvas.FillText(t, layout.width /. 2.0, 14.0),
    ]
  }
  let commands =
    list.flatten([
      title_cmds,
      [canvas.Save, canvas.Translate(layout.left, layout.top)],
      inner,
      [canvas.Restore],
    ])
  let hit_areas = case on_bar_click {
    None -> []
    Some(handler) -> canvas_bar_hit_areas(data, layout, max_val, handler)
  }
  canvas.CanvasOutput(commands:, hit_areas:)
}

fn canvas_grid(
  layout: chart.Layout,
  max_val: Float,
) -> List(canvas.CanvasCommand) {
  let path_cmds =
    chart.ticks(max_val)
    |> list.map(fn(tick) {
      let y = layout.inner_height -. chart.scaled(tick, max_val, layout.inner_height)
      [canvas.MoveTo(0.0, y), canvas.LineTo(layout.inner_width, y)]
    })
    |> list.flatten
  list.flatten([
    [
      canvas.SetStroke("hsl(214 32% 91%)"),
      canvas.SetLineWidth(0.5),
      canvas.BeginPath,
    ],
    path_cmds,
    [canvas.Stroke],
  ])
}

fn canvas_bars(
  data: List(ChartPoint),
  layout: chart.Layout,
  max_val: Float,
) -> List(canvas.CanvasCommand) {
  let count = data |> list.length |> int.to_float
  let gap = 18.0
  let band = layout.inner_width /. count
  let bar_width = chart.max_pair(band -. gap, 1.0)
  let bar_cmds =
    chart.indexed_map(data, fn(point, index) {
      let ChartPoint(value:, ..) = point
      let x = int.to_float(index) *. band +. gap /. 2.0
      let h = chart.scaled(value, max_val, layout.inner_height)
      let y = layout.inner_height -. h
      canvas.FillRect(x, y, bar_width, h)
    })
  [canvas.SetFill("#2563eb"), ..bar_cmds]
}

fn canvas_x_axis(
  data: List(ChartPoint),
  layout: chart.Layout,
) -> List(canvas.CanvasCommand) {
  let count = data |> list.length |> int.to_float
  let band = layout.inner_width /. count
  let label_cmds =
    chart.indexed_map(data, fn(point, index) {
      let ChartPoint(label:, ..) = point
      let x = int.to_float(index) *. band +. band /. 2.0
      canvas.FillText(label, x, layout.inner_height +. 26.0)
    })
  list.flatten([
    [
      canvas.SetFill("currentColor"),
      canvas.SetFont("12px sans-serif"),
      canvas.SetTextAlign("center"),
    ],
    label_cmds,
  ])
}

fn canvas_y_axis(
  layout: chart.Layout,
  max_val: Float,
) -> List(canvas.CanvasCommand) {
  let tick_cmds =
    chart.ticks(max_val)
    |> list.map(fn(tick) {
      let y = layout.inner_height -. chart.scaled(tick, max_val, layout.inner_height)
      canvas.FillText(chart.f(tick), -8.0, y +. 4.0)
    })
  list.flatten([
    [
      canvas.SetFill("currentColor"),
      canvas.SetFont("12px sans-serif"),
      canvas.SetTextAlign("right"),
    ],
    tick_cmds,
  ])
}

fn canvas_bar_hit_areas(
  data: List(ChartPoint),
  layout: chart.Layout,
  max_val: Float,
  handler: fn(ChartPoint) -> msg,
) -> List(canvas.HitArea(msg)) {
  let count = data |> list.length |> int.to_float
  let gap = 18.0
  let band = layout.inner_width /. count
  let bar_width = chart.max_pair(band -. gap, 1.0)
  chart.indexed_map(data, fn(point, index) {
    let ChartPoint(value:, ..) = point
    let x = int.to_float(index) *. band +. gap /. 2.0 +. layout.left
    let h = chart.scaled(value, max_val, layout.inner_height)
    let y = layout.inner_height -. h +. layout.top
    canvas.RectHit(x, y, bar_width, h, handler(point))
  })
}
