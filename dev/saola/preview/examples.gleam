import gleam/list
import gleam/option.{None, Some}
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e
import saola/alert
import saola/badge
import saola/button
import saola/card
import saola/checkbox
import saola/d3_bar_chart
import saola/input
import saola/label
import saola/lustre_bar_chart
import saola/monaco_editor
import saola/preview/model.{
  type Model, type Msg, FormEmailChanged, FormMessageChanged, FormNameChanged,
  FormSubmitted, StartedTrial, TabChanged,
}
import saola/table
import saola/tabs
import saola/textarea

pub fn view_form_example(model: Model) -> Element(Msg) {
  card.card(card.CardAttrs(
    title: "Contact form",
    description: "A small Saola form wired with Lustre messages.",
    content: [
      h.form([a.class("grid gap-4"), e.on_submit(FormSubmitted)], [
        field("name", "Name", [
          input.input_full(
            input.Text,
            Some(input.SyncValue(model.form_name)),
            on_input: Some(FormNameChanged),
            extra_attrs: input.InputExtraAttrs(
              "name",
              "name",
              "Nguyen Van A",
              False,
              True,
              "",
            ),
          ),
        ]),
        field("email", "Email", [
          input.input_full(
            input.Email,
            Some(input.SyncValue(model.form_email)),
            on_input: Some(FormEmailChanged),
            extra_attrs: input.InputExtraAttrs(
              "email",
              "email",
              "you@example.com",
              False,
              True,
              "",
            ),
          ),
        ]),
        field("message", "Message", [
          textarea.textarea_full(
            Some(textarea.SyncValue(model.form_message)),
            on_input: Some(FormMessageChanged),
            extra_attrs: textarea.TextareaExtraAttrs(
              "message",
              "message",
              "How can we help?",
              Some(4),
              False,
              True,
              "",
            ),
          ),
        ]),
        checkbox.checkbox_full(
          "Send me product updates",
          checkbox.InitChecked(True),
          checkbox.ExtraAttrs(
            checkbox.FormAttr("updates", checkbox.InitValue("yes")),
            "updates",
            "",
          ),
          "This checkbox submits a normal form value.",
        ),
        button.button_full(
          button.Primary,
          "Send",
          button.Large,
          None,
          button.ButtonExtraAttrs(
            False,
            Some(button.Submit),
            button.default_aria,
          ),
        ),
      ]),
      submitted_summary(model.form_submitted_values),
    ],
    footer: None,
  ))
}

pub fn view_small_site_example(model: Model) -> Element(Msg) {
  h.main([a.class("grid gap-8")], [
    hero(),
    alert.alert_default(
      "All widgets below are Saola elements composed inside a normal Lustre view.",
    ),
    h.div([a.class("grid gap-4 md:grid-cols-3")], [
      metric_card("Projects", "18", "Active internal tools"),
      metric_card("Uptime", "99.9%", "Last 30 days"),
      metric_card("Deploys", "42", "This month"),
    ]),
    tabs.tabs_simple(
      tabs: [
        tabs.Tab("overview", "Overview", overview_panel()),
        tabs.Tab("plans", "Plans", plans_panel()),
        tabs.Tab("team", "Team", team_panel()),
      ],
      active_id: model.active_tab,
      on_tab_change: TabChanged,
    ),
  ])
}

pub fn view_d3_charts() -> Element(Msg) {
  h.div([a.class("grid gap-6")], [
    h.header([a.class("grid gap-2")], [
      h.h1([a.class("page-title")], [h.text("D3 Charts")]),
      h.p([a.class("page-description")], [
        h.text(
          "A blackbox Saola widget: Gleam provides typed data, D3 renders inside a custom element.",
        ),
      ]),
    ]),
    card.card(card.CardAttrs(
      title: "D3 blackbox",
      description: "Rendered by D3, mounted through a Saola custom element.",
      content: [
        d3_bar_chart.bar_chart(
          [
            d3_bar_chart.ChartPoint("Q1", 32.0),
            d3_bar_chart.ChartPoint("Q2", 48.0),
            d3_bar_chart.ChartPoint("Q3", 41.0),
            d3_bar_chart.ChartPoint("Q4", 64.0),
          ],
          attrs: d3_bar_chart.BarChartAttrs(
            ..d3_bar_chart.default_bar_chart_attrs,
            title: "Revenue",
            height: 320,
          ),
        ),
      ],
      footer: None,
    )),
    card.card(card.CardAttrs(
      title: "Pure Lustre SVG",
      description: "Rendered as regular Lustre SVG elements with no D3 runtime.",
      content: [
        lustre_bar_chart.bar_chart(
          [
            lustre_bar_chart.ChartPoint("Q1", 32.0),
            lustre_bar_chart.ChartPoint("Q2", 48.0),
            lustre_bar_chart.ChartPoint("Q3", 41.0),
            lustre_bar_chart.ChartPoint("Q4", 64.0),
          ],
          attrs: lustre_bar_chart.BarChartAttrs(
            ..lustre_bar_chart.default_bar_chart_attrs,
            title: "Revenue",
            height: 320,
          ),
        ),
      ],
      footer: None,
    )),
  ])
}

