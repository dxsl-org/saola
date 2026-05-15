import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/preview/model.{type Msg}
import saola/separator

pub fn view_separators() -> Element(Msg) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Separator")]),
    h.p([a.class("page-description")], [
      text("A visual divider between sections or items."),
    ]),
    h.div([a.class("mt-4 grid gap-6")], [
      h.div([], [
        h.p([], [text("Above the separator")]),
        separator.separator(),
        h.p([], [text("Below the separator")]),
      ]),
      h.div([a.class("flex items-center gap-4 h-8")], [
        h.span([], [text("Left")]),
        separator.separator_vertical(),
        h.span([], [text("Right")]),
      ]),
    ]),
  ])
}
