import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import lustre/event as e
import saola/preview/model.{type Message, type Model, SheetClosed, SheetOpened}
import saola/sheet

pub fn view(model: Model) -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Sheet")]),
    h.p([a.class("page-description")], [
      text("A panel that slides in from the edge of the screen."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Right sheet (default)")]),
        h.button(
          [
            a.type_("button"),
            a.class("btn btn-outline"),
            e.on_click(SheetOpened),
          ],
          [text("Open sheet")],
        ),
        sheet.sheet_simple(
          model.sheet_open,
          "Sheet title",
          h.div([], [
            h.p([], [text("Sheet content goes here.")]),
            h.p([], [text("It slides in from the right edge.")]),
          ]),
          fn() { SheetClosed },
        ),
      ]),
    ]),
  ])
}
