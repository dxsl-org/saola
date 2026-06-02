import gleam/list
import gleam/option.{None, Some}
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/button
import saola/icon/lu
import saola/item
import saola/preview/model.{type Message, StartedTrial}

pub fn view() -> Element(Message) {
  let actions = [button.button_outline("View", StartedTrial)]

  let three_items = [
    item.item_full(
      variant: item.Default,
      size: item.Large,
      media: Some(lu.user([])),
      media_variant: item.MediaIcon,
      title: "Alice Smith",
      description: "Software engineer",
      actions: actions,
      class: "",
    ),
    item.item_full(
      variant: item.Default,
      size: item.Large,
      media: Some(lu.user([])),
      media_variant: item.MediaIcon,
      title: "Bob Jones",
      description: "Product designer",
      actions: actions,
      class: "",
    ),
    item.item_full(
      variant: item.Default,
      size: item.Large,
      media: Some(lu.user([])),
      media_variant: item.MediaIcon,
      title: "Carol Doe",
      description: "Engineering manager",
      actions: actions,
      class: "",
    ),
  ]

  h.div([], [
    h.h1([a.class("page-title")], [text("Item")]),
    h.p([a.class("page-description")], [text("Row-layout primitive for lists.")]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Variants")]),
        item.item_full(
          variant: item.Default,
          size: item.Large,
          media: None,
          media_variant: item.MediaDefault,
          title: "Default variant",
          description: "Transparent background.",
          actions: actions,
          class: "",
        ),
        item.item_full(
          variant: item.Outline,
          size: item.Large,
          media: None,
          media_variant: item.MediaDefault,
          title: "Outline variant",
          description: "Bordered.",
          actions: actions,
          class: "",
        ),
        item.item_full(
          variant: item.Muted,
          size: item.Large,
          media: None,
          media_variant: item.MediaDefault,
          title: "Muted variant",
          description: "Muted background.",
          actions: actions,
          class: "",
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Size: small")]),
        item.item_full(
          variant: item.Outline,
          size: item.Small,
          media: None,
          media_variant: item.MediaDefault,
          title: "Small size",
          description: "Tighter padding.",
          actions: actions,
          class: "",
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Group with separators")]),
        item.item_group(list.intersperse(three_items, item.item_separator())),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Link item (anchor row)")]),
        item.item_link(
          href: "#alice",
          title: "Alice Smith",
          description: "Click to view profile",
          action: Some(button.button_outline("Open", StartedTrial)),
          class: "",
        ),
      ]),
    ]),
  ])
}
