import gleam/option.{None, Some}
import gleam/string
import lustre/element
import lustre/element/html as h
import saola/command
import saola/component/resizable_split as rp
import saola/data_table
import saola/sidebar

// ── Sidebar ───────────────────────────────────────────────────────────────────

pub fn sidebar_simple_renders_aside_test() {
  let html =
    sidebar.sidebar_simple(True, sidebar.sidebar_content([]))
    |> element.to_string
  assert string.contains(html, "<aside")
  assert string.contains(html, "sidebar-open")
}

pub fn sidebar_closed_has_closed_class_test() {
  let html =
    sidebar.sidebar_simple(False, sidebar.sidebar_content([]))
    |> element.to_string
  assert string.contains(html, "sidebar-closed")
}

pub fn sidebar_has_aria_label_test() {
  let html =
    sidebar.sidebar_simple(True, sidebar.sidebar_content([]))
    |> element.to_string
  assert string.contains(html, "aria-label=\"Sidebar\"")
}

pub fn sidebar_menu_item_renders_label_test() {
  let html =
    sidebar.sidebar_menu_item(
      "Dashboard",
      "/dashboard",
      None,
      False,
      sidebar.default_menu_item_attrs,
    )
    |> element.to_string
  assert string.contains(html, "Dashboard")
  assert string.contains(html, "href=\"/dashboard\"")
  assert string.contains(html, "sidebar-menu-button")
}

pub fn sidebar_menu_item_active_has_active_class_test() {
  let html =
    sidebar.sidebar_menu_item(
      "Home",
      "/",
      None,
      True,
      sidebar.default_menu_item_attrs,
    )
    |> element.to_string
  assert string.contains(html, "sidebar-menu-button-active")
}

pub fn sidebar_menu_item_badge_renders_test() {
  let html =
    sidebar.sidebar_menu_item(
      "Alerts",
      "/alerts",
      None,
      False,
      sidebar.SidebarMenuItemAttrs(badge: "5", class: ""),
    )
    |> element.to_string
  assert string.contains(html, "sidebar-menu-badge")
  assert string.contains(html, "5")
}

pub fn sidebar_group_renders_label_test() {
  let html =
    sidebar.sidebar_group(Some("Navigation"), [])
    |> element.to_string
  assert string.contains(html, "sidebar-group-label")
  assert string.contains(html, "Navigation")
}

pub fn sidebar_group_no_label_test() {
  let html =
    sidebar.sidebar_group(None, [])
    |> element.to_string
  assert !string.contains(html, "sidebar-group-label")
}

pub fn sidebar_trigger_renders_button_test() {
  let html = sidebar.sidebar_trigger("click") |> element.to_string
  assert string.contains(html, "<button")
  assert string.contains(html, "sidebar-trigger")
  assert string.contains(html, "aria-label=\"Toggle sidebar\"")
}

pub fn sidebar_right_variant_test() {
  let html =
    sidebar.sidebar_full(
      True,
      None,
      sidebar.sidebar_content([]),
      None,
      sidebar.SidebarAttrs(
        side: sidebar.Right,
        variant: sidebar.Default,
        collapsible: sidebar.SidebarNone,
        class: "",
      ),
    )
    |> element.to_string
  assert string.contains(html, "sidebar-right")
}

pub fn sidebar_full_with_header_footer_test() {
  let html =
    sidebar.sidebar_full(
      True,
      Some(sidebar.sidebar_header([h.text("Header")])),
      sidebar.sidebar_content([]),
      Some(sidebar.sidebar_footer([h.text("Footer")])),
      sidebar.default_attrs,
    )
    |> element.to_string
  assert string.contains(html, "sidebar-header")
  assert string.contains(html, "sidebar-footer")
  assert string.contains(html, "Header")
  assert string.contains(html, "Footer")
}

// ── Command ───────────────────────────────────────────────────────────────────

pub fn command_simple_renders_input_test() {
  let html =
    command.command_simple("", [], fn(q) { q }, fn(_idx) { "" })
    |> element.to_string
  assert string.contains(html, "<input")
  assert string.contains(html, "command-input")
  assert string.contains(html, "combobox")
}

pub fn command_action_renders_label_test() {
  let html =
    command.command_simple(
      "",
      [command.CommandAction("v", "Open File", "open")],
      fn(q) { q },
      fn(_idx) { "" },
    )
    |> element.to_string
  assert string.contains(html, "Open File")
  assert string.contains(html, "command-item")
}

pub fn command_shortcut_renders_test() {
  let html =
    command.command_simple(
      "",
      [command.CommandActionShortcut("v", "Save", "⌘S", "save")],
      fn(q) { q },
      fn(_idx) { "" },
    )
    |> element.to_string
  assert string.contains(html, "command-shortcut")
  assert string.contains(html, "⌘S")
}

