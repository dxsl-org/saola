import gleam/option.{None, Some}
import gleam/string
import lustre/element
import lustre/element/html as h
import saola/button_group
import saola/context_menu
import saola/drawer
import saola/input_group
import saola/native_select
import saola/spinner

// --- spinner ---

pub fn spinner_simple_renders_test() {
  let html = spinner.spinner_simple() |> element.to_string
  assert string.contains(html, "role=\"status\"")
  assert string.contains(html, "aria-label=\"Loading\"")
  assert string.contains(html, "spinner-md")
}

pub fn spinner_small_has_sm_class_test() {
  let html =
    spinner.spinner_full(spinner.Small, "")
    |> element.to_string
  assert string.contains(html, "spinner-sm")
}

pub fn spinner_large_has_lg_class_test() {
  let html =
    spinner.spinner_full(spinner.Large, "")
    |> element.to_string
  assert string.contains(html, "spinner-lg")
}

pub fn spinner_custom_class_test() {
  let html =
    spinner.spinner_full(spinner.Medium, "my-class")
    |> element.to_string
  assert string.contains(html, "my-class")
}

// --- native_select ---

pub fn native_select_renders_select_element_test() {
  let html =
    native_select.native_select_simple(
      [
        native_select.NativeSelectOption("a", "Option A"),
        native_select.NativeSelectOption("b", "Option B"),
      ],
      "a",
      "demo",
      fn(v) { v },
    )
    |> element.to_string
  assert string.contains(html, "<select")
  assert string.contains(html, "Option A")
  assert string.contains(html, "Option B")
}

pub fn native_select_selected_value_test() {
  let html =
    native_select.native_select_simple(
      [
        native_select.NativeSelectOption("a", "A"),
        native_select.NativeSelectOption("b", "B"),
      ],
      "b",
      "demo",
      fn(v) { v },
    )
    |> element.to_string
  assert string.contains(html, "selected")
}

pub fn native_select_optgroup_renders_test() {
  let html =
    native_select.native_select_simple(
      [
        native_select.NativeSelectOptGroup("Fruits", [
          native_select.NativeSelectOption("apple", "Apple"),
        ]),
      ],
      "apple",
      "food",
      fn(v) { v },
    )
    |> element.to_string
  assert string.contains(html, "<optgroup")
  assert string.contains(html, "Fruits")
  assert string.contains(html, "Apple")
}

pub fn native_select_disabled_test() {
  let html =
    native_select.native_select_full(
      [native_select.NativeSelectOption("a", "A")],
      "a",
      "n",
      fn(v) { v },
      native_select.NativeSelectAttrs(
        size: native_select.Default,
        disabled: True,
        class: "",
      ),
    )
    |> element.to_string
  assert string.contains(html, "disabled")
}

pub fn native_select_small_class_test() {
  let html =
    native_select.native_select_full(
      [native_select.NativeSelectOption("a", "A")],
      "a",
      "n",
      fn(v) { v },
      native_select.NativeSelectAttrs(
        size: native_select.Small,
        disabled: False,
        class: "",
      ),
    )
    |> element.to_string
  assert string.contains(html, "native-select-sm")
}

pub fn native_select_has_chevron_icon_test() {
  let html =
    native_select.native_select_simple(
      [native_select.NativeSelectOption("a", "A")],
      "a",
      "n",
      fn(v) { v },
    )
    |> element.to_string
  assert string.contains(html, "native-select-icon")
  assert string.contains(html, "▾")
}

// --- button_group ---

pub fn button_group_renders_role_group_test() {
  let html =
    button_group.button_group_simple([
      h.button([], [h.text("A")]),
      h.button([], [h.text("B")]),
    ])
    |> element.to_string
  assert string.contains(html, "role=\"group\"")
  assert string.contains(html, "button-group")
}

pub fn button_group_renders_children_test() {
  let html =
    button_group.button_group_simple([
      h.button([], [h.text("Left")]),
      h.button([], [h.text("Right")]),
    ])
    |> element.to_string
  assert string.contains(html, "Left")
  assert string.contains(html, "Right")
}

pub fn button_group_vertical_class_test() {
  let html =
    button_group.button_group_full(
      [h.button([], [h.text("X")])],
      button_group.ButtonGroupAttrs(
        orientation: button_group.Vertical,
        class: "",
      ),
    )
    |> element.to_string
  assert string.contains(html, "button-group-vertical")
}

pub fn button_group_horizontal_no_vertical_class_test() {
  let html =
    button_group.button_group_simple([h.button([], [h.text("X")])])
    |> element.to_string
  assert !string.contains(html, "button-group-vertical")
}

