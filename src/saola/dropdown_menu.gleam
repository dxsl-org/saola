import gleam/list
import gleam/option.{type Option, None, Some}
import gleam/result

import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e
import typeid

pub type BaseDropdownMenuItem(a) {
  /// A clickable menu item (text only)
  Item(label: String)
  /// A clickable menu item with an icon
  ItemWithIcon(icon: Element(a), label: String)
  /// A clickable menu item that links to a URL
  Link(label: String, url: String)
  /// A link with an icon
  LinkWithIcon(icon: Element(a), label: String, url: String)
  Separator
}

pub type DropdownMenuItem(a) {
  Flat(BaseDropdownMenuItem(a))
  /// A group of items with a label
  Group(label: String, items: List(BaseDropdownMenuItem(a)))
}

/// Attributes for the trigger button
pub type TriggerAttrs(a) {
  TriggerAttrs(label: String, icon: Option(Element(a)), class: String)
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

fn render_menu_item(item: DropdownMenuItem(a)) -> Element(a) {
  case item {
    Flat(base_item) -> render_base_item(base_item)
    Group(label, items) -> render_item_group(label, items)
  }
}

fn render_base_item(item: BaseDropdownMenuItem(a)) -> Element(a) {
  case item {
    Item(label) -> h.div([a.role("menuitem")], [h.text(label)])
    ItemWithIcon(icon, label) -> {
      h.div([a.role("menuitem")], [icon, h.text(label)])
    }
    Link(label, url) -> h.a([a.role("menuitem"), a.href(url)], [h.text(label)])
    LinkWithIcon(icon, label, url) -> {
      h.a([a.role("menuitem"), a.href(url)], [icon, h.text(label)])
    }
    Separator -> h.hr([a.role("separator")])
  }
}

fn render_item_group(
  label: String,
  items: List(BaseDropdownMenuItem(a)),
) -> Element(a) {
  let group_id =
    typeid.new(prefix: "grp")
    |> result.map(typeid.to_string)
    |> result.unwrap("grp")
  let label_id = group_id <> "-label"
  h.div([a.role("group"), a.aria_labelledby(label_id)], [
    h.div([a.role("heading"), a.id(label_id)], [h.text(label)]),
    h.div([], items |> list.map(render_base_item)),
  ])
}

/// Render a fully customizable dropdown menu
///
/// NOTE: We use a custom `data-popover` attribute instead of the native HTML `popover` API
/// because the native popover API places elements in a "top layer" that breaks out of the
/// normal document flow. This makes CSS positioning (like placing the menu directly below
/// the trigger button) impossible without CSS anchor positioning, which is not yet
/// supported in all browsers (e.g., Firefox). By using `data-popover` with `aria-hidden`
/// toggled via click events, we can reliably position the dropdown menu using standard
/// CSS `position: absolute` relative to the parent container.
///
/// Example:
/// ```gleam
/// type Msg {
///    UserClickSave
///    UserClickDelete
///    ToggleDropdown
/// }
///
/// dropdown_menu_full(
///   items: [Item("Save"), Separator, Item("Delete")],
///   trigger_attrs: default_trigger_attrs,
///   is_open: model.dropdown_open,
///   trigger_click: ToggleDropdown,
///   minor_attrs: default_minor_attrs,
/// )
/// ```
pub fn dropdown_menu_full(
  items items: List(DropdownMenuItem(a)),
  trigger_attrs trigger_attrs: TriggerAttrs(a),
  is_open is_open: Bool,
  trigger_click trigger_click: a,
  minor_attrs minor_attrs: MinorAttrs,
) -> Element(a) {
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
    e.on_click(trigger_click),
    a.class("btn-outline"),
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
    Some(icon) -> icon
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
  // NOTE: Using data-popover instead of native popover API for cross-browser positioning support
  let popover_class_value = case minor_attrs.popover_class {
    "" -> ""
    c -> c
  }
  let popover =
    h.div(
      [
        a.id(popover_id),
        a.data("popover", ""),
        a.class(popover_class_value),
        a.aria_hidden(!is_open),
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
/// dropdown_simple(
///   items: [Item("Save"), Item("Delete")],
///   is_open: model.dropdown_open,
///   trigger_click: UserClickedDropdown,
/// )
/// ```
pub fn dropdown_simple(
  items items: List(DropdownMenuItem(a)),
  is_open is_open: Bool,
  trigger_click trigger_click: a,
) -> Element(a) {
  dropdown_menu_full(
    items: items,
    trigger_attrs: default_trigger_attrs,
    is_open: is_open,
    trigger_click: trigger_click,
    minor_attrs: default_minor_attrs,
  )
}

/// Create a dropdown menu with a custom trigger label
///
/// Example:
/// ```gleam
/// dropdown_with_trigger(
///   items: [Item("Option 1"), Item("Option 2")],
///   trigger_label: "Actions",
///   is_open: model.dropdown_open,
///   trigger_click: UserClickedDropdown,
/// )
/// ```
pub fn dropdown_with_trigger(
  items items: List(DropdownMenuItem(a)),
  trigger_label trigger_label: String,
  is_open is_open: Bool,
  trigger_click trigger_click: a,
) -> Element(a) {
  dropdown_menu_full(
    items: items,
    trigger_attrs: TriggerAttrs(trigger_label, None, ""),
    is_open: is_open,
    trigger_click: trigger_click,
    minor_attrs: default_minor_attrs,
  )
}
