import gleam/option.{Some}
import gleam/string
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/multiselect
import saola/preview/model.{type Message, type Model, MultiselectChanged}

pub fn view_multiselects(model: Model) -> Element(Message) {
  let fruits = [
    #("apple", "Apple"),
    #("banana", "Banana"),
    #("cherry", "Cherry"),
    #("grape", "Grape"),
    #("mango", "Mango"),
    #("orange", "Orange"),
  ]
  let selected_label = case model.multiselect_values {
    [] -> "None"
    vals -> string.join(vals, ", ")
  }
  h.div([], [
    h.h1([a.class("page-title")], [text("Multiselect")]),
    h.p([a.class("page-description")], [
      text(
        "A multi-value select widget with chips. Backed by the saola-multiselect web component.",
      ),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Simple")]),
        h.div([a.class("max-w-sm")], [
          multiselect.multiselect_simple(
            fruits,
            model.multiselect_values,
            MultiselectChanged,
          ),
        ]),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Max 2 selections")]),
        h.div([a.class("max-w-sm")], [
          multiselect.multiselect_full(
            fruits,
            model.multiselect_values,
            MultiselectChanged,
            multiselect.MultiselectAttrs(
              placeholder: "Pick up to 2…",
              disabled: False,
              max_selected: Some(2),
              class: "",
            ),
          ),
        ]),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Disabled")]),
        h.div([a.class("max-w-sm")], [
          multiselect.multiselect_full(
            fruits,
            [],
            MultiselectChanged,
            multiselect.MultiselectAttrs(
              placeholder: "Disabled…",
              disabled: True,
              max_selected: Some(0),
              class: "",
            ),
          ),
        ]),
      ]),
      h.div([a.class("mt-4")], [
        h.p([a.class("text-muted-foreground text-sm")], [
          text("Selected: " <> selected_label),
        ]),
      ]),
    ]),
  ])
}