// --- input_group ---

pub fn input_group_renders_role_group_test() {
  let html =
    input_group.input_group_simple(None, h.input([]), None)
    |> element.to_string
  assert string.contains(html, "role=\"group\"")
  assert string.contains(html, "input-group")
}

pub fn input_group_prefix_renders_test() {
  let html =
    input_group.input_group_simple(
      Some(h.span([], [h.text("@")])),
      h.input([]),
      None,
    )
    |> element.to_string
  assert string.contains(html, "input-group-addon")
  assert string.contains(html, "@")
}

pub fn input_group_suffix_renders_test() {
  let html =
    input_group.input_group_simple(
      None,
      h.input([]),
      Some(h.span([], [h.text(".com")])),
    )
    |> element.to_string
  assert string.contains(html, "input-group-addon")
  assert string.contains(html, ".com")
}

pub fn input_group_no_addons_test() {
  let html =
    input_group.input_group_simple(None, h.input([]), None)
    |> element.to_string
  assert !string.contains(html, "input-group-addon")
}

pub fn input_group_invalid_has_aria_invalid_test() {
  let html =
    input_group.input_group_full(
      None,
      h.input([]),
      None,
      input_group.InputGroupAttrs(class: "", invalid: True),
    )
    |> element.to_string
  assert string.contains(html, "aria-invalid=\"true\"")
}

pub fn input_group_valid_no_aria_invalid_test() {
  let html =
    input_group.input_group_simple(None, h.input([]), None)
    |> element.to_string
  assert !string.contains(html, "aria-invalid")
}

// --- context_menu ---

pub fn context_menu_closed_no_popup_test() {
  let html =
    context_menu.context_menu_simple(
      h.div([], [h.text("trigger")]),
      [context_menu.ContextMenuAction("Copy", Nil)],
      False,
      0,
      0,
      fn(_, _) { Nil },
      fn() { Nil },
    )
    |> element.to_string
  assert string.contains(html, "trigger")
  assert !string.contains(html, "context-menu-popup")
}

pub fn context_menu_open_renders_popup_test() {
  let html =
    context_menu.context_menu_simple(
      h.div([], [h.text("trigger")]),
      [context_menu.ContextMenuAction("Copy", Nil)],
      True,
      100,
      200,
      fn(_, _) { Nil },
      fn() { Nil },
    )
    |> element.to_string
  assert string.contains(html, "context-menu-popup")
  assert string.contains(html, "left:100px")
  assert string.contains(html, "top:200px")
}

pub fn context_menu_action_renders_button_test() {
  let html =
    context_menu.context_menu_simple(
      h.div([], []),
      [context_menu.ContextMenuAction("Paste", Nil)],
      True,
      0,
      0,
      fn(_, _) { Nil },
      fn() { Nil },
    )
    |> element.to_string
  assert string.contains(html, "context-menu-item")
  assert string.contains(html, "Paste")
}

pub fn context_menu_shortcut_renders_test() {
  let html =
    context_menu.context_menu_simple(
      h.div([], []),
      [context_menu.ContextMenuActionShortcut("Undo", "Ctrl+Z", Nil)],
      True,
      0,
      0,
      fn(_, _) { Nil },
      fn() { Nil },
    )
    |> element.to_string
  assert string.contains(html, "Undo")
  assert string.contains(html, "Ctrl+Z")
  assert string.contains(html, "context-menu-shortcut")
}

pub fn context_menu_destructive_class_test() {
  let html =
    context_menu.context_menu_simple(
      h.div([], []),
      [context_menu.ContextMenuDestructive("Delete", Nil)],
      True,
      0,
      0,
      fn(_, _) { Nil },
      fn() { Nil },
    )
    |> element.to_string
  assert string.contains(html, "context-menu-item-destructive")
  assert string.contains(html, "Delete")
}

pub fn context_menu_disabled_item_test() {
  let html =
    context_menu.context_menu_simple(
      h.div([], []),
      [context_menu.ContextMenuDisabled("Grayed")],
      True,
      0,
      0,
      fn(_, _) { Nil },
      fn() { Nil },
    )
    |> element.to_string
  assert string.contains(html, "context-menu-item-disabled")
  assert string.contains(html, "Grayed")
}

pub fn context_menu_separator_renders_test() {
  let html =
    context_menu.context_menu_simple(
      h.div([], []),
      [
        context_menu.ContextMenuAction("A", Nil),
        context_menu.ContextMenuSeparator,
        context_menu.ContextMenuAction("B", Nil),
      ],
      True,
      0,
      0,
      fn(_, _) { Nil },
      fn() { Nil },
    )
    |> element.to_string
  assert string.contains(html, "context-menu-separator")
}

