import gleam/uri.{type Uri}
import lustre
import lustre/attribute as a
import lustre/effect.{type Effect}
import lustre/element.{type Element}
import lustre/element/html as h
import modem
import preview/models.{
  type Model, type Msg, Alerts, Forms, Home, Inputs, Model, OnRouteChange,
}

pub fn main() {
  let app = lustre.application(init, update, view)
  let assert Ok(_) = lustre.start(app, "#app", Nil)

  Nil
}

fn init(_args) -> #(Model, Effect(Msg)) {
  #(Model(route: Home), modem.init(on_url_change))
}

fn on_url_change(uri: Uri) -> Msg {
  case uri.path {
    "/alerts" -> OnRouteChange(Alerts)
    "/inputs" -> OnRouteChange(Inputs)
    "/forms" -> OnRouteChange(Forms)
    _ -> OnRouteChange(Home)
  }
}

fn update(_model: Model, msg: Msg) -> #(Model, Effect(Msg)) {
  case msg {
    OnRouteChange(route) -> #(Model(route: route), effect.none())
  }
}

fn view(model: Model) -> Element(Msg) {
  h.div([a.class("app-container")], [
    sidebar(model.route),
    main_pane(model.route),
  ])
}

fn sidebar(current_route: models.Route) -> Element(Msg) {
  h.div([a.class("sidebar")], [
    h.h2([a.class("sidebar-title")], [element.text("UI Showcase")]),
    nav_link("/alerts", "Alerts", current_route == Alerts),
    nav_link("/inputs", "Inputs", current_route == Inputs),
    nav_link("/forms", "Forms", current_route == Forms),
  ])
}

fn nav_link(path: String, label: String, is_active: Bool) -> Element(Msg) {
  let active_class = case is_active {
    True -> " active"
    False -> ""
  }

  h.a(
    [
      a.href(path),
      a.class("nav-link" <> active_class),
    ],
    [element.text(label)],
  )
}

fn main_pane(route: models.Route) -> Element(Msg) {
  h.div([a.class("main-pane")], [
    case route {
      Home -> h.div([], [element.text("Select a widget category to preview.")])
      Alerts -> view_alerts()
      Inputs -> view_inputs()
      Forms -> view_forms()
    },
  ])
}

fn view_alerts() -> Element(Msg) {
  h.div([], [
    h.h1([a.class("page-title")], [element.text("Alerts")]),
    h.p([a.class("page-description")], [
      element.text("Showcase of alert notifications."),
    ]),
  ])
}

fn view_inputs() -> Element(Msg) {
  h.div([], [
    h.h1([a.class("page-title")], [element.text("Inputs")]),
    h.p([a.class("page-description")], [
      element.text("Showcase of text inputs, checkboxes, etc."),
    ]),
  ])
}

fn view_forms() -> Element(Msg) {
  h.div([], [
    h.h1([a.class("page-title")], [element.text("Forms")]),
    h.p([a.class("page-description")], [
      element.text("Showcase of complex form layouts."),
    ]),
  ])
}
