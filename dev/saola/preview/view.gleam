import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h

import saola/preview/button
import saola/preview/dropdown_menu
import saola/preview/input
import saola/preview/model.{type Model, type Msg}

pub fn view_alerts() -> Element(Msg) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Alerts")]),
    h.p([a.class("page-description")], [
      text("Showcase of alert notifications."),
    ]),
  ])
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

pub fn view_forms() -> Element(Msg) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Forms")]),
    h.p([a.class("page-description")], [
      text("Showcase of complex form layouts."),
    ]),
  ])
}
