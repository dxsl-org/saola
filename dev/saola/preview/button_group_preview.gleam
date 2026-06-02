import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/button_group
import saola/preview/model.{type Message}

pub fn view() -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Button Group")]),
    h.p([a.class("page-description")], [
      text("Groups related buttons together with fused borders."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Horizontal (default)")]),
        button_group.button_group_simple([
          h.button([a.type_("button"), a.class("btn btn-outline")], [
            text("Left"),
          ]),
          h.button([a.type_("button"), a.class("btn btn-outline")], [
            text("Center"),
          ]),
          h.button([a.type_("button"), a.class("btn btn-outline")], [
            text("Right"),
          ]),
        ]),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Vertical")]),
        button_group.button_group_full(
          [
            h.button([a.type_("button"), a.class("btn btn-outline")], [
              text("Top"),
            ]),
            h.button([a.type_("button"), a.class("btn btn-outline")], [
              text("Middle"),
            ]),
            h.button([a.type_("button"), a.class("btn btn-outline")], [
              text("Bottom"),
            ]),
          ],
          button_group.ButtonGroupAttrs(
            orientation: button_group.Vertical,
            class: "",
          ),
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("With primary button")]),
        button_group.button_group_simple([
          h.button([a.type_("button"), a.class("btn btn-outline")], [
            text("Cancel"),
          ]),
          h.button([a.type_("button"), a.class("btn btn-primary")], [
            text("Save"),
          ]),
        ]),
      ]),
    ]),
  ])
}
