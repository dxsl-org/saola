import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/preview/model.{
  type Message, type Model, ToggleBoldChanged, ToggleItalicChanged,
}
import saola/toggle

pub fn view_toggles(model: Model) -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Toggle")]),
    h.p([a.class("page-description")], [
      text("A two-state button that can be on or off."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Default")]),
        h.div([a.class("flex gap-2")], [
          toggle.toggle_simple(model.toggle_bold, "Bold", ToggleBoldChanged),
          toggle.toggle_simple(
            model.toggle_italic,
            "Italic",
            ToggleItalicChanged,
          ),
        ]),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Outline variant")]),
        h.div([a.class("flex gap-2")], [
          toggle.toggle_full(
            model.toggle_bold,
            "Bold",
            ToggleBoldChanged,
            toggle.ToggleAttrs(..toggle.default_attrs, variant: toggle.Outline),
          ),
          toggle.toggle_full(
            model.toggle_italic,
            "Italic",
            ToggleItalicChanged,
            toggle.ToggleAttrs(..toggle.default_attrs, variant: toggle.Outline),
          ),
        ]),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Sizes")]),
        h.div([a.class("flex gap-2 items-center")], [
          toggle.toggle_full(
            False,
            "Small",
            fn(_) { ToggleBoldChanged(model.toggle_bold) },
            toggle.ToggleAttrs(..toggle.default_attrs, size: toggle.Small),
          ),
          toggle.toggle_full(
            True,
            "Medium",
            fn(_) { ToggleBoldChanged(model.toggle_bold) },
            toggle.default_attrs,
          ),
          toggle.toggle_full(
            False,
            "Large",
            fn(_) { ToggleBoldChanged(model.toggle_bold) },
            toggle.ToggleAttrs(..toggle.default_attrs, size: toggle.Large),
          ),
        ]),
      ]),
    ]),
  ])
}