pub fn view_monaco_editor() -> Element(Msg) {
  h.div([a.class("grid gap-6")], [
    h.header([a.class("grid gap-2")], [
      h.h1([a.class("page-title")], [h.text("Monaco Editor")]),
      h.p([a.class("page-description")], [
        h.text(
          "A heavier blackbox widget: Saola renders one custom element, Monaco owns the editor runtime and interactions.",
        ),
      ]),
    ]),
    card.card(card.CardAttrs(
      title: "Interactive code editor",
      description: "Try typing, selection, keyboard shortcuts, minimap scrolling, and syntax highlighting.",
      content: [
        monaco_editor.editor(
          attrs: monaco_editor.EditorAttrs(
            ..monaco_editor.default_editor_attrs,
            value: "import gleam/io\n\npub fn main() {\n  io.println(\"Hello from Saola + Monaco\")\n}\n",
            language: "javascript",
            height: 420,
          ),
        ),
      ],
      footer: None,
    )),
  ])
}

fn hero() -> Element(Msg) {
  h.header([a.class("grid gap-4")], [
    h.div([a.class("flex items-center gap-2")], [
      badge.badge_secondary("Saola demo"),
      badge.badge_outline("Lustre"),
    ]),
    h.h1([a.class("text-4xl font-semibold")], [
      h.text("A small product page"),
    ]),
    h.p([a.class("max-w-2xl text-muted-foreground")], [
      h.text(
        "This page mixes Saola cards, badges, buttons, alerts, tabs, and tables.",
      ),
    ]),
    h.div([a.class("flex gap-3")], [
      button.button_primary("Start trial", StartedTrial),
      button.button_full(
        button.Secondary,
        "Read docs",
        button.Large,
        None,
        button.default_extra_attrs,
      ),
    ]),
  ])
}

fn field(
  id: String,
  title: String,
  children: List(Element(Msg)),
) -> Element(Msg) {
  h.div([a.class("grid gap-2")], [label.label_for(title, id), ..children])
}

fn submitted_summary(values: List(#(String, String))) -> Element(Msg) {
  case values {
    [] ->
      h.p([a.class("text-muted-foreground text-sm")], [
        h.text("Submit the form to see posted values."),
      ])
    _ ->
      h.ul(
        [a.class("text-sm")],
        values
          |> list.map(fn(pair) {
            let #(name, value) = pair
            h.li([], [h.text(name <> ": " <> value)])
          }),
      )
  }
}

fn metric_card(
  title: String,
  value: String,
  description: String,
) -> Element(Msg) {
  card.card(card.CardAttrs(
    title: title,
    description: description,
    content: [h.p([a.class("text-3xl font-semibold")], [h.text(value)])],
    footer: None,
  ))
}

fn overview_panel() -> Element(Msg) {
  card.card_simple("Overview", [
    h.p([], [
      h.text(
        "Use Saola like small typed building blocks. Lustre owns app state and routing.",
      ),
    ]),
  ])
}

fn plans_panel() -> Element(Msg) {
  table.table_simple(
    headers: ["Plan", "Price", "Status"],
    rows: [
      table.TableRow([
        table.TextCell("Starter"),
        table.TextCell("$19"),
        table.ElementCell(badge.badge_default("Available")),
      ]),
      table.TableRow([
        table.TextCell("Team"),
        table.TextCell("$49"),
        table.ElementCell(badge.badge_secondary("Popular")),
      ]),
    ],
    extra_attrs: table.TableExtraAttrs("Plans", ""),
  )
}

fn team_panel() -> Element(Msg) {
  card.card(card.CardAttrs(
    title: "Team workflow",
    description: "A compact panel rendered inside a Saola tab.",
    content: [
      h.ul([], [
        h.li([], [h.text("Review dashboard activity")]),
        h.li([], [h.text("Invite teammates")]),
        h.li([], [h.text("Track usage by workspace")]),
      ]),
    ],
    footer: Some(button.button_primary("Invite", StartedTrial)),
  ))
}
