import gleam/option.{None, Some}
import gleam/uri.{type Uri}

import lustre
import lustre/attribute as a
import lustre/effect.{type Effect}
import lustre/element.{type Element}
import lustre/element/html as h
import modem

import saola/preview/model.{
  type Model, type Msg, Alerts, Buttons, DropdownMenus, Forms, Home, Inputs,
  Model, OnRouteChange, ToggleDropdown,
}
import saola/preview/view as views

pub fn main() {
  let app = lustre.application(init, update, view)
  let assert Ok(_) = lustre.start(app, "#app", Nil)

  Nil
}

fn init(_args) -> #(Model, Effect(Msg)) {
  let whatnext = case modem.initial_uri() {
    Ok(uri) -> {
      use dispatch <- effect.from
      dispatch(on_url_change(uri))
    }
    Error(_) -> effect.none()
  }
  #(
    Model(route: Home, open_dropdown: None),
    effect.batch([modem.init(on_url_change), whatnext]),
  )
}

fn on_url_change(uri: Uri) -> Msg {
  let route = case uri.path {
    "/alerts" -> Alerts
    "/buttons" -> Buttons
    "/inputs" -> Inputs
    "/forms" -> Forms
    "/dropdown-menus" -> DropdownMenus
    _ -> Home
  }
  OnRouteChange(route)
}

fn update(model: Model, msg: Msg) -> #(Model, Effect(Msg)) {
  case msg {
    OnRouteChange(route) -> #(Model(..model, route: route), effect.none())
    ToggleDropdown(id) -> {
      // Toggle dropdown: if already open, close it; otherwise open it
      let new_open = case model.open_dropdown {
        Some(current) if current == id -> None
        _ -> Some(id)
      }
      #(Model(..model, open_dropdown: new_open), effect.none())
    }
  }
}

fn view(model: Model) -> Element(Msg) {
  h.div([a.class("app-container")], [
    sidebar(model.route),
    main_pane(model),
  ])
}

fn sidebar(current_route: model.Route) -> Element(Msg) {
  h.div([a.class("sidebar")], [
    h.h2([a.class("sidebar-title")], [element.text("UI Showcase")]),
    nav_link("/alerts", "Alerts", current_route == Alerts),
    nav_link("/buttons", "Buttons", current_route == Buttons),
    nav_link("/inputs", "Inputs", current_route == Inputs),
    nav_link("/forms", "Forms", current_route == Forms),
    nav_link(
      "/dropdown-menus",
      "Dropdown Menus",
      current_route == model.DropdownMenus,
    ),
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

fn main_pane(model: Model) -> Element(Msg) {
  h.div([a.class("main-pane")], [
    case model.route {
      Home -> h.div([], [element.text("Select a widget category to preview.")])
      Alerts -> views.view_alerts()
      Buttons -> views.view_buttons()
      Inputs -> views.view_inputs()
      Forms -> views.view_forms()
      DropdownMenus -> views.view_dropdown_menus(model)
    },
  ])
}