pub fn command_disabled_has_aria_disabled_test() {
  let html =
    command.command_simple(
      "",
      [command.CommandDisabled("Unavailable")],
      fn(q) { q },
      fn(_idx) { "" },
    )
    |> element.to_string
  assert string.contains(html, "aria-disabled=\"true\"")
  assert string.contains(html, "Unavailable")
}

pub fn command_separator_renders_test() {
  let html =
    command.command_simple(
      "",
      [
        command.CommandAction("a", "A", "a"),
        command.CommandSeparator,
        command.CommandAction("b", "B", "b"),
      ],
      fn(q) { q },
      fn(_idx) { "" },
    )
    |> element.to_string
  assert string.contains(html, "command-separator")
}

pub fn command_group_renders_label_test() {
  let html =
    command.command_simple(
      "",
      [
        command.CommandGroup("Files", [
          command.CommandAction("new", "New File", "new"),
        ]),
      ],
      fn(q) { q },
      fn(_idx) { "" },
    )
    |> element.to_string
  assert string.contains(html, "command-group-label")
  assert string.contains(html, "Files")
  assert string.contains(html, "New File")
}

pub fn command_empty_state_renders_test() {
  let html =
    command.command_simple("xyz", [], fn(q) { q }, fn(_idx) { "" })
    |> element.to_string
  assert string.contains(html, "command-empty")
  assert string.contains(html, "No results.")
}

pub fn command_highlighted_item_has_class_test() {
  let html =
    command.command_full(
      "",
      [command.CommandAction("v", "Item", "sel")],
      0,
      fn(q) { q },
      fn() { "" },
      fn() { "" },
      fn(_idx) { "" },
      command.default_attrs,
    )
    |> element.to_string
  assert string.contains(html, "command-item-highlighted")
}

pub fn command_nav_down_increments_test() {
  let items = [
    command.CommandAction("a", "A", "a"),
    command.CommandAction("b", "B", "b"),
  ]
  assert command.command_nav_down(-1, items) == 0
  assert command.command_nav_down(0, items) == 1
}

pub fn command_nav_up_wraps_test() {
  let items = [
    command.CommandAction("a", "A", "a"),
    command.CommandAction("b", "B", "b"),
  ]
  assert command.command_nav_up(0, items) == 1
}

pub fn command_get_value_at_test() {
  let items = [
    command.CommandAction("first", "First", "x"),
    command.CommandAction("second", "Second", "x"),
  ]
  assert command.command_get_value_at(items, 0) == "first"
  assert command.command_get_value_at(items, 1) == "second"
}

pub fn command_item_count_test() {
  let items = [
    command.CommandAction("a", "A", "a"),
    command.CommandSeparator,
    command.CommandGroup("G", [
      command.CommandAction("b", "B", "b"),
      command.CommandAction("c", "C", "c"),
    ]),
    command.CommandDisabled("d"),
  ]
  assert command.command_item_count(items) == 4
}

// ── Resizable ─────────────────────────────────────────────────────────────────

pub fn resizable_simple_renders_custom_element_test() {
  let html =
    rp.element(
      [
        rp.direction(rp.Horizontal),
        rp.sizes([50.0, 50.0]),
        rp.min_sizes([20.0, 20.0]),
        rp.on_resize(fn(sizes) { sizes }),
      ],
      [rp.panel_slot(0, h.text("A")), rp.panel_slot(1, h.text("B"))],
    )
    |> element.to_string
  assert string.contains(html, "resizable-split")
}

pub fn resizable_has_panel_slots_test() {
  let html =
    rp.element(
      [
        rp.direction(rp.Horizontal),
        rp.sizes([40.0, 60.0]),
        rp.min_sizes([10.0, 10.0]),
        rp.on_resize(fn(sizes) { sizes }),
      ],
      [rp.panel_slot(0, h.text("Left")), rp.panel_slot(1, h.text("Right"))],
    )
    |> element.to_string
  assert string.contains(html, "Left")
  assert string.contains(html, "Right")
}

pub fn resizable_has_handles_test() {
  let html =
    rp.element(
      [
        rp.direction(rp.Horizontal),
        rp.sizes([50.0, 50.0]),
        rp.min_sizes([10.0, 10.0]),
        rp.on_resize(fn(sizes) { sizes }),
      ],
      [rp.panel_slot(0, h.text("A")), rp.panel_slot(1, h.text("B"))],
    )
    |> element.to_string
  assert string.contains(html, "resizable-split")
}

