import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/checkbox
import saola/preview/model.{type Msg}

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

pub fn view_inputs() -> Element(Msg) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Inputs")]),
    h.p([a.class("page-description")], [
      text("Showcase of text inputs, checkboxes, etc."),
    ]),
    h.h2([], [text("Checkboxes")]),
    h.div([a.class("grid gap-4")], checkbox_examples()),
  ])
}
