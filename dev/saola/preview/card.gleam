import gleam/option.{None, Some}
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/button
import saola/card
import saola/preview/model.{type Msg, OnRouteChange, Home}

pub fn view_cards() -> Element(Msg) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Cards")]),
    h.p([a.class("page-description")], [
      text("Content containers with optional header and footer."),
    ]),
    h.div([a.class("grid gap-6 mt-4")], [
      card.card_simple("Simple Card", [
        h.p([], [text("This is a card with just a title and some content.")]),
      ]),
      card.card(card.CardAttrs(
        title: "Card with Description",
        description: "A short description of what this card contains.",
        content: [
          h.p([], [text("Main content area goes here.")]),
        ],
        footer: None,
      )),
      card.card(card.CardAttrs(
        title: "Card with Footer",
        description: "This card has a footer with an action button.",
        content: [
          h.p([], [text("Card body content.")]),
        ],
        footer: Some(button.button_primary("Save changes", OnRouteChange(Home))),
      )),
    ]),
  ])
}
