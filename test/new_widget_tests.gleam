import gleam/string
import lustre/element
import lustre/element/html as h
import saola/accordion
import saola/avatar
import saola/progress
import saola/skeleton

// --- accordion ---

pub fn accordion_simple_renders_test() {
  let html =
    accordion.accordion_simple(
      items: [
        accordion.AccordionItem(
          "q1",
          "What is Saola?",
          h.p([], [h.text("A UI library.")]),
        ),
        accordion.AccordionItem(
          "q2",
          "How to install?",
          h.p([], [h.text("gleam add saola")]),
        ),
      ],
      open_ids: ["q1"],
      on_toggle: fn(id) { id },
    )
    |> element.to_string
  assert string.contains(html, "class=\"accordion")
  assert string.contains(html, "class=\"accordion-item\"")
  assert string.contains(html, "What is Saola?")
  assert string.contains(html, "How to install?")
}

pub fn accordion_open_item_has_aria_expanded_test() {
  let html =
    accordion.accordion_simple(
      items: [accordion.AccordionItem("a", "Title A", h.text("Content A"))],
      open_ids: ["a"],
      on_toggle: fn(id) { id },
    )
    |> element.to_string
  assert string.contains(html, "aria-expanded=\"true\"")
}

pub fn accordion_closed_item_has_aria_expanded_false_test() {
  let html =
    accordion.accordion_simple(
      items: [accordion.AccordionItem("b", "Title B", h.text("Content B"))],
      open_ids: [],
      on_toggle: fn(id) { id },
    )
    |> element.to_string
  assert string.contains(html, "aria-expanded=\"false\"")
}

pub fn accordion_panel_ids_linked_test() {
  let html =
    accordion.accordion_simple(
      items: [accordion.AccordionItem("faq", "FAQ", h.text("Answer"))],
      open_ids: ["faq"],
      on_toggle: fn(id) { id },
    )
    |> element.to_string
  assert string.contains(html, "id=\"accordion-btn-faq\"")
  assert string.contains(html, "id=\"accordion-panel-faq\"")
  assert string.contains(html, "aria-controls=\"accordion-panel-faq\"")
  assert string.contains(html, "aria-labelledby=\"accordion-btn-faq\"")
  assert string.contains(html, "role=\"region\"")
}

pub fn accordion_closed_panel_aria_hidden_test() {
  let html =
    accordion.accordion_simple(
      items: [accordion.AccordionItem("x", "X", h.text("Content"))],
      open_ids: [],
      on_toggle: fn(id) { id },
    )
    |> element.to_string
  assert string.contains(html, "aria-hidden=\"true\"")
}

pub fn accordion_open_panel_not_hidden_test() {
  let html =
    accordion.accordion_simple(
      items: [accordion.AccordionItem("x", "X", h.text("Content"))],
      open_ids: ["x"],
      on_toggle: fn(id) { id },
    )
    |> element.to_string
  assert string.contains(html, "aria-hidden=\"false\"")
}

pub fn accordion_trigger_is_button_test() {
  let html =
    accordion.accordion_simple(
      items: [accordion.AccordionItem("t", "Trigger", h.text("Panel"))],
      open_ids: [],
      on_toggle: fn(id) { id },
    )
    |> element.to_string
  assert string.contains(html, "class=\"accordion-trigger\"")
  assert string.contains(html, "type=\"button\"")
}

// --- progress ---

pub fn progress_simple_renders_test() {
  let html = progress.progress_simple(50) |> element.to_string
  assert string.contains(html, "class=\"progress")
  assert string.contains(html, "role=\"progressbar\"")
  assert string.contains(html, "aria-valuemin=\"0\"")
  assert string.contains(html, "aria-valuemax=\"100\"")
  assert string.contains(html, "aria-valuenow=\"50\"")
  assert string.contains(html, "aria-live=\"polite\"")
  assert string.contains(html, "class=\"progress-bar\"")
}

