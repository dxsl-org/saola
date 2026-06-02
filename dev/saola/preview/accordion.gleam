import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/accordion
import saola/preview/model.{type Message, type Model, AccordionToggled}

pub fn view(model: Model) -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Accordion")]),
    h.p([a.class("page-description")], [
      text("Collapsible sections. Consumer owns which items are open."),
    ]),
    h.div([a.class("grid gap-8")], [
      multi_open_example(model),
      single_open_example(model),
    ]),
  ])
}

fn multi_open_example(model: Model) -> Element(Message) {
  h.div([a.class("grid gap-4")], [
    h.h2([], [text("Multi-open")]),
    accordion.accordion_simple(
      items: [
        accordion.AccordionItem(
          "what",
          "What is Saola?",
          h.p([], [
            text(
              "Saola is a typed, stateless UI widget library for Lustre applications.",
            ),
          ]),
        ),
        accordion.AccordionItem(
          "install",
          "How do I install it?",
          h.p([], [text("Run `gleam add saola` in your project directory.")]),
        ),
        accordion.AccordionItem(
          "styling",
          "What CSS do I need?",
          h.p([], [
            text("Add Basecoat CSS and optionally your own utility classes."),
          ]),
        ),
      ],
      open_ids: model.accordion_open,
      on_toggle: AccordionToggled,
    ),
  ])
}

fn single_open_example(model: Model) -> Element(Message) {
  let open_ids = case model.accordion_open {
    [first, ..] -> [first]
    [] -> []
  }
  h.div([a.class("grid gap-4")], [
    h.h2([], [text("Single-open (consumer enforces)")]),
    accordion.accordion_simple(
      items: [
        accordion.AccordionItem(
          "terms",
          "Terms of Service",
          h.p([], [text("By using this service you agree to our terms.")]),
        ),
        accordion.AccordionItem(
          "privacy",
          "Privacy Policy",
          h.p([], [text("We respect your privacy and protect your data.")]),
        ),
      ],
      open_ids: open_ids,
      on_toggle: AccordionToggled,
    ),
  ])
}
