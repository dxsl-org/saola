import gleam/option.{None, Some}
import lustre/attribute as a
import lustre/effect
import lustre/element.{type Element}
import lustre/element/html as h
import saola/alert
import saola/badge
import saola/button
import saola/card
import saola/table
import saola/tabs

pub type Model {
  Model(active_tab: String)
}

pub type Msg {
  TabChanged(String)
  StartedTrial
}

pub fn init(_args) {
  #(Model(active_tab: "overview"), effect.none())
}

pub fn update(model: Model, msg: Msg) {
  case msg {
    TabChanged(active_tab) -> #(Model(active_tab: active_tab), effect.none())
    StartedTrial -> #(model, effect.none())
  }
}

pub fn view(model: Model) -> Element(Msg) {
  h.main([a.class("min-h-screen bg-background text-foreground")], [
    h.section([a.class("mx-auto grid max-w-5xl gap-8 px-6 py-10")], [
      hero(),
      alert.alert_default("All widgets below are Saola elements composed inside a normal Lustre view."),
      metrics(),
      tabs.tabs_simple(
        tabs: [
          tabs.Tab("overview", "Overview", overview_panel()),
          tabs.Tab("plans", "Plans", plans_panel()),
          tabs.Tab("team", "Team", team_panel()),
        ],
        active_id: model.active_tab,
        on_tab_change: TabChanged,
      ),
    ]),
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
      h.text("This page mixes Saola cards, badges, buttons, alerts, tabs, and tables."),
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

fn metrics() -> Element(Msg) {
  h.div([a.class("grid gap-4 md:grid-cols-3")], [
    metric_card("Projects", "18", "Active internal tools"),
    metric_card("Uptime", "99.9%", "Last 30 days"),
    metric_card("Deploys", "42", "This month"),
  ])
}

fn metric_card(title: String, value: String, description: String) -> Element(Msg) {
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
      h.text("Use Saola like small typed building blocks. Lustre owns app state and routing."),
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
