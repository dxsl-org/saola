import gleam/option
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/button
import saola/dialog
import saola/preview/model.{type Model, type Msg, CloseDialog, OpenDialog}

pub fn view_dialogs(model: Model) -> Element(Msg) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Dialogs")]),
    h.p([a.class("page-description")], [
      text("Modal dialogs for focused interactions."),
    ]),
    h.div([a.class("mt-4")], [
      button.button_primary("Open Dialog", OpenDialog),
    ]),
    dialog.dialog_full(
      is_open: model.is_dialog_open,
      attrs: dialog.DialogAttrs(
        title: "Are you sure?",
        description: "This action cannot be undone. This will permanently delete your account and remove your data from our servers.",
        content: [],
        footer: option.Some(
          h.div([a.class("flex gap-2")], [
            button.button_full(
              button.Secondary,
              "Cancel",
              button.Large,
              option.Some(CloseDialog),
              button.default_extra_attrs,
            ),
            button.button_full(
              button.Primary,
              "Continue",
              button.Large,
              option.Some(CloseDialog),
              button.default_extra_attrs,
            ),
          ]),
        ),
        show_close_button: True,
        on_close: CloseDialog,
      ),
    ),
  ])
}
