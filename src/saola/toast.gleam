import gleam/list
import gleam/option.{type Option, None, Some}
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
  Success
  Warning
  Info
}

pub type ToastAction(msg) {
  ToastAction(label: String, on_click: msg)
}

pub type Toast(msg) {
  Toast(
    id: String,
    title: String,
    description: String,
    variant: ToastVariant,
    action: Option(ToastAction(msg)),
  )
}

pub fn new_toast(
  title: String,
  description: String,
  variant: ToastVariant,
  action: Option(ToastAction(msg)),
) -> Toast(msg) {
  let id =
    typeid.new(prefix: "toast")
    |> result.map(typeid.to_string)
    |> result.unwrap("toast")
  Toast(id:, title:, description:, variant:, action:)
}

pub fn new_toast_simple(
  title: String,
  description: String,
  variant: ToastVariant,
) -> Toast(msg) {
  new_toast(title, description, variant, None)
}

fn variant_class(v: ToastVariant) -> String {
  case v {
    Default -> ""
    Destructive -> " toast-destructive"
    Success -> " toast-success"
    Warning -> " toast-warning"
    Info -> " toast-info"
  }
}

fn render_action(action: Option(ToastAction(msg))) -> Element(msg) {
  case action {
    None -> element.none()
    Some(act) ->
      h.button(
        [
          a.type_("button"),
          a.class("btn-sm"),
          a.data("toast-action", ""),
          e.on_click(act.on_click),
        ],
        [h.text(act.label)],
      )
  }
}

fn render_toast(
  toast: Toast(msg),
  on_dismiss: fn(String) -> msg,
) -> Element(msg) {
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
        a.data("toast-cancel", ""),
        e.on_click(on_dismiss(toast.id)),
      ],
      [lx.x([])],
    )
  h.div([a.class("toast" <> variant_class(toast.variant))], [
    h.div([a.class("toast-content")], [
      h.section([], [title_el, desc_el]),
      h.footer([], [render_action(toast.action), dismiss_btn]),
    ]),
  ])
}

pub fn toaster(
  toasts: List(Toast(msg)),
  on_dismiss: fn(String) -> msg,
) -> Element(msg) {
  h.div(
    [a.class("toaster"), a.aria_live("polite"), a.aria_atomic(False)],
    toasts |> list.reverse |> list.map(fn(t) { render_toast(t, on_dismiss) }),
  )
}
