import gleam/json
import gleam/option.{None, Some}
import gleam/string
import lustre/attribute as a
import lustre/element
import lustre/element/html as h
import saola/carousel
import saola/component/combobox as cb
import saola/navigation_menu
import saola/toast

// --- carousel ---

pub fn carousel_simple_renders_test() {
  let slides = [h.div([], [h.text("Slide 1")]), h.div([], [h.text("Slide 2")])]
  let html =
    carousel.carousel_simple(slides, 0, fn(i, p, n) { #(i, p, n) })
    |> element.to_string
  assert string.contains(html, "saola-carousel")
}

pub fn carousel_orientation_attr_test() {
  let html =
    carousel.carousel_full(
      [h.div([], [h.text("S")])],
      0,
      False,
      True,
      fn(i, p, n) { #(i, p, n) },
      carousel.CarouselAttrs(
        orientation: carousel.Vertical,
        loop: False,
        class: "",
      ),
    )
    |> element.to_string
  assert string.contains(html, "orientation=\"vertical\"")
}

pub fn carousel_loop_attr_test() {
  let html =
    carousel.carousel_full(
      [h.div([], [h.text("S")])],
      0,
      False,
      True,
      fn(i, p, n) { #(i, p, n) },
      carousel.CarouselAttrs(
        orientation: carousel.Horizontal,
        loop: True,
        class: "",
      ),
    )
    |> element.to_string
  assert string.contains(html, " loop")
}

pub fn carousel_horizontal_default_test() {
  let html =
    carousel.carousel_simple([h.div([], [h.text("S")])], 0, fn(i, p, n) {
      #(i, p, n)
    })
    |> element.to_string
  assert string.contains(html, "orientation=\"horizontal\"")
}

// --- combobox ---

pub fn combobox_element_renders_tag_test() {
  let html = cb.element([]) |> element.to_string
  assert string.contains(html, "<combo-box")
}

pub fn combobox_preselect_value_attr_test() {
  let html = cb.element([cb.preselect_value("cherry")]) |> element.to_string
  assert string.contains(html, "preselect=\"cherry\"")
}

pub fn combobox_regular_attributes_are_serialized_test() {
  let html = cb.element([a.id("fruit-combobox")]) |> element.to_string
  assert string.contains(html, "id=\"fruit-combobox\"")
}

pub fn combobox_choices_property_is_not_serialized_test() {
  let html =
    cb.element([
      a.property(
        "choices",
        json.array([cb.Item(value: "apple", name: "Apple")], cb.encode_item),
      ),
    ])
    |> element.to_string
  assert string.contains(html, "<combo-box")
  assert !string.contains(html, "choices=")
  assert !string.contains(html, "Apple")
}

// --- navigation menu ---

pub fn nav_menu_renders_nav_test() {
  let html =
    navigation_menu.navigation_menu_simple([], None, fn(id) { id })
    |> element.to_string
  assert string.contains(html, "<nav")
  assert string.contains(html, "nav-menu")
}

pub fn nav_menu_link_renders_test() {
  let html =
    navigation_menu.navigation_menu_simple(
      [
        navigation_menu.NavMenuLink(label: "Home", href: "/home", active: False),
      ],
      None,
      fn(id) { id },
    )
    |> element.to_string
  assert string.contains(html, "Home")
  assert string.contains(html, "href=\"/home\"")
}

pub fn nav_menu_active_link_class_test() {
  let html =
    navigation_menu.navigation_menu_simple(
      [
        navigation_menu.NavMenuLink(
          label: "Active",
          href: "/active",
          active: True,
        ),
      ],
      None,
      fn(id) { id },
    )
    |> element.to_string
  assert string.contains(html, "nav-menu-link-active")
}

pub fn nav_menu_dropdown_closed_test() {
  let html =
    navigation_menu.navigation_menu_simple(
      [
        navigation_menu.NavMenuDropdown(
          label: "Products",
          id: "products",
          content: navigation_menu.NavMenuSimple([#("Widget A", "#")]),
        ),
      ],
      None,
      fn(id) { id },
    )
    |> element.to_string
  assert string.contains(html, "aria-expanded=\"false\"")
  assert string.contains(html, "aria-haspopup=\"true\"")
  assert !string.contains(html, "Widget A")
}

pub fn nav_menu_dropdown_open_test() {
  let html =
    navigation_menu.navigation_menu_simple(
      [
        navigation_menu.NavMenuDropdown(
          label: "Products",
          id: "products",
          content: navigation_menu.NavMenuSimple([#("Widget A", "#")]),
        ),
      ],
      Some("products"),
      fn(id) { id },
    )
    |> element.to_string
  assert string.contains(html, "aria-expanded=\"true\"")
  assert string.contains(html, "Widget A")
  assert string.contains(html, "role=\"menu\"")
}

pub fn nav_menu_rich_content_test() {
  let html =
    navigation_menu.navigation_menu_simple(
      [
        navigation_menu.NavMenuDropdown(
          label: "Custom",
          id: "custom",
          content: navigation_menu.NavMenuRich(
            h.div([], [h.text("Rich panel")]),
          ),
        ),
      ],
      Some("custom"),
      fn(id) { id },
    )
    |> element.to_string
  assert string.contains(html, "Rich panel")
}

// --- toast (new variants) ---

pub fn toast_success_variant_test() {
  let t = toast.new_toast_simple("Done", "All good.", toast.Success)
  let html = toast.toaster([t], fn(id) { id }) |> element.to_string
  assert string.contains(html, "toast-success")
}

pub fn toast_warning_variant_test() {
  let t = toast.new_toast_simple("Warning", "Check this.", toast.Warning)
  let html = toast.toaster([t], fn(id) { id }) |> element.to_string
  assert string.contains(html, "toast-warning")
}

pub fn toast_info_variant_test() {
  let t = toast.new_toast_simple("Info", "FYI.", toast.Info)
  let html = toast.toaster([t], fn(id) { id }) |> element.to_string
  assert string.contains(html, "toast-info")
}

pub fn toast_with_action_renders_test() {
  let t =
    toast.new_toast(
      "Upgrade",
      "Get more features.",
      toast.Default,
      Some(toast.ToastAction("Upgrade now", "clicked")),
    )
  let html = toast.toaster([t], fn(id) { id }) |> element.to_string
  assert string.contains(html, "Upgrade now")
  assert string.contains(html, "data-toast-action")
}

pub fn toast_dismiss_button_renders_test() {
  let t = toast.new_toast_simple("Hi", "Hello.", toast.Default)
  let html = toast.toaster([t], fn(id) { id }) |> element.to_string
  assert string.contains(html, "data-toast-cancel")
}
