import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/collapsible
import saola/preview/model.{type Message, type Model, CollapsibleToggled}

pub fn view_collapsibles(model: Model) -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Collapsible")]),
    h.p([a.class("page-description")], [
      text("An interactive component that expands and collapses content."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Default")]),
        collapsible.collapsible_simple(
          model.collapsible_open,
          case model.collapsible_open {
            True -> "Hide details ▲"
            False -> "Show details ▼"
          },
          h.div([a.style("padding", "0.5rem 0")], [
            h.p([], [
              text("This content is revealed when the trigger is clicked."),
            ]),
            h.p([], [text("It can contain any element.")]),
          ]),
          fn() { CollapsibleToggled },
        ),
      ]),
    ]),
  ])
}
