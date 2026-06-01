import gleam/option.{None, Some}
import gleam/string
import lustre/element
import lustre/element/html as h
import saola/empty
import saola/item

// --- empty ---

pub fn empty_simple_basic_test() {
  let html =
    empty.empty_simple(None, "Title", "Description", None)
    |> element.to_string
  assert string.contains(html, "class=\"empty\"")
  assert string.contains(html, "empty-title")
  assert string.contains(html, "Title")
  assert string.contains(html, "empty-description")
  assert string.contains(html, "Description")
}

pub fn empty_simple_with_icon_test() {
  let html =
    empty.empty_simple(Some(h.span([], [h.text("icon")])), "T", "D", None)
    |> element.to_string
  assert string.contains(html, "empty-media empty-media-icon")
}

pub fn empty_simple_with_action_test() {
  let html =
    empty.empty_simple(None, "T", "D", Some(h.button([], [h.text("Go")])))
    |> element.to_string
  assert string.contains(html, "empty-content")
  assert string.contains(html, "Go")
}

pub fn empty_omits_header_when_all_empty_test() {
  let html =
    empty.empty_full(
      media: None,
      media_variant: empty.Default,
      title: "",
      description: [],
      content: [],
      class: "",
    )
    |> element.to_string
  assert !string.contains(html, "empty-header")
  assert !string.contains(html, "empty-content")
}

pub fn empty_full_default_media_class_test() {
  let html =
    empty.empty_full(
      media: Some(h.span([], [h.text("i")])),
      media_variant: empty.Default,
      title: "",
      description: [],
      content: [],
      class: "",
    )
    |> element.to_string
  assert string.contains(html, "class=\"empty-media\"")
  assert !string.contains(html, "empty-media-icon")
}

pub fn empty_extra_class_concat_test() {
  let html =
    empty.empty_full(
      media: None,
      media_variant: empty.Default,
      title: "T",
      description: [],
      content: [],
      class: "custom",
    )
    |> element.to_string
  assert string.contains(html, "class=\"empty custom\"")
}

pub fn empty_omits_content_when_empty_test() {
  let html =
    empty.empty_full(
      media: None,
      media_variant: empty.Default,
      title: "T",
      description: [],
      content: [],
      class: "",
    )
    |> element.to_string
  assert !string.contains(html, "empty-content")
}

pub fn empty_renders_content_when_present_test() {
  let html =
    empty.empty_full(
      media: None,
      media_variant: empty.Default,
      title: "",
      description: [],
      content: [h.button([], [h.text("Action")])],
      class: "",
    )
    |> element.to_string
  assert string.contains(html, "empty-content")
  assert string.contains(html, "Action")
}

// --- item ---

pub fn item_full_default_classes_test() {
  let html =
    item.item_full(
      variant: item.Default,
      size: item.Large,
      media: None,
      media_variant: item.MediaDefault,
      title: "Title",
      description: "Desc",
      actions: [],
      class: "",
    )
    |> element.to_string
  assert string.contains(html, "item item-default item-lg")
  assert string.contains(html, "item-title")
  assert string.contains(html, "item-description")
}

pub fn item_full_outline_small_test() {
  let html =
    item.item_full(
      variant: item.Outline,
      size: item.Small,
      media: None,
      media_variant: item.MediaDefault,
      title: "T",
      description: "D",
      actions: [],
      class: "",
    )
    |> element.to_string
  assert string.contains(html, "item-outline")
  assert string.contains(html, "item-sm")
}

pub fn item_full_muted_test() {
  let html =
    item.item_full(
      variant: item.Muted,
      size: item.Large,
      media: None,
      media_variant: item.MediaDefault,
      title: "T",
      description: "D",
      actions: [],
      class: "",
    )
    |> element.to_string
  assert string.contains(html, "item-muted")
}

pub fn item_simple_with_action_test() {
  let html =
    item.item_simple("Title", "Desc", Some(h.button([], [h.text("Go")])))
    |> element.to_string
  assert string.contains(html, "Title")
  assert string.contains(html, "Desc")
  assert string.contains(html, "item-actions")
  assert string.contains(html, "Go")
}

pub fn item_simple_no_action_omits_actions_test() {
  let html = item.item_simple("T", "D", None) |> element.to_string
  assert !string.contains(html, "item-actions")
}

pub fn item_omits_content_when_empty_test() {
  let html =
    item.item_full(
      variant: item.Default,
      size: item.Large,
      media: Some(h.span([], [h.text("m")])),
      media_variant: item.MediaIcon,
      title: "",
      description: "",
      actions: [],
      class: "",
    )
    |> element.to_string
  assert !string.contains(html, "item-content")
  assert string.contains(html, "item-media item-media-icon")
}

pub fn item_media_image_class_test() {
  let html =
    item.item_full(
      variant: item.Default,
      size: item.Large,
      media: Some(h.img([])),
      media_variant: item.MediaImage,
      title: "T",
      description: "D",
      actions: [],
      class: "",
    )
    |> element.to_string
  assert string.contains(html, "item-media item-media-image")
}

pub fn item_link_emits_anchor_test() {
  let html =
    item.item_link(
      href: "/foo",
      title: "Title",
      description: "Desc",
      action: None,
      class: "",
    )
    |> element.to_string
  assert string.contains(html, "<a")
  assert string.contains(html, "href=\"/foo\"")
  assert string.contains(html, "item item-default")
}

pub fn item_group_has_role_list_test() {
  let html =
    item.item_group([item.item_simple("A", "B", None)])
    |> element.to_string
  assert string.contains(html, "role=\"list\"")
  assert string.contains(html, "item-group")
}

pub fn item_separator_renders_hr_test() {
  let html = item.item_separator() |> element.to_string
  assert string.contains(html, "<hr")
  assert string.contains(html, "role=\"separator\"")
  assert string.contains(html, "item-separator")
}

pub fn item_extra_class_concat_test() {
  let html =
    item.item_full(
      variant: item.Default,
      size: item.Large,
      media: None,
      media_variant: item.MediaDefault,
      title: "T",
      description: "D",
      actions: [],
      class: "custom",
    )
    |> element.to_string
  assert string.contains(html, "item item-default item-lg custom")
}
