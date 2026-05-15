import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h

import saola/preview/alert
import saola/preview/badge
import saola/preview/button
import saola/preview/card
import saola/preview/chart_examples
import saola/preview/dialog
import saola/preview/dropdown_menu
import saola/preview/field as field_preview
import saola/preview/form_example
import saola/preview/input
import saola/preview/model.{type Model, type Msg}
import saola/preview/select as select_preview
import saola/preview/separator as separator_preview
import saola/preview/site_example
import saola/preview/slider as slider_preview
import saola/preview/switch as switch_preview
import saola/preview/table
import saola/preview/tabs
import saola/preview/toast
import saola/preview/tooltip as tooltip_preview

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
  form_example.view_form_example(model)
}

pub fn view_small_site_example(model: Model) -> Element(Msg) {
  site_example.view_small_site_example(model)
}

pub fn view_d3_charts() -> Element(Msg) {
  chart_examples.view_d3_charts()
}

pub fn view_monaco_editor() -> Element(Msg) {
  chart_examples.view_monaco_editor()
}

pub fn view_separators() -> Element(Msg) {
  separator_preview.view_separators()
}

pub fn view_tooltips() -> Element(Msg) {
  tooltip_preview.view_tooltips()
}

pub fn view_switches(model: Model) -> Element(Msg) {
  switch_preview.view_switches(model.switch_notifications, model.switch_marketing)
}

pub fn view_sliders(model: Model) -> Element(Msg) {
  slider_preview.view_sliders(model.slider_volume, model.slider_brightness)
}

pub fn view_selects(model: Model) -> Element(Msg) {
  select_preview.view_selects(model.select_fruit, model.select_timezone)
}

pub fn view_fields(model: Model) -> Element(Msg) {
  field_preview.view_fields(model.form_name, model.form_email)
}

pub fn view_forms() -> Element(Msg) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Forms")]),
    h.p([a.class("page-description")], [
      text("Showcase of complex form layouts."),
    ]),
  ])
}
