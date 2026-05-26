import gleam/list
import gleam/option.{None, Some}
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e
import saola/button
import saola/card
import saola/checkbox
import saola/input
import saola/label
import saola/preview/model.{
  type Message, type Model, FormEmailChanged, FormMessageChanged,
  FormNameChanged, FormSubmitted,
}
import saola/textarea

pub fn view_form_example(model: Model) -> Element(Message) {
  card.card(card.CardAttrs(
    title: "Contact form",
    description: "A small Saola form wired with Lustre messages.",
    content: [
      h.form([a.class("grid gap-4"), e.on_submit(FormSubmitted)], [
        field("name", "Name", [
          input.input_full(
            input.Text,
            Some(input.SyncValue(model.form_name)),
            on_input: Some(FormNameChanged),
            extra_attrs: input.InputExtraAttrs(
              "name",
              "name",
              "Nguyen Van A",
              False,
              True,
              "",
            ),
          ),
        ]),
        field("email", "Email", [
          input.input_full(
            input.Email,
            Some(input.SyncValue(model.form_email)),
            on_input: Some(FormEmailChanged),
            extra_attrs: input.InputExtraAttrs(
              "email",
              "email",
              "you@example.com",
              False,
              True,
              "",
            ),
          ),
        ]),
        field("message", "Message", [
          textarea.textarea_full(
            Some(textarea.SyncValue(model.form_message)),
            on_input: Some(FormMessageChanged),
            extra_attrs: textarea.TextareaExtraAttrs(
              "message",
              "message",
              "How can we help?",
              Some(4),
              False,
              True,
              "",
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
          None,
          button.ButtonExtraAttrs(
            False,
            Some(button.Submit),
            button.default_aria,
          ),
        ),
      ]),
      submitted_summary(model.form_submitted_values),
    ],
    footer: None,
  ))
}

fn field(
  id: String,
  title: String,
  children: List(Element(Message)),
) -> Element(Message) {
  h.div([a.class("grid gap-2")], [label.label_for(title, id), ..children])
}

fn submitted_summary(values: List(#(String, String))) -> Element(Message) {
  case values {
    [] ->
      h.p([a.class("text-muted-foreground text-sm")], [
        h.text("Submit the form to see posted values."),
      ])
    _ ->
      h.ul(
        [a.class("text-sm")],
        values
          |> list.map(fn(pair) {
            let #(name, value) = pair
            h.li([], [h.text(name <> ": " <> value)])
          }),
      )
  }
}
