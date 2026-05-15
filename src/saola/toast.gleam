import gleam/list
import gleam/result
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e
import saola/icon/lx
import typeid

pub type ToastVariant {
  Default
  Destructive
}

pub type Toast {
  Toast(
    id: String,
    title: String,
    description: String,
    variant: ToastVariant,
  )
}

/// Create a new toast with an auto-generated ID.
///
/// Example:
/// ```gleam
/// new_toast("Saved!", "Your changes have been saved.", Default)
/// new_toast("Error", "Could not save changes.", Destructive)
/// ```
pub fn new_toast(
  title: String,
  description: String,
  variant: ToastVariant,
) -> Toast {
  let id =
    typeid.new(prefix: "toast")
    |> result.map(typeid.to_string)
    |> result.unwrap("toast")
  Toast(id:, title:, description:, variant:)
}

fn render_toast(toast: Toast, on_dismiss: fn(String) -> msg) -> Element(msg) {
  let variant_class = case toast.variant {
    Default -> ""
    Destructive -> " toast-destructive"
  }
  let title_el = case toast.title {
    "" -> element.none()
    t -> h.h2([], [h.text(t)])
  }
  let desc_el = case toast.description {
    "" -> element.none()
    d -> h.p([], [h.text(d)])
  }
  let dismiss_btn =
    h.button(
      [
        a.type_("button"),
        a.class("btn-sm-icon-outline"),
        a.aria_label("Dismiss"),
        e.on_click(on_dismiss(toast.id)),
      ],
      [lx.x([])],
    )
  h.div([a.class("toast" <> variant_class)], [
    h.div([a.class("toast-content")], [
      h.section([], [title_el, desc_el]),
      h.footer([], [dismiss_btn]),
    ]),
  ])
}

/// Render the toast container. Place once near the root of your view.
/// `on_dismiss` receives the toast ID — remove it from your model's toast list.
///
/// NOTE: Auto-dismiss timers are the consumer's responsibility (use Lustre effects).
///
/// Example:
/// ```gleam
/// // In your model
/// toasts: List(toast.Toast)
///
/// // In your update
/// DismissToast(id) -> #(Model(..model, toasts: list.filter(model.toasts, fn(t) { t.id != id })), effect.none())
///
/// // In your view
/// toast.toaster(model.toasts, DismissToast)
/// ```
pub fn toaster(
  toasts: List(Toast),
  on_dismiss: fn(String) -> msg,
) -> Element(msg) {
  h.div(
    [a.class("toaster"), a.aria_live("polite"), a.aria_atomic(False)],
    toasts |> list.reverse |> list.map(fn(t) { render_toast(t, on_dismiss) }),
  )
}
