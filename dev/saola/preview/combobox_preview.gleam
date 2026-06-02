import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/combobox
import saola/preview/event_helper
import saola/preview/model.{
  type Message, type Model, ComboboxOpenChanged, ComboboxQueryChanged,
  ComboboxSelected,
}

pub fn view(model: Model) -> Element(Message) {
  let fruits = [
    combobox.ComboboxOption(value: "apple", label: "Apple"),
    combobox.ComboboxOption(value: "banana", label: "Banana"),
    combobox.ComboboxOption(value: "cherry", label: "Cherry"),
    combobox.ComboboxOption(value: "durian", label: "Durian"),
    combobox.ComboboxOption(value: "elderberry", label: "Elderberry"),
  ]
  let filtered = combobox.combobox_filter(fruits, model.combobox_query)
  h.div(
    [
      event_helper.on_click_outside(
        ".combobox-wrapper",
        ComboboxOpenChanged(False),
      ),
    ],
    [
      h.h1([a.class("page-title")], [text("Combobox")]),
      h.p([a.class("page-description")], [
        text("Searchable select. State is fully owned by the consumer."),
      ]),
      h.div([a.class("grid gap-8")], [
        h.div([a.class("grid gap-4")], [
          h.h2([], [text("Simple (no search)")]),
          combobox.combobox_simple(
            fruits,
            model.combobox_value,
            model.combobox_open,
            ComboboxOpenChanged,
            ComboboxSelected,
          ),
        ]),
        h.div([a.class("grid gap-4")], [
          h.h2([], [text("Full (with search)")]),
          combobox.combobox_full(
            filtered,
            model.combobox_value,
            model.combobox_query,
            model.combobox_open,
            ComboboxOpenChanged,
            ComboboxQueryChanged,
            ComboboxSelected,
            combobox.default_attrs,
          ),
        ]),
      ]),
    ],
  )
}
