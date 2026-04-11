import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/checkboxes
import saola/preview/models.{type Msg}

fn checkbox_examples() -> List(Element(Msg)) {
  [
    checkboxes.checkbox_basic("Basic Checkbox"),
    checkboxes.checkbox_full(
      "Checkbox with help text",
      checkboxes.default_check_status,
      checkboxes.default_extra_attrs,
      "This is a help text for the checkbox.",
    ),
    checkboxes.checkbox_full(
      "Checkbox with composed attributes",
      checkboxes.default_check_status,
      checkboxes.ExtraAttrs(checkboxes.default_form_attr, "", "custom-class"),
      "This checkbox uses composed attributes from default constants.",
    ),
    checkboxes.checkbox_full(
      "Checkbox with InitChecked(True)",
      checkboxes.InitChecked(True),
      checkboxes.default_extra_attrs,
      "This checkbox is initially checked using InitChecked(True).",
    ),
    checkboxes.checkbox_full(
      "Checkbox with InitValue",
      checkboxes.default_check_status,
      checkboxes.ExtraAttrs(
        checkboxes.FormAttr("agree", checkboxes.InitValue("yes")),
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
