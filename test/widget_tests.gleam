import gleam/option.{None, Some}
import gleam/string
import lustre/element
import saola/alert
import saola/badge
import saola/button
import saola/card
import saola/kbd
import saola/label
import saola/separator

// --- badge ---

pub fn badge_default_renders_test() {
  let html = badge.badge_default("New") |> element.to_string
  assert string.contains(html, "New")
  assert string.contains(html, "class=\"badge\"")
}

pub fn badge_secondary_renders_test() {
  let html = badge.badge_secondary("Beta") |> element.to_string
  assert string.contains(html, "badge-secondary")
}

pub fn badge_destructive_renders_test() {
  let html = badge.badge_destructive("Error") |> element.to_string
  assert string.contains(html, "badge-destructive")
}

pub fn badge_outline_renders_test() {
  let html = badge.badge_outline("Draft") |> element.to_string
  assert string.contains(html, "badge-outline")
}

// --- alert ---

pub fn alert_default_renders_test() {
  let html = alert.alert_default("Something happened.") |> element.to_string
  assert string.contains(html, "role=\"alert\"")
  assert string.contains(html, "Something happened.")
  assert string.contains(html, "class=\"alert\"")
}

pub fn alert_destructive_renders_test() {
  let html =
    alert.alert_destructive("Error", "Cannot save.") |> element.to_string
  assert string.contains(html, "alert-destructive")
  assert string.contains(html, "Error")
  assert string.contains(html, "Cannot save.")
}

pub fn alert_full_with_title_renders_test() {
  let html =
    alert.alert_full(
      alert.Default,
      title: "Heads up!",
      description: "A change was made.",
      icon: None,
    )
    |> element.to_string
  assert string.contains(html, "Heads up!")
  assert string.contains(html, "A change was made.")
  assert string.contains(html, "<h2")
}

// --- button ---

pub fn button_primary_renders_test() {
  let html = button.button_primary("Save", Nil) |> element.to_string
  assert string.contains(html, "btn-lg-primary")
  assert string.contains(html, "Save")
  assert string.contains(html, "<button")
}

pub fn button_secondary_renders_test() {
  let html = button.button_secondary("Cancel", Nil) |> element.to_string
  assert string.contains(html, "btn-lg-secondary")
}

pub fn button_outline_renders_test() {
  let html = button.button_outline("Edit", Nil) |> element.to_string
  assert string.contains(html, "btn-lg-outline")
}

pub fn button_destructive_renders_test() {
  let html = button.button_destructive("Delete", Nil) |> element.to_string
  assert string.contains(html, "btn-lg-destructive")
}

pub fn button_submit_has_type_submit_test() {
  let html = button.button_submit("Send") |> element.to_string
  assert string.contains(html, "type=\"submit\"")
  assert string.contains(html, "Send")
}

pub fn button_disabled_renders_test() {
  let html =
    button.button_full(
      button.Primary,
      "Save",
      button.Large,
      None,
      None,
      button.ButtonExtraAttrs(
        disabled: True,
        type_: None,
        aria: button.default_aria,
      ),
    )
    |> element.to_string
  assert string.contains(html, "disabled")
}

pub fn button_with_aria_label_renders_test() {
  let html =
    button.button_full(
      button.Ghost,
      "",
      button.Small,
      None,
      None,
      button.ButtonExtraAttrs(
        disabled: False,
        type_: None,
        aria: button.ButtonAria("Close dialog", None),
      ),
    )
    |> element.to_string
  assert string.contains(html, "aria-label=\"Close dialog\"")
}

pub fn button_small_renders_test() {
  let html =
    button.button_full(
      button.Secondary,
      "Edit",
      button.Small,
      None,
      Some(Nil),
      button.default_extra_attrs,
    )
    |> element.to_string
  assert string.contains(html, "btn-sm-secondary")
}

// --- card ---

pub fn card_simple_renders_test() {
  let html = card.card_simple("Settings", []) |> element.to_string
  assert string.contains(html, "class=\"card\"")
  assert string.contains(html, "Settings")
}

pub fn card_with_description_renders_test() {
  let html =
    card.card(card.CardAttrs(
      title: "Profile",
      description: "Manage your account.",
      content: [],
      footer: None,
    ))
    |> element.to_string
  assert string.contains(html, "Profile")
  assert string.contains(html, "Manage your account.")
  assert string.contains(html, "<header")
}

pub fn card_with_footer_renders_test() {
  let footer = button.button_primary("Save", Nil)
  let html =
    card.card(card.CardAttrs(
      title: "Account",
      description: "",
      content: [],
      footer: Some(footer),
    ))
    |> element.to_string
  assert string.contains(html, "<footer")
  assert string.contains(html, "Save")
}

pub fn card_empty_header_omitted_test() {
  let html =
    card.card(card.CardAttrs(
      title: "",
      description: "",
      content: [],
      footer: None,
    ))
    |> element.to_string
  assert !string.contains(html, "<header")
}

// --- label ---

pub fn label_for_renders_test() {
  let html = label.label_for("Email", "email-input") |> element.to_string
  assert string.contains(html, "class=\"label")
  assert string.contains(html, "for=\"email-input\"")
  assert string.contains(html, "Email")
}

pub fn label_without_for_renders_test() {
  let html = label.label("Username", "", "") |> element.to_string
  assert string.contains(html, "class=\"label")
  assert string.contains(html, "Username")
  assert !string.contains(html, "for=")
}

// --- separator ---

pub fn separator_renders_test() {
  let html = separator.separator() |> element.to_string
  assert string.contains(html, "<hr")
  assert string.contains(html, "role=\"separator\"")
  assert !string.contains(html, "aria-orientation")
}

pub fn separator_vertical_renders_test() {
  let html = separator.separator_vertical() |> element.to_string
  assert string.contains(html, "aria-orientation=\"vertical\"")
}

// --- kbd ---

pub fn kbd_renders_test() {
  let html = kbd.kbd("⌘K") |> element.to_string
  assert string.contains(html, "<kbd")
  assert string.contains(html, "class=\"kbd\"")
  assert string.contains(html, "⌘K")
}
