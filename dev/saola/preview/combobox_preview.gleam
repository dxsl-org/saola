import gleam/int
import gleam/json
import gleam/list
import gleam/option.{None, Some}
import gleam/string
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/component/combobox as cb
import saola/preview/model.{
  type Message, type Model, ComboboxQueryChanged, ComboboxSelected,
}

pub fn view(model: Model) -> Element(Message) {
  let cb_items = [
    cb.Item(value: "apple", name: "Apple"),
    cb.Item(value: "banana", name: "Banana"),
    cb.Item(value: "cherry", name: "Cherry"),
    cb.Item(value: "durian", name: "Durian"),
    cb.Item(value: "elderberry", name: "Elderberry"),
  ]
  let selected_label = case model.combobox_value {
    None -> "None"
    Some(v) -> v
  }
  let filtered_count =
    list.filter(cb_items, fn(item) {
      case model.combobox_query {
        "" -> True
        query ->
          item.name
          |> string.lowercase
          |> string.contains(string.lowercase(query))
      }
    })
    |> list.length
  h.div([], [
    h.h1([a.class("page-title")], [text("Combobox")]),
    h.p([a.class("page-description")], [
      text("Searchable select powered by the combo-box web component."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Web Component (<combo-box>)")]),
        h.p([a.class("text-muted-foreground text-sm")], [
          text(
            "Self-contained Lustre component. Selection and search state live inside the widget.",
          ),
        ]),
        cb.element([
          a.property("choices", json.array(cb_items, cb.encode_item)),
          cb.on_selected(ComboboxSelected),
          cb.on_text_input(ComboboxQueryChanged),
        ]),
        h.p([a.class("text-muted-foreground text-sm")], [
          text("Selected value: " <> selected_label),
        ]),
        h.p([a.class("text-muted-foreground text-sm")], [
          text(
            "Search query: "
            <> case model.combobox_query {
              "" -> "None"
              query -> query
            },
          ),
        ]),
        h.p([a.class("text-muted-foreground text-sm")], [
          text("Matching choices: " <> int.to_string(filtered_count)),
        ]),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Web Component — preselected")]),
        cb.element([
          a.property("choices", json.array(cb_items, cb.encode_item)),
          cb.preselect_value("cherry"),
          cb.on_selected(ComboboxSelected),
        ]),
      ]),
    ]),
  ])
}
