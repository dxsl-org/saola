import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/native_select
import saola/preview/model.{type Message, type Model, NativeSelectChanged}

pub fn view_native_selects(model: Model) -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Native Select")]),
    h.p([a.class("page-description")], [
      text("A styled native <select> element."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Default")]),
        native_select.native_select_simple(
          [
            native_select.NativeSelectOption("apple", "Apple"),
            native_select.NativeSelectOption("banana", "Banana"),
            native_select.NativeSelectOption("cherry", "Cherry"),
          ],
          model.native_select_value,
          "fruit",
          fn(v) { NativeSelectChanged(v) },
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("With opt groups")]),
        native_select.native_select_simple(
          [
            native_select.NativeSelectOptGroup("Fruits", [
              native_select.NativeSelectOption("apple", "Apple"),
              native_select.NativeSelectOption("banana", "Banana"),
            ]),
            native_select.NativeSelectOptGroup("Vegetables", [
              native_select.NativeSelectOption("carrot", "Carrot"),
              native_select.NativeSelectOption("potato", "Potato"),
            ]),
          ],
          model.native_select_value,
          "food",
          fn(v) { NativeSelectChanged(v) },
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Small")]),
        native_select.native_select_full(
          [
            native_select.NativeSelectOption("xs", "Extra Small"),
            native_select.NativeSelectOption("sm", "Small"),
            native_select.NativeSelectOption("md", "Medium"),
          ],
          "sm",
          "size",
          fn(v) { NativeSelectChanged(v) },
          native_select.NativeSelectAttrs(
            size: native_select.Small,
            disabled: False,
            class: "",
          ),
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Disabled")]),
        native_select.native_select_full(
          [
            native_select.NativeSelectOption("a", "Option A"),
            native_select.NativeSelectOption("b", "Option B"),
          ],
          "a",
          "disabled-demo",
          fn(v) { NativeSelectChanged(v) },
          native_select.NativeSelectAttrs(
            size: native_select.Default,
            disabled: True,
            class: "",
          ),
        ),
      ]),
    ]),
  ])
}
