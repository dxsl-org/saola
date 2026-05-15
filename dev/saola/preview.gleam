import gleam/int
import gleam/list
import gleam/option.{None, Some}
import gleam/uri.{type Uri}

import lustre
import lustre/attribute as a
import lustre/effect.{type Effect}
import lustre/element.{type Element}
import lustre/element/html as h
import modem

import saola/preview/model.{
  type Model, type Msg, Alerts, Badges, Buttons, Cards, CloseDialog, D3Charts,
  Dialogs, DropdownMenus, ExampleForm, ExampleSite, Fields, Forms,
  FormEmailChanged, FormMessageChanged, FormNameChanged, FormSubmitted, Home,
  Inputs, Model, MonacoEditor, OnRouteChange, OpenDialog, SelectChanged,
  Selects, Separators, SliderChanged, Sliders, StartedTrial, Switches,
  SwitchToggled, Tables, Tabs, Toasts, Tooltips, ToggleDropdown, TabChanged,
  AddToast, DismissToast,
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
    Model(
      route: Home,
      open_dropdown: None,
      active_tab: "account",
      is_dialog_open: False,
      toasts: [],
      form_name: "",
      form_email: "",
      form_message: "",
      form_submitted_values: [],
      switch_notifications: True,
      switch_marketing: False,
      slider_volume: 60,
      slider_brightness: 80,
      select_fruit: "apple",
      select_timezone: "asia/ho_chi_minh",
    ),
    effect.batch([modem.init(on_url_change), whatnext]),
  )
}

fn on_url_change(uri: Uri) -> Msg {
  let route = case uri.path {
    "/alerts" -> Alerts
    "/badges" -> Badges
    "/cards" -> Cards
    "/buttons" -> Buttons
    "/inputs" -> Inputs
    "/forms" -> Forms
    "/dropdown-menus" -> DropdownMenus
    "/tabs" -> Tabs
    "/dialogs" -> Dialogs
    "/tables" -> Tables
    "/toasts" -> Toasts
    "/d3-charts" -> D3Charts
    "/monaco-editor" -> MonacoEditor
    "/example-form" -> ExampleForm
    "/example-site" -> ExampleSite
    "/separators" -> Separators
    "/tooltips" -> Tooltips
    "/switches" -> Switches
    "/sliders" -> Sliders
    "/selects" -> Selects
    "/fields" -> Fields
    _ -> Home
  }
  OnRouteChange(route)
}

fn update(model: Model, msg: Msg) -> #(Model, Effect(Msg)) {
  case msg {
    OnRouteChange(route) -> #(Model(..model, route: route), effect.none())
    ToggleDropdown(id) -> {
      let new_open = case model.open_dropdown {
        Some(current) if current == id -> None
        _ -> Some(id)
      }
      #(Model(..model, open_dropdown: new_open), effect.none())
    }
    TabChanged(id) -> #(Model(..model, active_tab: id), effect.none())
    OpenDialog -> #(Model(..model, is_dialog_open: True), effect.none())
    CloseDialog -> #(Model(..model, is_dialog_open: False), effect.none())
    AddToast(toast) -> #(
      Model(..model, toasts: list.append(model.toasts, [toast])),
      effect.none(),
    )
    DismissToast(id) -> #(
      Model(
        ..model,
        toasts: list.filter(model.toasts, fn(t) { t.id != id }),
      ),
      effect.none(),
    )
    FormNameChanged(name) -> #(Model(..model, form_name: name), effect.none())
    FormEmailChanged(email) -> #(
      Model(..model, form_email: email),
      effect.none(),
    )
    FormMessageChanged(message) -> #(
      Model(..model, form_message: message),
      effect.none(),
    )
    FormSubmitted(values) -> #(
      Model(..model, form_submitted_values: values),
      effect.none(),
    )
    StartedTrial -> #(model, effect.none())
    SwitchToggled(id, value) ->
      case id {
        "notifications" -> #(
          Model(..model, switch_notifications: value),
          effect.none(),
        )
        "marketing" -> #(
          Model(..model, switch_marketing: value),
          effect.none(),
        )
        _ -> #(model, effect.none())
      }
    SliderChanged(id, value) -> {
      let n = int.parse(value) |> result_unwrap(0)
      case id {
        "volume" -> #(Model(..model, slider_volume: n), effect.none())
        "brightness" -> #(Model(..model, slider_brightness: n), effect.none())
        _ -> #(model, effect.none())
      }
    }
    SelectChanged(id, value) ->
      case id {
        "fruit" -> #(Model(..model, select_fruit: value), effect.none())
        "timezone" -> #(Model(..model, select_timezone: value), effect.none())
        _ -> #(model, effect.none())
      }
  }
}

fn result_unwrap(r: Result(a, e), default: a) -> a {
  case r {
    Ok(v) -> v
    Error(_) -> default
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
    nav_link("/badges", "Badges", current_route == Badges),
    nav_link("/cards", "Cards", current_route == Cards),
    nav_link("/buttons", "Buttons", current_route == Buttons),
    nav_link("/inputs", "Inputs", current_route == Inputs),
    nav_link("/forms", "Forms", current_route == Forms),
    nav_link("/separators", "Separator", current_route == Separators),
    nav_link("/tooltips", "Tooltip", current_route == Tooltips),
    nav_link("/switches", "Switch", current_route == Switches),
    nav_link("/sliders", "Slider", current_route == Sliders),
    nav_link("/selects", "Select", current_route == Selects),
    nav_link("/fields", "Field", current_route == Fields),
    nav_link("/dropdown-menus", "Dropdown Menus", current_route == DropdownMenus),
    nav_link("/tabs", "Tabs", current_route == Tabs),
    nav_link("/dialogs", "Dialogs", current_route == Dialogs),
    nav_link("/tables", "Tables", current_route == Tables),
    nav_link("/toasts", "Toasts", current_route == Toasts),
    nav_link("/d3-charts", "D3 Charts", current_route == D3Charts),
    nav_link("/monaco-editor", "Monaco Editor", current_route == MonacoEditor),
    nav_link("/example-form", "Example Form", current_route == ExampleForm),
    nav_link("/example-site", "Example Site", current_route == ExampleSite),
  ])
}

fn nav_link(path: String, label: String, is_active: Bool) -> Element(Msg) {
  let active_class = case is_active {
    True -> " active"
    False -> ""
  }
  h.a(
    [a.href(path), a.class("nav-link" <> active_class)],
    [element.text(label)],
  )
}

fn main_pane(model: Model) -> Element(Msg) {
  h.div([a.class("main-pane")], [
    case model.route {
      Home -> h.div([], [element.text("Select a widget category to preview.")])
      Alerts -> views.view_alerts()
      Badges -> views.view_badges()
      Cards -> views.view_cards()
      Buttons -> views.view_buttons()
      Inputs -> views.view_inputs()
      Forms -> views.view_forms()
      Separators -> views.view_separators()
      Tooltips -> views.view_tooltips()
      Switches -> views.view_switches(model)
      Sliders -> views.view_sliders(model)
      Selects -> views.view_selects(model)
      Fields -> views.view_fields(model)
      DropdownMenus -> views.view_dropdown_menus(model)
      Tabs -> views.view_tabs(model)
      Dialogs -> views.view_dialogs(model)
      Tables -> views.view_tables()
      Toasts -> views.view_toasts(model)
      D3Charts -> views.view_d3_charts()
      MonacoEditor -> views.view_monaco_editor()
      ExampleForm -> views.view_form_example(model)
      ExampleSite -> views.view_small_site_example(model)
    },
  ])
}
