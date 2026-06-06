import gleam/dynamic/decode
import gleam/json
import gleam/string
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import lustre/event as ev
import saola/component/multi_select
import saola/preview/model.{type Message, type Model, MultiselectChanged}

fn decode_change(callback: fn(List(String)) -> msg) -> decode.Decoder(msg) {
  use values <- decode.field("detail", decode.list(decode.string))
  decode.success(callback(values))
}

pub fn view(model: Model) -> Element(Message) {
  let fruits = [
    #("apple", "Apple"),
    #("banana", "Banana"),
    #("cherry", "Cherry"),
    #("grape", "Grape"),
    #("mango", "Mango"),
    #("orange", "Orange"),
  ]
  let choices_json =
    json.array(fruits, fn(opt) {
      let #(val, name) = opt
      multi_select.item_to_json(multi_select.Item(value: val, name: name))
    })
  let selected_label = case model.multiselect_values {
    [] -> "None"
    vals -> string.join(vals, ", ")
  }
  h.div([], [
    h.h1([a.class("page-title")], [text("Multi-select")]),
    h.p([a.class("page-description")], [
      text(
        "A multi-value select widget with checkmarks. Backed by the multi-select Lustre component.",
      ),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Simple")]),
        h.div([a.class("max-w-sm")], [
          multi_select.element([
            a.property("choices", choices_json),
            ev.on("change", decode_change(MultiselectChanged)),
          ]),
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
