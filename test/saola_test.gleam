import form_example
import gleam/string
import gleeunit
import lustre/element
import saola/d3_bar_chart
import saola/lustre_bar_chart
import saola/monaco_editor
import small_site_example

pub fn main() -> Nil {
  gleeunit.main()
}

pub fn form_example_renders_test() {
  let model =
    form_example.Model(
      name: "Linh",
      email: "linh@example.com",
      message: "I want to try Saola.",
      submitted_values: [],
    )

  let html = form_example.view(model) |> element.to_string

  assert string.contains(html, "Contact form")
  assert string.contains(html, "name=\"email\"")
  assert string.contains(html, "<textarea")
  assert string.contains(html, "type=\"submit\"")
}

pub fn small_site_example_renders_test() {
  let model = small_site_example.Model(active_tab: "plans")
  let html = small_site_example.view(model) |> element.to_string

  assert string.contains(html, "A small product page")
  assert string.contains(html, "Saola demo")
  assert string.contains(html, "role=\"tablist\"")
  assert string.contains(html, "Plans")
  assert string.contains(html, "Team")
}

pub fn d3_bar_chart_renders_custom_element_test() {
  let html =
    d3_bar_chart.bar_chart(
      [
        d3_bar_chart.ChartPoint("Q1", 10.0),
        d3_bar_chart.ChartPoint("Q2", 20.0),
      ],
      attrs: d3_bar_chart.BarChartAttrs(
        ..d3_bar_chart.default_bar_chart_attrs,
        title: "Revenue",
      ),
    )
    |> element.to_string

  assert string.contains(html, "saola-d3-bar-chart")
  assert string.contains(html, "chart-title=\"Revenue\"")
  assert string.contains(html, "height=\"280\"")
}

pub fn lustre_bar_chart_renders_svg_test() {
  let html =
    lustre_bar_chart.bar_chart(
      [
        lustre_bar_chart.ChartPoint("Q1", 10.0),
        lustre_bar_chart.ChartPoint("Q2", 20.0),
      ],
      attrs: lustre_bar_chart.BarChartAttrs(
        ..lustre_bar_chart.default_bar_chart_attrs,
        title: "Revenue",
      ),
    )
    |> element.to_string

  assert string.contains(html, "saola-lustre-bar-chart")
  assert string.contains(html, "<svg")
  assert string.contains(html, "<rect")
  assert string.contains(html, "Revenue")
}

pub fn monaco_editor_renders_custom_element_test() {
  let html =
    monaco_editor.editor(
      attrs: monaco_editor.EditorAttrs(
        ..monaco_editor.default_editor_attrs,
        value: "console.log(\"hello\")",
        language: "javascript",
        height: 420,
      ),
    )
    |> element.to_string

  assert string.contains(html, "saola-monaco-editor")
  assert string.contains(html, "language=\"javascript\"")
  assert string.contains(html, "height=\"420\"")
}
