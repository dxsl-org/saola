import gleam/float
import gleam/int
import gleam/list
import gleam/option.{type Option, None, Some}
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import lustre/event as e
import saola/badge
import saola/canvas_command as canvas
import saola/lustre_bar_chart
import saola/preview/model.{
  type Message, type Model, StressBarClicked, StressOffsetChanged,
  StressZoomChanged,
}

// ---------------------------------------------------------------------------
// Synthetic dataset — 2 000 ChartPoints computed on demand
// ---------------------------------------------------------------------------

fn gen_data() -> List(lustre_bar_chart.ChartPoint) {
  indices(2000)
  |> list.map(fn(i) {
    // Primary wave: triangle wave with period 80
    let wave = case i % 80 < 40 {
      True -> int.to_float(i % 80)
      False -> int.to_float(80 - i % 80)
    }
    // Harmonic overlay: triangle wave with period 23
    let harmonic = case i % 23 < 12 {
      True -> int.to_float(i % 23) *. 2.0
      False -> int.to_float(23 - i % 23) *. 2.0
    }
    let val = wave +. harmonic +. int.to_float(i % 7) *. 1.5 +. 8.0
    lustre_bar_chart.ChartPoint("D" <> int.to_string(i), val)
  })
}

// Tail-recursive [0 .. n-1]
fn indices(n: Int) -> List(Int) {
  do_indices(n - 1, [])
}

fn do_indices(i: Int, acc: List(Int)) -> List(Int) {
  case i < 0 {
    True -> acc
    False -> do_indices(i - 1, [i, ..acc])
  }
}

// ---------------------------------------------------------------------------
// View
// ---------------------------------------------------------------------------

pub fn view(model: Model) -> Element(Message) {
  let all_data = gen_data()
  let total = list.length(all_data)
  let max_offset = total - model.stress_zoom
  let offset =
    int.clamp(model.stress_offset, min: 0, max: int.max(0, max_offset))
  let viewport = all_data |> list.drop(offset) |> list.take(model.stress_zoom)

  let chart_title =
    "D"
    <> int.to_string(offset)
    <> " … D"
    <> int.to_string(offset + model.stress_zoom - 1)
    <> "  ("
    <> int.to_string(model.stress_zoom)
    <> " of "
    <> int.to_string(total)
    <> " bars visible)"

  let output =
    lustre_bar_chart.bar_chart_canvas(
      viewport,
      lustre_bar_chart.BarChartAttrs(
        ..lustre_bar_chart.default_bar_chart_attrs,
        title: chart_title,
        width: 900,
        height: 380,
      ),
      Some(fn(pt: lustre_bar_chart.ChartPoint) {
        StressBarClicked(pt.label <> "  =  " <> float.to_string(pt.value))
      }),
    )

  h.div([a.class("grid gap-6")], [
    h.header([a.class("grid gap-2")], [
      h.h1([a.class("page-title")], [text("Canvas Stress Test")]),
      h.p([a.class("page-description")], [
        text(
          "Gleam generates 2 000 ChartPoints and computes all bar geometry into a "
          <> "CanvasCommand list on every render. The JS executor draws them in a single "
          <> "rAF pass — no virtual-DOM diffing per bar.",
        ),
      ]),
    ]),
    // ---- Controls -----------------------------------------------------------
    h.div([a.class("flex flex-wrap gap-8 items-end rounded-lg border p-4")], [
      h.label([a.class("grid gap-1 text-sm font-medium")], [
        text(
          "Scroll offset: "
          <> int.to_string(offset)
          <> " / "
          <> int.to_string(int.max(0, max_offset)),
        ),
        h.input([
          a.type_("range"),
          a.attribute("min", "0"),
          a.attribute("max", int.to_string(int.max(0, max_offset))),
          a.value(int.to_string(offset)),
          e.on_input(fn(v) { StressOffsetChanged(parse_int(v, 0)) }),
          a.class("w-64"),
        ]),
      ]),
      h.label([a.class("grid gap-1 text-sm font-medium")], [
        text("Bars in view: " <> int.to_string(model.stress_zoom)),
        h.input([
          a.type_("range"),
          a.attribute("min", "10"),
          a.attribute("max", "500"),
          a.value(int.to_string(model.stress_zoom)),
          e.on_input(fn(v) { StressZoomChanged(parse_int(v, 50)) }),
          a.class("w-48"),
        ]),
      ]),
    ]),
    // ---- Chart --------------------------------------------------------------
    canvas.canvas_element(output, fn(_, _) { StressBarClicked("") }),
    // ---- Selection info -----------------------------------------------------
    selected_info(model.stress_selected),
    // ---- Architecture note --------------------------------------------------
    h.details([a.class("text-sm rounded-lg border p-4 grid gap-2")], [
      h.summary([a.class("font-medium cursor-pointer")], [
        text("How it works"),
      ]),
      h.p([a.class("text-muted-foreground")], [
        text(
          "gen_data() produces a List(ChartPoint) of length 2 000 in pure Gleam. "
          <> "list.drop + list.take slice the viewport. bar_chart_canvas() maps each "
          <> "point to FillRect + RectHit commands — no DOM nodes per bar. "
          <> "canvas_element() serialises the command list to JSON and sets it as a "
          <> "property on <saola-canvas>; the web component replays in requestAnimationFrame.",
        ),
      ]),
    ]),
  ])
}

fn selected_info(sel: Option(String)) -> Element(Message) {
  case sel {
    None ->
      h.p([a.class("text-sm text-muted-foreground")], [
        text("Click any bar to inspect its value."),
      ])
    Some(info) ->
      h.div([a.class("flex gap-2 items-center text-sm")], [
        h.span([], [text("Selected →")]),
        badge.badge_default(info),
      ])
  }
}

fn parse_int(s: String, default: Int) -> Int {
  case int.parse(s) {
    Ok(n) -> n
    Error(_) -> default
  }
}
