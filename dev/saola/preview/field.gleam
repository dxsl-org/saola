import gleam/option
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/field
import saola/input
import saola/preview/model.{type Msg, FormEmailChanged, FormNameChanged}
import saola/select
import saola/switch

pub fn view_fields(name: String, email: String) -> Element(Msg) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Field")]),
    h.p([a.class("page-description")], [
      text(
        "A form field wrapper combining label, input, description, and error.",
      ),
    ]),
    h.div([a.class("mt-4 grid gap-6 max-w-md")], [
      field.field_simple(
        "Full name",
        input.input_text("Jane Doe", FormNameChanged),
      ),
      field.field(
        field.FieldAttrs(
          label: "Email address",
          description: "We'll never share your email.",
          error: "",
          orientation: field.Vertical,
        ),
        input.input_full(
          input.Email,
          option.Some(input.SyncValue(email)),
          on_input: option.Some(fn(v) { FormEmailChanged(v) }),
          extra_attrs: input.InputExtraAttrs(
            ..input.default_extra_attrs,
            placeholder: "you@example.com",
            name: "email",
          ),
        ),
      ),
      field.field(
        field.FieldAttrs(
          label: "Username",
          description: "",
          error: "Username is already taken.",
          orientation: field.Vertical,
        ),
        input.input_full(
          input.Text,
          option.Some(input.SyncValue(name)),
          on_input: option.Some(FormNameChanged),
          extra_attrs: input.InputExtraAttrs(
            ..input.default_extra_attrs,
            placeholder: "choose a username",
            name: "username",
          ),
        ),
      ),
      field.field(
        field.FieldAttrs(
          label: "Country",
          description: "Used to calculate shipping.",
          error: "",
          orientation: field.Vertical,
        ),
        select.select_simple(
          [
            select.SelectOption("vn", "Vietnam"),
            select.SelectOption("jp", "Japan"),
            select.SelectOption("us", "United States"),
          ],
          fn(_) { FormNameChanged("") },
        ),
      ),
      field.field(
        field.FieldAttrs(
          label: "Marketing emails",
          description: "Receive product updates and offers.",
          error: "",
          orientation: field.Horizontal,
        ),
        switch.switch_simple("", False, fn(_) { FormNameChanged("") }),
      ),
    ]),
  ])
}
