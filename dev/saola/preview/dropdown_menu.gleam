import gleam/option.{None, Some}

import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/dropdown_menu as dd
import saola/icon/lc
import saola/icon/lp
import saola/icon/ls
import saola/icon/lt
import saola/preview/model.{type Message, type Model, ToggleDropdown}

fn is_dropdown_open(model: Model, id: String) -> Bool {
  case model.open_dropdown {
    Some(open_id) -> open_id == id
    None -> False
  }
}

pub fn view_dropdown_menus(model: Model) -> Element(Message) {
  let basic_items = [
    dd.Flat(dd.Item("Save")),
    dd.Flat(dd.Item("Edit")),
    dd.Flat(dd.Separator),
    dd.Flat(dd.Item("Delete")),
  ]

  let items_with_icons = [
    dd.Flat(dd.ItemWithIcon(lp.plus([]), "New Item")),
    dd.Flat(dd.ItemWithIcon(lp.pencil([]), "Edit Item")),
    dd.Flat(dd.Separator),
    dd.Flat(dd.ItemWithIcon(lt.trash([]), "Delete Item")),
  ]

  let items_with_links = [
    dd.Flat(dd.Link("Dashboard", "/dashboard")),
    dd.Flat(dd.Link("Settings", "/settings")),
    dd.Flat(dd.Separator),
    dd.Flat(dd.Link("Logout", "/logout")),
  ]

  let grouped_items = [
    dd.Group("Actions", [
      dd.Item("Save"),
      dd.Item("Edit"),
    ]),
    dd.Flat(dd.Separator),
    dd.Group("Navigation", [
      dd.Item("Home"),
      dd.Item("Profile"),
    ]),
  ]

  let mixed_items = [
    dd.Flat(dd.Item("Plain Item")),
    dd.Flat(dd.ItemWithIcon(ls.star([]), "Starred Item")),
    dd.Flat(dd.Link("External Link", "https://example.com")),
    dd.Flat(dd.LinkWithIcon(lc.chevron_down([]), "Download", "/download")),
    dd.Flat(dd.Separator),
    dd.Group("Submenu", [
      dd.Item("Sub Item 1"),
      dd.Item("Sub Item 2"),
    ]),
  ]

  let custom_minor_attrs =
    dd.MinorAttrs("my-dropdown", "custom-main", "custom-popover", "custom-menu")

  let custom_trigger_with_icon =
    dd.TriggerAttrs("Menu Options", Some(lc.chevron_down([])), "btn-custom")

  let trigger_with_icon_only = dd.TriggerAttrs("", Some(ls.settings([])), "")

  h.div([], [
    h.h1([a.class("page-title")], [text("Dropdown Menus")]),
    h.p([a.class("page-description")], [
      text("Showcase of dropdown menu components."),
    ]),

    h.h2([], [text("Basic Dropdown")]),
    h.div([a.class("grid gap-4")], [
      dd.dropdown_simple(
        items: basic_items,
        is_open: is_dropdown_open(model, "basic"),
        trigger_click: ToggleDropdown("basic"),
      ),
    ]),

    h.h2([a.class("mt-4")], [text("With Trigger Label")]),
    h.div([a.class("grid gap-4")], [
      dd.dropdown_with_trigger(
        items: items_with_icons,
        trigger_label: "Actions",
        is_open: is_dropdown_open(model, "actions"),
        trigger_click: ToggleDropdown("actions"),
      ),
    ]),

    h.h2([a.class("mt-4")], [text("With Icons")]),
    h.div([a.class("grid gap-4")], [
      dd.dropdown_simple(
        items: items_with_icons,
        is_open: is_dropdown_open(model, "icons"),
        trigger_click: ToggleDropdown("icons"),
      ),
    ]),

    h.h2([a.class("mt-4")], [text("With Links")]),
    h.div([a.class("grid gap-4")], [
      dd.dropdown_simple(
        items: items_with_links,
        is_open: is_dropdown_open(model, "links"),
        trigger_click: ToggleDropdown("links"),
      ),
    ]),

    h.h2([a.class("mt-4")], [text("Grouped Items")]),
    h.div([a.class("grid gap-4")], [
      dd.dropdown_simple(
        items: grouped_items,
        is_open: is_dropdown_open(model, "grouped"),
        trigger_click: ToggleDropdown("grouped"),
      ),
    ]),

    h.h2([a.class("mt-4")], [text("Mixed Item Types")]),
    h.div([a.class("grid gap-4")], [
      dd.dropdown_simple(
        items: mixed_items,
        is_open: is_dropdown_open(model, "mixed"),
        trigger_click: ToggleDropdown("mixed"),
      ),
    ]),

    h.h2([a.class("mt-4")], [text("Custom Trigger with Icon")]),
    h.div([a.class("grid gap-4")], [
      dd.dropdown_menu_full(
        items: mixed_items,
        trigger_attrs: trigger_with_icon_only,
        is_open: is_dropdown_open(model, "custom-icon"),
        trigger_click: ToggleDropdown("custom-icon"),
        minor_attrs: dd.default_minor_attrs,
      ),
    ]),

    h.h2([a.class("mt-4")], [text("Custom Configuration")]),
    h.div([a.class("grid gap-4")], [
      dd.dropdown_menu_full(
        items: mixed_items,
        trigger_attrs: custom_trigger_with_icon,
        is_open: is_dropdown_open(model, "custom-config"),
        trigger_click: ToggleDropdown("custom-config"),
        minor_attrs: custom_minor_attrs,
      ),
    ]),
  ])
}
