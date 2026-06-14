import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e

pub type AlertDialogAttrs {
  AlertDialogAttrs(class: String)
}

pub const default_attrs = AlertDialogAttrs(class: "")

pub fn alert_dialog(
  open: Bool,
  title: String,
  description: String,
  confirm_label: String,
  cancel_label: String,
  on_confirm: msg,
  on_cancel: msg,
  attrs: AlertDialogAttrs,
) -> Element(msg) {
  case open {
    False -> h.text("")
    True -> {
      let extra_class = case attrs.class {
        "" -> a.none()
        c -> a.class(c)
      }
      h.div(
        [
          a.class("dialog-overlay"),
          a.aria_modal(True),
          a.role("alertdialog"),
          a.aria_labelledby("alert-dialog-title"),
          a.aria_describedby("alert-dialog-desc"),
        ],
        [
          h.div([a.class("dialog"), extra_class], [
            h.div([a.class("dialog-header")], [
              h.h2([a.class("dialog-title"), a.id("alert-dialog-title")], [
                h.text(title),
              ]),
              h.p([a.class("dialog-description"), a.id("alert-dialog-desc")], [
                h.text(description),
              ]),
            ]),
            h.div([a.class("dialog-footer")], [
              h.button(
                [
                  a.type_("button"),
                  a.class("btn btn-outline"),
                  e.on_click(on_cancel),
                ],
                [h.text(cancel_label)],
              ),
              h.button(
                [
                  a.type_("button"),
                  a.class("btn btn-primary"),
                  e.on_click(on_confirm),
                ],
                [h.text(confirm_label)],
              ),
            ]),
          ]),
        ],
      )
    }
  }
}

pub fn alert_dialog_simple(
  open: Bool,
  title: String,
  description: String,
  on_confirm: msg,
  on_cancel: msg,
) -> Element(msg) {
  alert_dialog(
    open,
    title,
    description,
    "Confirm",
    "Cancel",
    on_confirm,
    on_cancel,
    default_attrs,
  )
}