pub fn context_menu_group_renders_label_test() {
  let html =
    context_menu.context_menu_simple(
      h.div([], []),
      [
        context_menu.ContextMenuGroup("Edit", [
          context_menu.ContextMenuAction("Cut", Nil),
          context_menu.ContextMenuAction("Copy", Nil),
        ]),
      ],
      True,
      0,
      0,
      fn(_, _) { Nil },
      fn() { Nil },
    )
    |> element.to_string
  assert string.contains(html, "context-menu-group-label")
  assert string.contains(html, "Edit")
  assert string.contains(html, "Cut")
  assert string.contains(html, "Copy")
}

pub fn context_menu_has_backdrop_when_open_test() {
  let html =
    context_menu.context_menu_simple(
      h.div([], []),
      [],
      True,
      0,
      0,
      fn(_, _) { Nil },
      fn() { Nil },
    )
    |> element.to_string
  assert string.contains(html, "context-menu-backdrop")
}

// --- drawer ---

pub fn drawer_closed_renders_empty_test() {
  let html =
    drawer.drawer_simple(False, "Title", h.text("content"), fn() { Nil })
    |> element.to_string
  assert !string.contains(html, "role=\"dialog\"")
}

pub fn drawer_open_renders_content_test() {
  let html =
    drawer.drawer_simple(
      True,
      "My Drawer",
      h.p([], [h.text("drawer body")]),
      fn() { Nil },
    )
    |> element.to_string
  assert string.contains(html, "role=\"dialog\"")
  assert string.contains(html, "My Drawer")
  assert string.contains(html, "drawer body")
}

pub fn drawer_bottom_has_handle_test() {
  let html =
    drawer.drawer_full(
      True,
      "Bottom",
      None,
      h.text(""),
      None,
      fn() { Nil },
      drawer.DrawerAttrs(side: drawer.Bottom, class: ""),
    )
    |> element.to_string
  assert string.contains(html, "drawer-handle")
}

pub fn drawer_left_no_handle_test() {
  let html =
    drawer.drawer_full(
      True,
      "Left",
      None,
      h.text(""),
      None,
      fn() { Nil },
      drawer.DrawerAttrs(side: drawer.Left, class: ""),
    )
    |> element.to_string
  assert !string.contains(html, "drawer-handle")
}

pub fn drawer_top_has_handle_test() {
  let html =
    drawer.drawer_full(
      True,
      "Top",
      None,
      h.text(""),
      None,
      fn() { Nil },
      drawer.DrawerAttrs(side: drawer.Top, class: ""),
    )
    |> element.to_string
  assert string.contains(html, "drawer-handle")
}

pub fn drawer_side_class_bottom_test() {
  let html =
    drawer.drawer_simple(True, "T", h.text(""), fn() { Nil })
    |> element.to_string
  assert string.contains(html, "drawer-bottom")
}

pub fn drawer_description_renders_test() {
  let html =
    drawer.drawer_full(
      True,
      "Title",
      Some("A helpful description"),
      h.text(""),
      None,
      fn() { Nil },
      drawer.default_attrs,
    )
    |> element.to_string
  assert string.contains(html, "drawer-description")
  assert string.contains(html, "A helpful description")
}

pub fn drawer_no_description_when_none_test() {
  let html =
    drawer.drawer_full(
      True,
      "Title",
      None,
      h.text(""),
      None,
      fn() { Nil },
      drawer.default_attrs,
    )
    |> element.to_string
  assert !string.contains(html, "drawer-description")
}

pub fn drawer_footer_renders_test() {
  let html =
    drawer.drawer_full(
      True,
      "Title",
      None,
      h.text(""),
      Some(h.div([], [h.text("footer content")])),
      fn() { Nil },
      drawer.default_attrs,
    )
    |> element.to_string
  assert string.contains(html, "drawer-footer")
  assert string.contains(html, "footer content")
}

pub fn drawer_has_backdrop_test() {
  let html =
    drawer.drawer_simple(True, "T", h.text(""), fn() { Nil })
    |> element.to_string
  assert string.contains(html, "drawer-backdrop")
}

pub fn drawer_aria_modal_test() {
  let html =
    drawer.drawer_simple(True, "T", h.text(""), fn() { Nil })
    |> element.to_string
  assert string.contains(html, "aria-modal=\"true\"")
}
