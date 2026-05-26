import gleam/dynamic/decode
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import lustre/event as e
import saola/hover_card
import saola/preview/model.{
  type Message, type Model, HoverCardClosed, HoverCardOpened,
}

pub fn view_hover_cards(model: Model) -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Hover Card")]),
    h.p([a.class("page-description")], [
      text("A card revealed when hovering a trigger element."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Default")]),
        hover_card.hover_card_simple(
          model.hover_card_open,
          h.a(
            [
              a.href("#"),
              a.class("breadcrumb-link"),
              e.on("mouseenter", decode.success(HoverCardOpened)),
              e.on("mouseleave", decode.success(HoverCardClosed)),
            ],
            [text("@saola")],
          ),
          h.div([], [
            h.p([a.style("font-weight", "600")], [text("Saola UI")]),
            h.p([a.style("font-size", "0.875rem")], [
              text("A typed, stateless Lustre component library."),
            ]),
          ]),
        ),
      ]),
    ]),
  ])
}
