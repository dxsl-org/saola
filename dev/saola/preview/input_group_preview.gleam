import gleam/option.{None, Some}
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/input_group
import saola/preview/model.{type Message}

pub fn view() -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Input Group")]),
    h.p([a.class("page-description")], [
      text("Attach addons (icons, labels, buttons) to inputs."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Prefix text")]),
        input_group.input_group_simple(
          Some(h.span([], [text("https://")])),
          h.input([
            a.type_("text"),
            a.class("input input-group-control"),
            a.placeholder("example.com"),
          ]),
          None,
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Suffix text")]),
        input_group.input_group_simple(
          None,
          h.input([
            a.type_("text"),
            a.class("input input-group-control"),
            a.placeholder("username"),
          ]),
          Some(h.span([], [text("@example.com")])),
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Prefix icon")]),
        input_group.input_group_simple(
          Some(h.span([a.aria_hidden(True)], [text("$")])),
          h.input([
            a.type_("number"),
            a.class("input input-group-control"),
            a.placeholder("0.00"),
          ]),
          Some(h.span([a.aria_hidden(True)], [text("USD")])),
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Invalid state")]),
        input_group.input_group(
          Some(h.span([], [text("@")])),
          h.input([
            a.type_("text"),
            a.class("input input-group-control"),
            a.value("bad value"),
          ]),
          None,
          input_group.InputGroupAttrs(class: "", invalid: True),
        ),
      ]),
    ]),
  ])
}
