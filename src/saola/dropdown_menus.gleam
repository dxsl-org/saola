import gleam/list

import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import typeid

pub type DropdownMenuItem {
  Regular(label: String)
  Separator
  ItemGroup(items: List(DropdownMenuItem))
}

pub type MinorAttrs {
  MinorAttrs(id: String, class: String)
}

pub const default_minor_attrs = MinorAttrs("", "")

fn render_menu_item(item: DropdownMenuItem) -> Element(a) {
  case item {
    Regular(s) -> h.span([], [h.text(s)])
    Separator -> h.hr([])
    ItemGroup(items) -> render_item_group(items)
  }
}

fn render_item_group(items: List(DropdownMenuItem)) -> Element(a) {
  h.div([], items |> list.map(render_menu_item))
}

pub fn dropdown_menu(items: List(DropdownMenuItem), minor_attrs: MinorAttrs) {
  let base_id = case minor_attrs.id {
    "" ->
      case typeid.new(prefix: "menu") {
        Ok(tid) -> typeid.to_string(tid)
        Error(_) -> "menu-fallback"
      }
    id -> id
  }
  let menu_id = base_id <> "-menu"
  let btn_trigger = h.button([a.aria_haspopup("menu")], [h.text("Open")])
  let menu = h.menu([a.id(menu_id)], items |> list.map(render_menu_item))
  let popover = h.div([a.popover("auto")], [menu])
  h.div([a.class("dropdown-menu")], [btn_trigger, popover])
}
