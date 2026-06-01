import gleam/list
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e

pub type ToggleGroupItem {
  ToggleGroupItem(value: String, label: String)
  ToggleGroupItemDisabled(value: String, label: String)
}

pub type ToggleGroupType {
  SingleSelect
  MultiSelect
}

pub fn toggle_group_full(
  items: List(ToggleGroupItem),
  selected: List(String),
  on_change: fn(List(String)) -> msg,
  group_type: ToggleGroupType,
  class: String,
) -> Element(msg) {
  let extra_class = case class {
    "" -> a.none()
    c -> a.class(c)
  }
  h.div(
    [a.class("button-group"), extra_class, a.role("group")],
    list.map(items, fn(item) {
      let #(value, label, is_disabled) = case item {
        ToggleGroupItem(v, l) -> #(v, l, False)
        ToggleGroupItemDisabled(v, l) -> #(v, l, True)
      }
      let is_pressed = list.contains(selected, value)
      let new_selected = case group_type, is_pressed {
        SingleSelect, True -> []
        SingleSelect, False -> [value]
        MultiSelect, True -> list.filter(selected, fn(s) { s != value })
        MultiSelect, False -> list.append(selected, [value])
      }
      h.button(
        [
          a.type_("button"),
          a.class("btn btn-ghost"),
          a.attribute("aria-pressed", case is_pressed {
            True -> "true"
            False -> "false"
          }),
          a.attribute("data-value", value),
          case is_disabled {
            True -> a.disabled(True)
            False -> a.none()
          },
          e.on_click(on_change(new_selected)),
        ],
        [h.text(label)],
      )
    }),
  )
}

pub fn toggle_group_simple(
  items: List(ToggleGroupItem),
  selected: List(String),
  on_change: fn(List(String)) -> msg,
) -> Element(msg) {
  toggle_group_full(items, selected, on_change, SingleSelect, "")
}
