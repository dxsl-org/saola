//// D3 bar chart component — registered as a Lustre component.
////
//// ## Setup
////
//// Register once at application startup, before the first render:
////
//// ```gleam
//// import saola/component/d3_bar_chart
////
//// pub fn main() {
////   let assert Ok(_) = d3_bar_chart.register()
////   // ... start your Lustre app
//// }
//// ```
////
//// ## Basic usage
////
//// ```gleam
//// d3_bar_chart.bar_chart(
////   data,
////   id: "",
////   title: "Revenue",
////   height: 280,
////   class: "",
////   aria_label: "Bar chart",
//// )
//// ```

import gleam/dynamic.{type Dynamic}
import gleam/int
import gleam/json
import lustre
import lustre/attribute.{type Attribute} as a
import lustre/effect.{type Effect}
import lustre/element.{type Element}

pub const tag = "saola-d3-bar-chart"

// ---------------------------------------------------------------------------
// Types (mirror old module so callers need minimal changes)
// ---------------------------------------------------------------------------

pub type ChartPoint {
  ChartPoint(label: String, value: Float)
}

// ---------------------------------------------------------------------------
// Lustre component
// ---------------------------------------------------------------------------

type Model {
  Model(ready: Bool)
}

type Message {
  ChartReady
}

/// Registers the `<saola-d3-bar-chart>` custom element with the browser.
/// Call once at application startup before rendering any chart elements.
pub fn register() -> Result(Nil, lustre.Error) {
  lustre.register(lustre.component(init, update, view, []), tag)
}

fn init(_) -> #(Model, Effect(Message)) {
  #(Model(ready: False), init_chart())
}

fn init_chart() -> Effect(Message) {
  use dispatch, root <- effect.after_paint
  ffi_build_chart(root, fn() { dispatch(ChartReady) })
  Nil
}

fn update(_: Model, msg: Message) -> #(Model, Effect(Message)) {
  case msg {
    ChartReady -> #(Model(ready: True), effect.none())
  }
}

fn view(_: Model) -> Element(Message) {
  // Shadow DOM: <style> injects scoped CSS, <div class="chart-root"> is
  // where D3 appends its figure+svg. Lustre won't clobber D3's additions
  // because the inner div always has zero virtual children — no diff produced.
  element.element("div", [], [
    element.element("style", [], [element.text(shadow_css)]),
    element.element("div", [a.class("chart-root")], []),
  ])
}

// ---------------------------------------------------------------------------
// Public API
// ---------------------------------------------------------------------------

/// Creates a `<saola-d3-bar-chart>` element accepting raw attribute lists.
pub fn element(attrs: List(Attribute(m))) -> Element(m) {
  element.element(tag, attrs, [])
}

/// Convenience wrapper — encodes data and attrs into properties/attributes.
pub fn bar_chart(
  data: List(ChartPoint),
  id id: String,
  title title: String,
  height height: Int,
  class class: String,
  aria_label aria_label: String,
) -> Element(msg) {
  element([
    case id {
      "" -> a.none()
      value -> a.id(value)
    },
    a.class("saola-d3-bar-chart " <> class),
    a.property("series", encode_points(data)),
    a.attribute("chart-title", title),
    a.attribute("height", int.to_string(height)),
    a.aria_label(aria_label),
  ])
}

/// Simple bar chart with no title, default height, and no extra attributes.
pub fn bar_chart_simple(data: List(ChartPoint)) -> Element(msg) {
  bar_chart(
    data,
    id: "",
    title: "",
    height: 280,
    class: "",
    aria_label: "Bar chart",
  )
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

fn encode_points(points: List(ChartPoint)) -> json.Json {
  json.array(points, of: fn(point) {
    let ChartPoint(label:, value:) = point
    json.object([
      #("label", json.string(label)),
      #("value", json.float(value)),
    ])
  })
}

// ---------------------------------------------------------------------------
// Shadow CSS
// ---------------------------------------------------------------------------
//
// Shadow CSS is required because Lustre components use Shadow DOM for style
// encapsulation. Unlike regular Lustre elements where styles inherit from the
// main document, shadow DOM creates a boundary that prevents external styles
// from leaking in (and component styles from leaking out).
//
// This means:
// 1. The component MUST provide ALL its own styles
// 2. Global stylesheets (e.g., Tailwind, reset CSS) do NOT apply inside
// 3. The component is style-isolated from the rest of the app
//
// Without this CSS string, the D3-rendered chart would have no styling at
// all. The styles define layout (.chart-root, figure.chart), typography
// (.title, .axis text), and visual properties (.bar fill colors, grid lines).
//
// This pattern is consistent with other Saola components (carousel,
// entity-graph-3d) that also define their styles in a shadow_css constant.

const shadow_css = "
  :host { display: block; min-width: 0; color: currentColor; font: inherit; }
  .chart-root { width: 100%; }
  figure.chart { margin: 0; }
  .chart { width: 100%; min-height: 180px; }
  .title { margin: 0 0 12px; font-size: 0.95rem; font-weight: 600; }
  svg { display: block; width: 100%; overflow: visible; }
  .axis text, .value { fill: currentColor; font-size: 12px; }
  .axis path, .axis line, .grid line { stroke: color-mix(in oklab, currentColor 18%, transparent); }
  .grid path { display: none; }
  .bar { fill: var(--saola-chart-bar, #2563eb); }
  .bar:hover { fill: var(--saola-chart-bar-hover, #1d4ed8); }
"

// ---------------------------------------------------------------------------
// FFI
// ---------------------------------------------------------------------------

@external(javascript, "./d3-bar-chart.ffi.mjs", "buildChart")
fn ffi_build_chart(root: Dynamic, on_ready: fn() -> Nil) -> Nil