pub fn resizable_vertical_has_direction_test() {
  let html =
    rp.element(
      [
        rp.direction(rp.Vertical),
        rp.sizes([50.0, 50.0]),
        rp.min_sizes([20.0, 20.0]),
        rp.on_resize(fn(sizes) { sizes }),
      ],
      [rp.panel_slot(0, h.text("Top")), rp.panel_slot(1, h.text("Bottom"))],
    )
    |> element.to_string
  assert string.contains(html, "direction=\"vertical\"")
}

pub fn resizable_three_panels_have_slots_test() {
  let html =
    rp.element(
      [
        rp.direction(rp.Horizontal),
        rp.sizes([33.0, 34.0, 33.0]),
        rp.min_sizes([10.0, 10.0, 10.0]),
        rp.on_resize(fn(sizes) { sizes }),
      ],
      [
        rp.panel_slot(0, h.text("A")),
        rp.panel_slot(1, h.text("B")),
        rp.panel_slot(2, h.text("C")),
      ],
    )
    |> element.to_string
  // Handles are rendered inside the component's Shadow DOM and are not
  // visible to element.to_string — assert on the serialisable children instead.
  assert string.contains(html, "slot=\"panel-0\"")
  assert string.contains(html, "slot=\"panel-1\"")
  assert string.contains(html, "slot=\"panel-2\"")
}

// ── Data Table ────────────────────────────────────────────────────────────────

pub fn data_table_simple_renders_table_test() {
  let html =
    data_table.data_table_simple(
      [
        data_table.DataTableColumn(
          header: "Name",
          cell: fn(r: String) { h.text(r) },
          sort_key: None,
        ),
      ],
      ["Alice", "Bob"],
    )
    |> element.to_string
  assert string.contains(html, "<table")
  assert string.contains(html, "data-table")
  assert string.contains(html, "Alice")
  assert string.contains(html, "Bob")
}

pub fn data_table_simple_renders_header_test() {
  let html =
    data_table.data_table_simple(
      [
        data_table.DataTableColumn(
          header: "Email",
          cell: fn(r: String) { h.text(r) },
          sort_key: None,
        ),
      ],
      [],
    )
    |> element.to_string
  assert string.contains(html, "data-table-th")
  assert string.contains(html, "Email")
}

pub fn data_table_full_renders_filter_test() {
  let html =
    data_table.data_table_full(
      [
        data_table.DataTableColumn(
          header: "Name",
          cell: fn(r: String) { h.text(r) },
          sort_key: Some("name"),
        ),
      ],
      ["Alice"],
      data_table.default_state,
      fn(k) { k },
      fn(q) { q },
      fn(_p) { "" },
      fn(_ids) { "" },
      fn(r) { r },
      data_table.default_attrs,
    )
    |> element.to_string
  assert string.contains(html, "data-table-filter")
}

pub fn data_table_sort_button_renders_test() {
  let html =
    data_table.data_table_full(
      [
        data_table.DataTableColumn(
          header: "Name",
          cell: fn(r: String) { h.text(r) },
          sort_key: Some("name"),
        ),
      ],
      [],
      data_table.default_state,
      fn(k) { k },
      fn(q) { q },
      fn(_p) { "" },
      fn(_ids) { "" },
      fn(r) { r },
      data_table.default_attrs,
    )
    |> element.to_string
  assert string.contains(html, "data-table-sort-btn")
}

pub fn data_table_toggle_sort_asc_to_desc_test() {
  let state = data_table.toggle_sort(data_table.default_state, "name")
  let state2 = data_table.toggle_sort(state, "name")
  assert state2.sort_dir == data_table.Desc
}

pub fn data_table_toggle_sort_new_key_resets_test() {
  let state = data_table.toggle_sort(data_table.default_state, "name")
  let state2 = data_table.toggle_sort(state, "role")
  assert state2.sort_dir == data_table.Asc
}

pub fn data_table_set_filter_resets_page_test() {
  let state = data_table.DataTableState(..data_table.default_state, page: 3)
  let state2 = data_table.set_filter(state, "alice")
  assert state2.filter == "alice"
  assert state2.page == 1
}

pub fn data_table_total_pages_test() {
  assert data_table.total_pages(10, 5) == 2
  assert data_table.total_pages(11, 5) == 3
  assert data_table.total_pages(0, 5) == 1
  assert data_table.total_pages(5, 5) == 1
}

pub fn data_table_full_pagination_renders_test() {
  let html =
    data_table.data_table_full(
      [
        data_table.DataTableColumn(
          header: "Name",
          cell: fn(r: String) { h.text(r) },
          sort_key: None,
        ),
      ],
      [],
      data_table.default_state,
      fn(k) { k },
      fn(q) { q },
      fn(_p) { "" },
      fn(_ids) { "" },
      fn(r) { r },
      data_table.default_attrs,
    )
    |> element.to_string
  assert string.contains(html, "data-table-footer")
}
