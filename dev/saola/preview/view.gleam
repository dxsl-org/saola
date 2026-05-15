import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h

import saola/preview/alert
import saola/preview/badge
import saola/preview/button
import saola/preview/card
import saola/preview/dialog
import saola/preview/dropdown_menu
import saola/preview/examples
import saola/preview/input
import saola/preview/model.{type Model, type Msg}
import saola/preview/table
import saola/preview/tabs
import saola/preview/toast

pub fn view_alerts() -> Element(Msg) {
  alert.view_alerts()
}

pub fn view_badges() -> Element(Msg) {
  badge.view_badges()
}

pub fn view_cards() -> Element(Msg) {
  card.view_cards()
}

pub fn view_inputs() -> Element(Msg) {
  input.view_inputs()
}

pub fn view_buttons() -> Element(Msg) {
  button.view_buttons()
}

pub fn view_dropdown_menus(model: Model) -> Element(Msg) {
  dropdown_menu.view_dropdown_menus(model)
}

pub fn view_tabs(model: Model) -> Element(Msg) {
  tabs.view_tabs(model)
}

pub fn view_dialogs(model: Model) -> Element(Msg) {
  dialog.view_dialogs(model)
}

pub fn view_tables() -> Element(Msg) {
  table.view_tables()
}

pub fn view_toasts(model: Model) -> Element(Msg) {
  toast.view_toasts(model)
}

pub fn view_form_example(model: Model) -> Element(Msg) {
  examples.view_form_example(model)
}

pub fn view_small_site_example(model: Model) -> Element(Msg) {
  examples.view_small_site_example(model)
}

pub fn view_d3_charts() -> Element(Msg) {
  examples.view_d3_charts()
}

pub fn view_monaco_editor() -> Element(Msg) {
  examples.view_monaco_editor()
}

pub fn view_forms() -> Element(Msg) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Forms")]),
    h.p([a.class("page-description")], [
      text("Showcase of complex form layouts."),
    ]),
  ])
}
