import gleam/option.{Some}

import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import preview/models.{type Msg}
import saola/dropdown_menus as dropdown

pub fn view_dropdown_menus() -> Element(Msg) {
  let basic_items = [
    dropdown.Item("Save"),
    dropdown.Item("Edit"),
    dropdown.Separator,
    dropdown.Item("Delete"),
  ]

  let items_with_icons = [
    dropdown.ItemWithIcon("plus", "New Item"),
    dropdown.ItemWithIcon("edit", "Edit Item"),
    dropdown.Separator,
    dropdown.ItemWithIcon("trash", "Delete Item"),
  ]

  let items_with_links = [
    dropdown.Link("Dashboard", "/dashboard"),
    dropdown.Link("Settings", "/settings"),
    dropdown.Separator,
    dropdown.Link("Logout", "/logout"),
  ]

  let grouped_items = [
    dropdown.Group("Actions", [
      dropdown.Item("Save"),
      dropdown.Item("Edit"),
    ]),
    dropdown.Separator,
    dropdown.Group("Navigation", [
      dropdown.Item("Home"),
      dropdown.Item("Profile"),
    ]),
  ]

  let mixed_items = [
    dropdown.Item("Plain Item"),
    dropdown.ItemWithIcon("star", "Starred Item"),
    dropdown.Link("External Link", "https://example.com"),
    dropdown.LinkWithIcon("download", "Download", "/download"),
    dropdown.Separator,
    dropdown.Group("Submenu", [
      dropdown.Item("Sub Item 1"),
      dropdown.Item("Sub Item 2"),
    ]),
  ]

  let custom_minor_attrs = dropdown.MinorAttrs(
    "my-dropdown",
    "custom-main",
    "custom-popover",
    "custom-menu",
  )

  let custom_trigger_with_icon = dropdown.TriggerAttrs(
    "Menu Options",
    Some("chevron-down"),
    "btn-custom",
  )

  let trigger_with_icon_only = dropdown.TriggerAttrs("", Some("settings"), "")

  h.div([], [
    h.h1([a.class("page-title")], [text("Dropdown Menus")]),
    h.p([a.class("page-description")], [
      text("Showcase of dropdown menu components."),
    ]),

    h.h2([], [text("Basic Dropdown")]),
    h.div([a.class("grid gap-4")], [
      dropdown.dropdown_simple(basic_items),
    ]),

    h.h2([a.class("mt-4")], [text("With Trigger Label")]),
    h.div([a.class("grid gap-4")], [
      dropdown.dropdown_with_trigger(items_with_icons, "Actions"),
    ]),

    h.h2([a.class("mt-4")], [text("With Icons")]),
    h.div([a.class("grid gap-4")], [
      dropdown.dropdown_simple(items_with_icons),
    ]),

    h.h2([a.class("mt-4")], [text("With Links")]),
    h.div([a.class("grid gap-4")], [
      dropdown.dropdown_simple(items_with_links),
    ]),

    h.h2([a.class("mt-4")], [text("Grouped Items")]),
    h.div([a.class("grid gap-4")], [
      dropdown.dropdown_simple(grouped_items),
    ]),

    h.h2([a.class("mt-4")], [text("Mixed Item Types")]),
    h.div([a.class("grid gap-4")], [
      dropdown.dropdown_simple(mixed_items),
    ]),

    h.h2([a.class("mt-4")], [text("Custom Trigger with Icon")]),
    h.div([a.class("grid gap-4")], [
      dropdown.dropdown_menu_full(
        mixed_items,
        trigger_with_icon_only,
        dropdown.default_minor_attrs,
      ),
    ]),

    h.h2([a.class("mt-4")], [text("Custom Configuration")]),
    h.div([a.class("grid gap-4")], [
      dropdown.dropdown_menu_full(
        mixed_items,
        custom_trigger_with_icon,
        custom_minor_attrs,
      ),
    ]),
  ])
}
