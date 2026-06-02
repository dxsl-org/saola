import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/preview/model.{type Message}
import saola/scroll_area

pub fn view() -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Scroll Area")]),
    h.p([a.class("page-description")], [
      text("A scrollable container with custom scrollbar styling."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Vertical scroll")]),
        scroll_area.scroll_area_simple(
          h.div([], [
            h.p([], [text("Line 1 — Scroll down to see more")]),
            h.p([], [text("Line 2")]),
            h.p([], [text("Line 3")]),
            h.p([], [text("Line 4")]),
            h.p([], [text("Line 5")]),
            h.p([], [text("Line 6")]),
            h.p([], [text("Line 7")]),
            h.p([], [text("Line 8")]),
            h.p([], [text("Line 9")]),
            h.p([], [text("Line 10")]),
          ]),
          "120px",
        ),
      ]),
    ]),
  ])
}
