import gleam/option.{None}
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import saola/card
import saola/code_editor
import saola/d3_bar_chart
import saola/lustre_bar_chart
import saola/monaco_editor
import saola/preview/model.{type Message}

pub fn view_d3_charts() -> Element(Message) {
  h.div([a.class("grid gap-6")], [
    h.header([a.class("grid gap-2")], [
      h.h1([a.class("page-title")], [h.text("D3 Charts")]),
      h.p([a.class("page-description")], [
        h.text(
          "A blackbox Saola widget beside a pure Lustre SVG implementation.",
        ),
      ]),
    ]),
    d3_card(),
    lustre_card(),
  ])
}

pub fn view_monaco_editor() -> Element(Message) {
  h.div([a.class("grid gap-6")], [
    h.header([a.class("grid gap-2")], [
      h.h1([a.class("page-title")], [h.text("Code Editor")]),
      h.p([a.class("page-description")], [
        h.text(
          "Blackbox editor widgets. Saola renders a single custom element; the editor runtime owns keyboard interaction and text model.",
        ),
      ]),
    ]),
    codemirror_card(),
    monaco_card(),
  ])
}

fn codemirror_card() -> Element(Message) {
  card.card(card.CardAttrs(
    title: "CodeMirror 6",
    description: "Lightweight editor — fast startup, tree-sitter grammar, and a small bundle footprint.",
    content: [
      code_editor.editor(
        attrs: code_editor.EditorAttrs(
          ..code_editor.default_editor_attrs,
          value: "import gleam/io\n\npub fn main() {\n  io.println(\"Hello from Saola + CodeMirror\")\n}\n",
          language: "javascript",
          height: 300,
        ),
      ),
    ],
    footer: None,
  ))
}

fn monaco_card() -> Element(Message) {
  card.card(card.CardAttrs(
    title: "Monaco Editor",
    description: "VS Code's editor engine — IntelliSense, multi-cursor, diff view, and rich language support.",
    content: [
      monaco_editor.editor(
        attrs: monaco_editor.EditorAttrs(
          ..monaco_editor.default_editor_attrs,
          value: "import gleam/io\n\npub fn main() {\n  io.println(\"Hello from Saola + Monaco\")\n}\n",
          language: "javascript",
          height: 300,
        ),
      ),
    ],
    footer: None,
  ))
}

fn d3_card() -> Element(Message) {
  card.card(card.CardAttrs(
    title: "D3 blackbox",
    description: "Rendered by D3, mounted through a Saola custom element.",
    content: [
      d3_bar_chart.bar_chart(
        chart_data_d3(),
        attrs: d3_bar_chart.BarChartAttrs(
          ..d3_bar_chart.default_bar_chart_attrs,
          title: "Revenue",
          height: 320,
        ),
      ),
    ],
    footer: None,
  ))
}

fn lustre_card() -> Element(Message) {
  card.card(card.CardAttrs(
    title: "Pure Lustre SVG",
    description: "Rendered as regular Lustre SVG elements with no D3 runtime.",
    content: [
      lustre_bar_chart.bar_chart(
        chart_data_lustre(),
        attrs: lustre_bar_chart.BarChartAttrs(
          ..lustre_bar_chart.default_bar_chart_attrs,
          title: "Revenue",
          height: 320,
        ),
      ),
    ],
    footer: None,
  ))
}

fn chart_data_d3() -> List(d3_bar_chart.ChartPoint) {
  [
    d3_bar_chart.ChartPoint("Q1", 32.0),
    d3_bar_chart.ChartPoint("Q2", 48.0),
    d3_bar_chart.ChartPoint("Q3", 41.0),
    d3_bar_chart.ChartPoint("Q4", 64.0),
  ]
}

fn chart_data_lustre() -> List(lustre_bar_chart.ChartPoint) {
  [
    lustre_bar_chart.ChartPoint("Q1", 32.0),
    lustre_bar_chart.ChartPoint("Q2", 48.0),
    lustre_bar_chart.ChartPoint("Q3", 41.0),
    lustre_bar_chart.ChartPoint("Q4", 64.0),
  ]
}
