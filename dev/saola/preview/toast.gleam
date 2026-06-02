import gleam/option
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/button
import saola/preview/model.{
  type Message, type Model, AddToast, DismissToast, StartedTrial,
}
import saola/toast

pub fn view(model: Model) -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Toasts")]),
    h.p([a.class("page-description")], [
      text(
        "Transient notifications. The consumer manages the list in their model.",
      ),
    ]),
    h.div([a.class("flex gap-3 flex-wrap mt-4")], [
      button.button_primary(
        "Default",
        AddToast(toast.new_toast_simple(
          "Saved!",
          "Your changes have been saved.",
          toast.Default,
        )),
      ),
      button.button_full(
        button.Secondary,
        "Destructive",
        button.Large,
        option.None,
        option.Some(
          AddToast(toast.new_toast_simple(
            "Error",
            "Could not save changes.",
            toast.Destructive,
          )),
        ),
        button.default_extra_attrs,
      ),
      button.button_full(
        button.Secondary,
        "Success",
        button.Large,
        option.None,
        option.Some(
          AddToast(toast.new_toast_simple(
            "Success",
            "Operation completed.",
            toast.Success,
          )),
        ),
        button.default_extra_attrs,
      ),
      button.button_full(
        button.Secondary,
        "Warning",
        button.Large,
        option.None,
        option.Some(
          AddToast(toast.new_toast_simple(
            "Warning",
            "This action may have side effects.",
            toast.Warning,
          )),
        ),
        button.default_extra_attrs,
      ),
      button.button_full(
        button.Secondary,
        "Info",
        button.Large,
        option.None,
        option.Some(
          AddToast(toast.new_toast_simple(
            "Info",
            "Here is some useful information.",
            toast.Info,
          )),
        ),
        button.default_extra_attrs,
      ),
      button.button_full(
        button.Secondary,
        "With Action",
        button.Large,
        option.None,
        option.Some(
          AddToast(toast.new_toast(
            "Start your trial",
            "Get 14 days of Pro features free.",
            toast.Default,
            option.Some(toast.ToastAction("Start trial", StartedTrial)),
          )),
        ),
        button.default_extra_attrs,
      ),
    ]),
    toast.toaster(model.toasts, DismissToast),
  ])
}
