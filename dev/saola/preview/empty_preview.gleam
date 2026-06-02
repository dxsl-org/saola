import gleam/option.{None, Some}
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/button
import saola/empty
import saola/icon/li
import saola/icon/ls
import saola/preview/model.{type Message, StartedTrial}

pub fn view() -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Empty")]),
    h.p([a.class("page-description")], [
      text("Empty-state panels for no-results and onboarding screens."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Simple (no icon, no action)")]),
        empty.empty_simple(
          None,
          "Nothing here yet",
          "Create one to get started.",
          None,
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("With icon + action")]),
        empty.empty_simple(
          Some(li.inbox([])),
          "No messages",
          "You're all caught up.",
          Some(button.button_primary("Refresh", StartedTrial)),
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Custom (empty_full)")]),
        empty.empty_full(
          media: Some(ls.search_x([])),
          media_variant: empty.Icon,
          title: "No results",
          description: [text("Try a different search term.")],
          content: [],
          class: "",
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Bare (no header)")]),
        empty.empty_full(
          media: None,
          media_variant: empty.Default,
          title: "",
          description: [],
          content: [button.button_primary("Get started", StartedTrial)],
          class: "",
        ),
      ]),
    ]),
  ])
}
