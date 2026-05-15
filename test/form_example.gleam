import gleam/list
import gleam/option.{None, Some}
import lustre/attribute as a
import lustre/effect
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e
import saola/button
import saola/card
import saola/checkbox
import saola/input
import saola/label
import saola/textarea

pub type Model {
  Model(
    name: String,
    email: String,
    message: String,
    submitted_values: List(#(String, String)),
  )
}

pub type Msg {
  NameChanged(String)
  EmailChanged(String)
  MessageChanged(String)
  Submitted(List(#(String, String)))
}

pub fn init(_args) {
  #(
    Model(name: "", email: "", message: "", submitted_values: []),
    effect.none(),
  )
}

pub fn update(model: Model, msg: Msg) {
  case msg {
    NameChanged(name) -> #(Model(..model, name: name), effect.none())
    EmailChanged(email) -> #(Model(..model, email: email), effect.none())
    MessageChanged(message) -> #(Model(..model, message: message), effect.none())
    Submitted(values) -> #(Model(..model, submitted_values: values), effect.none())
  }
}

pub fn view(model: Model) -> Element(Msg) {
  card.card(card.CardAttrs(
    title: "Contact form",
    description: "A small Saola form wired with Lustre messages.",
    content: [
      h.form([a.class("grid gap-4"), e.on_submit(Submitted)], [
        field("name", "Name", [
          input.input_full(
            input.Text,
            Some(input.SyncValue(model.name)),
            on_input: Some(NameChanged),
            extra_attrs: input.InputExtraAttrs(
              id: "name",
              name: "name",
              placeholder: "Nguyen Van A",
              disabled: False,
              required: True,
              class: "",
            ),
          ),
        ]),
        field("email", "Email", [
          input.input_full(
            input.Email,
            Some(input.SyncValue(model.email)),
            on_input: Some(EmailChanged),
            extra_attrs: input.InputExtraAttrs(
              id: "email",
              name: "email",
              placeholder: "you@example.com",
              disabled: False,
              required: True,
              class: "",
            ),
          ),
        ]),
        field("message", "Message", [
          textarea.textarea_full(
            Some(textarea.SyncValue(model.message)),
            on_input: Some(MessageChanged),
            extra_attrs: textarea.TextareaExtraAttrs(
              id: "message",
              name: "message",
              placeholder: "How can we help?",
              rows: Some(4),
              disabled: False,
              required: True,
              class: "",
            ),
          ),
        ]),
        checkbox.checkbox_full(
          "Send me product updates",
          checkbox.InitChecked(True),
          checkbox.ExtraAttrs(
            checkbox.FormAttr("updates", checkbox.InitValue("yes")),
            "updates",
            "",
          ),
          "This checkbox submits a normal form value.",
        ),
        button.button_full(
          button.Primary,
          "Send",
          button.Large,
          None,
          button.ButtonExtraAttrs(
            disabled: False,
            type_: Some(button.Submit),
            aria: button.default_aria,
          ),
        ),
      ]),
      submitted_summary(model.submitted_values),
    ],
    footer: None,
  ))
}

fn field(id: String, title: String, children: List(Element(Msg))) -> Element(Msg) {
  h.div([a.class("grid gap-2")], [
    label.label_for(title, id),
    ..children
  ])
}

fn submitted_summary(values: List(#(String, String))) -> Element(Msg) {
  case values {
    [] -> h.p([a.class("text-muted-foreground text-sm")], [
      h.text("Submit the form to see posted values."),
    ])
    _ -> h.ul(
      [a.class("text-sm")],
      values
      |> list.map(fn(pair) {
        let #(name, value) = pair
        h.li([], [h.text(name <> ": " <> value)])
      }),
    )
  }
}
