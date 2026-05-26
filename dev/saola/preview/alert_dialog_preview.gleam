import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import lustre/event as e
import saola/alert_dialog
import saola/preview/model.{
  type Message, type Model, AlertDialogCancelled, AlertDialogConfirmed,
  AlertDialogOpened,
}

pub fn view_alert_dialogs(model: Model) -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Alert Dialog")]),
    h.p([a.class("page-description")], [
      text("A modal dialog that interrupts the user with important content."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Destructive action")]),
        h.button(
          [
            a.type_("button"),
            a.class("btn btn-destructive"),
            e.on_click(AlertDialogOpened),
          ],
          [text("Delete account")],
        ),
        alert_dialog.alert_dialog_simple(
          model.alert_dialog_open,
          "Are you absolutely sure?",
          "This action cannot be undone. This will permanently delete your account.",
          AlertDialogConfirmed,
          AlertDialogCancelled,
        ),
      ]),
    ]),
  ])
}
