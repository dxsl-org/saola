import gleam/option
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/checkbox
import saola/input
import saola/preview/model.{type Msg}
import saola/textarea

fn checkbox_examples() -> List(Element(Msg)) {
  [
    checkbox.checkbox_basic("Basic Checkbox"),
    checkbox.checkbox_full(
      "Checkbox with help text",
      checkbox.default_check_status,
      checkbox.default_extra_attrs,
      "This is a help text for the checkbox.",
    ),
    checkbox.checkbox_full(
      "Checkbox with composed attributes",
      checkbox.default_check_status,
      checkbox.ExtraAttrs(checkbox.default_form_attr, "", "custom-class"),
      "This checkbox uses composed attributes from default constants.",
    ),
    checkbox.checkbox_full(
      "Checkbox with InitChecked(True)",
      checkbox.InitChecked(True),
      checkbox.default_extra_attrs,
      "This checkbox is initially checked using InitChecked(True).",
    ),
    checkbox.checkbox_full(
      "Checkbox with InitValue",
      checkbox.default_check_status,
      checkbox.ExtraAttrs(
        checkbox.FormAttr("agree", checkbox.InitValue("yes")),
        "",
        "",
      ),
      "This checkbox uses InitValue for form submission.",
    ),
  ]
}

fn input_examples() -> List(Element(Msg)) {
  [
    input.input_text("Enter text...", fn(_) { model.OnRouteChange(model.Inputs) }),
    input.input_email("you@example.com", fn(_) { model.OnRouteChange(model.Inputs) }),
    input.input_password("Password", fn(_) { model.OnRouteChange(model.Inputs) }),
    input.input_full(
      input.Number,
      option.None,
      on_input: option.None,
      extra_attrs: input.InputExtraAttrs("qty", "quantity", "0", False, False, ""),
    ),
  ]
}

fn textarea_examples() -> List(Element(Msg)) {
  [
    textarea.textarea_simple(
      "Write something...",
      fn(_) { model.OnRouteChange(model.Inputs) },
    ),
    textarea.textarea_full(
      option.None,
      on_input: option.None,
      extra_attrs: textarea.TextareaExtraAttrs(
        "",
        "bio",
        "Tell us about yourself",
        option.Some(4),
        False,
        False,
        "",
      ),
    ),
  ]
}

pub fn view_inputs() -> Element(Msg) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Inputs")]),
    h.p([a.class("page-description")], [
      text("Showcase of text inputs, checkboxes, and textareas."),
    ]),
    h.h2([], [text("Text Inputs")]),
    h.div([a.class("grid gap-4")], input_examples()),
    h.h2([a.class("mt-4")], [text("Textareas")]),
    h.div([a.class("grid gap-4")], textarea_examples()),
    h.h2([a.class("mt-4")], [text("Checkboxes")]),
    h.div([a.class("grid gap-4")], checkbox_examples()),
  ])
}
