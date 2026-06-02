import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import lustre/event as e
import saola/popover
import saola/preview/event_helper
import saola/preview/model.{
  type Message, type Model, PopoverClosed, PopoverOpened,
}

pub fn view(model: Model) -> Element(Message) {
  h.div([event_helper.on_click_outside(".popover-wrapper", PopoverClosed)], [
    h.h1([a.class("page-title")], [text("Popover")]),
    h.p([a.class("page-description")], [
      text("A floating panel anchored to a trigger element."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Default (bottom)")]),
        popover.popover_simple(
          model.popover_open,
          h.button(
            [
              a.type_("button"),
              a.class("btn btn-outline"),
              e.on_click(case model.popover_open {
                True -> PopoverClosed
                False -> PopoverOpened
              }),
            ],
            [
              text(case model.popover_open {
                True -> "Close popover"
                False -> "Open popover"
              }),
            ],
          ),
          h.div([a.style("padding", "0.25rem")], [
            h.p([a.style("font-weight", "600")], [text("Popover title")]),
            h.p([a.style("color", "var(--color-muted-foreground, #6c757d)")], [
              text("This is the popover content."),
            ]),
          ]),
          fn() { PopoverClosed },
        ),
      ]),
    ]),
  ])
}
