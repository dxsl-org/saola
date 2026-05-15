import gleam/option
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/button
import saola/preview/model.{type Model, type Msg, AddToast, DismissToast}
import saola/toast

pub fn view_toasts(model: Model) -> Element(Msg) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Toasts")]),
    h.p([a.class("page-description")], [
      text("Transient notifications. The consumer manages the list in their model."),
    ]),
    h.div([a.class("flex gap-3 flex-wrap mt-4")], [
      button.button_primary(
        "Add Default Toast",
        AddToast(toast.new_toast("Saved!", "Your changes have been saved.", toast.Default)),
      ),
      button.button_full(
        button.Secondary,
        "Add Destructive Toast",
        button.Large,
        option.Some(
          AddToast(toast.new_toast("Error", "Could not save changes.", toast.Destructive)),
        ),
        button.default_extra_attrs,
      ),
    ]),
    toast.toaster(model.toasts, DismissToast),
  ])
}
