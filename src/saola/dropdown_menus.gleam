import gleam/list
import gleam/option.{type Option, None, Some}
import gleam/result

import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import typeid

import saola/icons

pub type DropdownMenuItem {
  /// A clickable menu item (text only)
  Item(label: String)
  /// A clickable menu item with an icon
  ItemWithIcon(name: String, label: String)
  /// A clickable menu item that links to a URL
  Link(label: String, url: String)
  /// A link with an icon
  LinkWithIcon(name: String, label: String, url: String)
  Separator
  /// A group of items with a label
  Group(label: String, items: List(DropdownMenuItem))
}

/// Attributes for the trigger button
pub type TriggerAttrs {
  TriggerAttrs(label: String, icon: Option(String), class: String)
}

pub type MinorAttrs {
  MinorAttrs(
    id: String,
    main_class: String,
    popover_class: String,
    menu_class: String,
  )
}

pub const default_trigger_attrs = TriggerAttrs("Open", None, "")

pub const default_minor_attrs = MinorAttrs("", "", "", "")

fn render_menu_item(item: DropdownMenuItem) -> Element(msg) {
  case item {
    Item(label) -> h.div([a.role("menuitem")], [h.text(label)])
    ItemWithIcon(name, label) -> {
      let icon = icons.get_icon(name)
      h.div([a.role("menuitem")], [icon, h.text(label)])
    }
    Link(label, url) -> h.a([a.role("menuitem"), a.href(url)], [h.text(label)])
    LinkWithIcon(name, label, url) -> {
      let icon = icons.get_icon(name)
      h.a([a.role("menuitem"), a.href(url)], [icon, h.text(label)])
    }
    Separator -> h.hr([a.role("separator")])
    Group(label, items) -> render_item_group(label, items)
  }
}

fn render_item_group(
  label: String,
  items: List(DropdownMenuItem),
) -> Element(msg) {
  let group_id =
    typeid.new(prefix: "grp")
    |> result.map(typeid.to_string)
    |> result.unwrap("grp")
  let label_id = group_id <> "-label"
  h.div([a.role("group"), a.aria_labelledby(label_id)], [
    h.div([a.role("heading"), a.id(label_id)], [h.text(label)]),
    h.div([], items |> list.map(render_menu_item)),
  ])
}

/// Render a fully customizable dropdown menu
///
/// Example:
/// ```gleam
/// type Msg {
///    UserClickSave
///    UserClickDelete
/// }
///
/// dropdown_menu_full(
///   [Item("Save"), Separator, Item("Delete")],
///   default_trigger_attrs,
///   default_minor_attrs,
/// )
/// ```
pub fn dropdown_menu_full(
  items items: List(DropdownMenuItem),
  trigger_attrs trigger_attrs: TriggerAttrs,
  minor_attrs minor_attrs: MinorAttrs,
) -> Element(msg) {
  let base_id =
    case minor_attrs.id {
      "" -> typeid.new(prefix: "menu") |> result.map(typeid.to_string)
      id -> Ok(id)
    }
    |> result.unwrap("menu-fallback")
  let trigger_id = base_id <> "-trigger"
  let menu_id = base_id <> "-menu"
  let popover_id = base_id <> "-popover"

  // Build trigger button attributes
  let trigger_main_attrs = [
    a.type_("button"),
    a.id(trigger_id),
    a.aria_haspopup("menu"),
    a.aria_expanded(False),
    a.aria_controls(menu_id),
  ]
  let trigger_class = case trigger_attrs.class {
    "" -> a.none()
    c -> a.class(c)
  }
  let trigger_icon = case trigger_attrs.icon {
    None -> element.none()
    Some(name) -> icons.get_icon(name)
  }
  let trigger_label = h.text(trigger_attrs.label)

  let btn_trigger =
    h.button(trigger_main_attrs |> list.append([trigger_class]), [
      trigger_icon,
      trigger_label,
    ])

  // Build menu
  let menu_class = case minor_attrs.menu_class {
    "" -> a.none()
    c -> a.class(c)
  }
  let menu =
    h.div(
      [a.role("menu"), a.id(menu_id), a.aria_labelledby(trigger_id), menu_class],
      items |> list.map(render_menu_item),
    )

  // Build popover wrapper
  let popover_class = case minor_attrs.popover_class {
    "" -> a.none()
    c -> a.class(c)
  }
  let popover =
    h.div(
      [
        a.id(popover_id),
        a.attribute("data-popover", ""),
        a.aria_hidden(True),
        popover_class,
      ],
      [menu],
    )

  // Build main container
  let main_class = a.class("dropdown-menu " <> minor_attrs.main_class)
  h.div([a.id(base_id), main_class], [btn_trigger, popover])
}

/// Create a simple dropdown menu with default styling
///
/// Example:
/// ```gleam
/// dropdown_simple([Item("Save"), Item("Delete")])
/// ```
pub fn dropdown_simple(items: List(DropdownMenuItem)) -> Element(msg) {
  dropdown_menu_full(
    items: items,
    trigger_attrs: default_trigger_attrs,
    minor_attrs: default_minor_attrs,
  )
}

/// Create a dropdown menu with a custom trigger label
///
/// Example:
/// ```gleam
/// dropdown_with_trigger(
///   [Item("Option 1"), Item("Option 2")],
///   "Actions",
/// )
/// ```
pub fn dropdown_with_trigger(
  items items: List(DropdownMenuItem),
  trigger_label trigger_label: String,
) -> Element(msg) {
  dropdown_menu_full(
    items: items,
    trigger_attrs: TriggerAttrs(trigger_label, None, ""),
    minor_attrs: default_minor_attrs,
  )
}
