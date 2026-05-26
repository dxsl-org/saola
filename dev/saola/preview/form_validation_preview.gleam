import gleam/dict
import gleam/option.{None, Some}
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import lustre/event as e
import saola/button
import saola/field
import saola/input
import saola/preview/model.{
  type Message, type Model, SignupConfirmChanged, SignupEmailChanged,
  SignupNameChanged, SignupPasswordChanged, SignupReset, SignupSubmitted,
}

pub fn view_form_validation(model: Model) -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Form Validation")]),
    h.p([a.class("page-description")], [
      text(
        "Real-time signup form powered by the formal library and saola/form bridge.",
      ),
    ]),
    h.div([a.class("mt-6 max-w-md")], [
      case model.signup_success {
        True -> success_banner(model)
        False -> signup_form(model)
      },
    ]),
  ])
}

fn signup_form(model: Model) -> Element(Message) {
  let err = fn(name) {
    dict.get(model.signup_errors, name) |> result_unwrap("")
  }

  h.form([a.class("grid gap-4"), e.on_submit(fn(_) { SignupSubmitted })], [
    field.field(
      field.FieldAttrs(
        ..field.default_attrs,
        label: "Full name",
        required: True,
        error: err("name"),
      ),
      input.input_full(
        input.Text,
        Some(input.SyncValue(model.signup_name)),
        on_input: Some(SignupNameChanged),
        extra_attrs: input.InputExtraAttrs(
          ..input.default_extra_attrs,
          name: "name",
          placeholder: "Nguyen Van A",
        ),
      ),
    ),
    field.field(
      field.FieldAttrs(
        ..field.default_attrs,
        label: "Email address",
        required: True,
        error: err("email"),
      ),
      input.input_full(
        input.Email,
        Some(input.SyncValue(model.signup_email)),
        on_input: Some(SignupEmailChanged),
        extra_attrs: input.InputExtraAttrs(
          ..input.default_extra_attrs,
          name: "email",
          placeholder: "you@example.com",
        ),
      ),
    ),
    field.field(
      field.FieldAttrs(
        ..field.default_attrs,
        label: "Password",
        required: True,
        hint: "At least 8 characters.",
        error: err("password"),
      ),
      input.input_full(
        input.Password,
        Some(input.SyncValue(model.signup_password)),
        on_input: Some(SignupPasswordChanged),
        extra_attrs: input.InputExtraAttrs(
          ..input.default_extra_attrs,
          name: "password",
          placeholder: "",
        ),
      ),
    ),
    field.field(
      field.FieldAttrs(
        ..field.default_attrs,
        label: "Confirm password",
        required: True,
        error: err("confirm"),
      ),
      input.input_full(
        input.Password,
        Some(input.SyncValue(model.signup_confirm)),
        on_input: Some(SignupConfirmChanged),
        extra_attrs: input.InputExtraAttrs(
          ..input.default_extra_attrs,
          name: "confirm",
          placeholder: "",
        ),
      ),
    ),
    h.div([a.class("flex gap-2 pt-2")], [
      button.button_full(
        button.Primary,
        "Create account",
        button.Large,
        None,
        None,
        button.ButtonExtraAttrs(False, Some(button.Submit), button.default_aria),
      ),
    ]),
    case dict.size(model.signup_errors) > 0 {
      True ->
        h.p([a.class("text-destructive text-sm")], [
          text("Please fix the errors above and try again."),
        ])
      False -> element.none()
    },
  ])
}

fn success_banner(model: Model) -> Element(Message) {
  h.div([a.class("grid gap-4")], [
    h.div([a.class("alert")], [
      h.p([a.class("alert-title")], [text("Account created!")]),
      h.p([a.class("alert-description")], [
        text("Welcome, " <> model.signup_name <> ". You can now sign in."),
      ]),
    ]),
    button.button_outline("Start over", SignupReset),
  ])
}

fn result_unwrap(r: Result(a, e), default: a) -> a {
  case r {
    Ok(v) -> v
    Error(_) -> default
  }
}
