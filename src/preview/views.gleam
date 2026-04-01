import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import preview/buttons
import preview/dropdown_menus
import preview/inputs
import preview/models.{type Msg}

pub fn view_alerts() -> Element(Msg) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Alerts")]),
    h.p([a.class("page-description")], [
      text("Showcase of alert notifications."),
    ]),
  ])
}

pub fn view_inputs() -> Element(Msg) {
  inputs.view_inputs()
}

pub fn view_buttons() -> Element(Msg) {
  buttons.view_buttons()
}

pub fn view_dropdown_menus() -> Element(Msg) {
  dropdown_menus.view_dropdown_menus()
}

pub fn view_forms() -> Element(Msg) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Forms")]),
    h.p([a.class("page-description")], [
      text("Showcase of complex form layouts."),
    ]),
  ])
}
