import gleam/option.{type Option, None, Some}
import gleam/result
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import saola/button
import typeid

/// Configuration for the dialog widget.
pub type DialogAttrs(msg) {
  DialogAttrs(
    title: String,
    description: String,
    content: List(Element(msg)),
    footer: Option(Element(msg)),
    show_close_button: Bool,
    on_close: msg,
  )
}

/// Render a dialog modal.
///
/// Uses the native `<dialog>` element with `open` attribute.
/// The `::backdrop` overlay is provided by the browser.
///
/// NOTE: `is_open` controls visibility. The consumer must dispatch a message
/// to set `is_open = False` when the dialog should close.
///
/// Example:
/// ```gleam
/// dialog_full(
///   is_open: model.dialog_open,
///   attrs: DialogAttrs(
///     title: "Are you sure?",
///     description: "This action cannot be undone.",
///     content: [],
///     footer: Some(h.div([], [button.button_primary("Confirm", UserConfirmed)])),
///     show_close_button: True,
///     on_close: CloseDialog,
///   ),
/// )
/// ```
pub fn dialog_full(
  is_open is_open: Bool,
  attrs attrs: DialogAttrs(msg),
) -> Element(msg) {
  let DialogAttrs(title:, description:, content:, footer:, show_close_button:, on_close:) =
    attrs
  let title_id =
    typeid.new(prefix: "dlg")
    |> result.map(typeid.to_string)
    |> result.unwrap("dlg-title")
  let open_attr = case is_open {
    True -> a.attribute("open", "")
    False -> a.none()
  }
  let labelledby_attr = case title {
    "" -> a.none()
    _ -> a.aria_labelledby(title_id)
  }
  let close_btn = case show_close_button {
    False -> element.none()
    True -> button.button_close(on_close)
  }
  let header_el = case title, description {
    "", "" -> element.none()
    _, _ -> {
      let title_el = case title {
        "" -> element.none()
        t -> h.h2([a.id(title_id)], [h.text(t)])
      }
      let desc_el = case description {
        "" -> element.none()
        d -> h.p([], [h.text(d)])
      }
      h.header([], [title_el, desc_el])
    }
  }
  let content_el = case content {
    [] -> element.none()
    children -> h.section([], children)
  }
  let footer_el = case footer {
    None -> element.none()
    Some(f) -> h.footer([], [f])
  }
  h.dialog([a.class("dialog"), open_attr, a.aria_modal(True), labelledby_attr], [
    h.div([], [close_btn, header_el, content_el, footer_el]),
  ])
}

/// Simple dialog with title, content, and a close button.
pub fn dialog_simple(
  is_open is_open: Bool,
  title title: String,
  content content: List(Element(msg)),
  on_close on_close: msg,
) -> Element(msg) {
  dialog_full(
    is_open: is_open,
    attrs: DialogAttrs(
      title: title,
      description: "",
      content: content,
      footer: None,
      show_close_button: True,
      on_close: on_close,
    ),
  )
}