pub fn progress_zero_renders_test() {
  let html = progress.progress_simple(0) |> element.to_string
  assert string.contains(html, "aria-valuenow=\"0\"")
}

pub fn progress_full_renders_test() {
  let html = progress.progress_simple(100) |> element.to_string
  assert string.contains(html, "aria-valuenow=\"100\"")
}

pub fn progress_with_label_renders_test() {
  let html =
    progress.progress(
      75,
      progress.Default,
      progress.ProgressAttrs(..progress.default_attrs, label: "Loading 75%"),
    )
    |> element.to_string
  assert string.contains(html, "aria-label=\"Loading 75%\"")
}

pub fn progress_success_variant_renders_test() {
  let html =
    progress.progress(60, progress.Success, progress.default_attrs)
    |> element.to_string
  assert string.contains(html, "progress-bar-success")
}

pub fn progress_destructive_variant_renders_test() {
  let html =
    progress.progress(20, progress.Destructive, progress.default_attrs)
    |> element.to_string
  assert string.contains(html, "progress-bar-destructive")
}

pub fn progress_custom_range_renders_test() {
  let html =
    progress.progress(
      3,
      progress.Default,
      progress.ProgressAttrs(min: 0, max: 5, label: "", class: ""),
    )
    |> element.to_string
  assert string.contains(html, "aria-valuemin=\"0\"")
  assert string.contains(html, "aria-valuemax=\"5\"")
  assert string.contains(html, "aria-valuenow=\"3\"")
}

// --- skeleton ---

pub fn skeleton_renders_test() {
  let html = skeleton.skeleton("") |> element.to_string
  assert string.contains(html, "class=\"skeleton")
  assert string.contains(html, "role=\"status\"")
  assert string.contains(html, "aria-busy=\"true\"")
  assert string.contains(html, "aria-live=\"polite\"")
}

pub fn skeleton_text_renders_test() {
  let html = skeleton.skeleton_text() |> element.to_string
  assert string.contains(html, "skeleton-text")
  assert string.contains(html, "role=\"status\"")
}

pub fn skeleton_circle_renders_test() {
  let html = skeleton.skeleton_circle() |> element.to_string
  assert string.contains(html, "skeleton-circle")
}

pub fn skeleton_with_extra_class_renders_test() {
  let html = skeleton.skeleton("my-custom-size") |> element.to_string
  assert string.contains(html, "my-custom-size")
}

// --- avatar ---

pub fn avatar_initials_renders_test() {
  let html = avatar.avatar_initials("JD") |> element.to_string
  assert string.contains(html, "class=\"avatar")
  assert string.contains(html, "class=\"avatar-fallback\"")
  assert string.contains(html, "JD")
}

pub fn avatar_image_renders_test() {
  let html =
    avatar.avatar_image("https://example.com/photo.jpg", "Jane")
    |> element.to_string
  assert string.contains(html, "class=\"avatar")
  assert string.contains(html, "src=\"https://example.com/photo.jpg\"")
  assert string.contains(html, "alt=\"Jane\"")
  assert string.contains(html, "class=\"avatar-image\"")
}

pub fn avatar_sizes_render_test() {
  let sm =
    avatar.avatar(avatar.Initials("AB"), avatar.Small, "")
    |> element.to_string
  let md =
    avatar.avatar(avatar.Initials("AB"), avatar.Medium, "")
    |> element.to_string
  let lg =
    avatar.avatar(avatar.Initials("AB"), avatar.Large, "")
    |> element.to_string
  assert string.contains(sm, "avatar-sm")
  assert string.contains(md, "avatar-md")
  assert string.contains(lg, "avatar-lg")
}

pub fn avatar_extra_class_renders_test() {
  let html =
    avatar.avatar(avatar.Initials("XY"), avatar.Medium, "ring-2")
    |> element.to_string
  assert string.contains(html, "ring-2")
}

pub fn avatar_fallback_has_aria_hidden_test() {
  let html = avatar.avatar_initials("ZZ") |> element.to_string
  assert string.contains(html, "aria-hidden=\"true\"")
}
