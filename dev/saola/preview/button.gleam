import gleam/option.{None, Some}
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h

import saola/button
import saola/icon/lc
import saola/preview/model.{type Msg, Home, OnRouteChange}

pub fn view_buttons() -> Element(Msg) {
  let attrs_disabled =
    button.ButtonExtraAttrs(True, None, button.default_aria)
  let attrs_submit =
    button.ButtonExtraAttrs(False, Some(button.Submit), button.default_aria)
  let attrs_reset =
    button.ButtonExtraAttrs(False, Some(button.Reset), button.default_aria)
  let attrs_aria_label =
    button.ButtonExtraAttrs(
      False,
      None,
      button.ButtonAria("Save changes", None),
    )
  let attrs_aria_expanded =
    button.ButtonExtraAttrs(
      False,
      None,
      button.ButtonAria("Expand menu", Some(True)),
    )

  h.div([], [
    h.h1([a.class("page-title")], [text("Buttons")]),
    h.p([a.class("page-description")], [
      text("Showcase of different button styles and sizes."),
    ]),
    h.h2([], [text("Basic")]),
    h.div([a.class("button-grid")], [
      button.button_primary("Primary Button", OnRouteChange(Home)),
      button.button_full(
        button.Secondary,
        "Secondary Button",
        button.Large,
        None,
        button.default_extra_attrs,
      ),
      button.button_full(
        button.WithIcon(lc.check([])),
        "With Icon",
        button.Large,
        None,
        button.default_extra_attrs,
      ),
      button.button_full(
        button.Primary,
        "Small Primary",
        button.Small,
        None,
        button.default_extra_attrs,
      ),
      button.button_close(OnRouteChange(Home)),
    ]),
    h.h2([a.class("mt-4")], [text("Disabled")]),
    h.div([a.class("button-grid")], [
      button.button_full(
        button.Primary,
        "Disabled Primary",
        button.Large,
        None,
        attrs_disabled,
      ),
      button.button_full(
        button.Secondary,
        "Disabled Secondary",
        button.Large,
        None,
        attrs_disabled,
      ),
      button.button_full(
        button.WithIcon(lc.check([])),
        "Disabled Icon",
        button.Large,
        None,
        attrs_disabled,
      ),
    ]),
    h.h2([a.class("mt-4")], [text("Button Types")]),
    h.div([a.class("button-grid")], [
      button.button_full(
        button.Primary,
        "Submit",
        button.Large,
        None,
        attrs_submit,
      ),
      button.button_full(
        button.Primary,
        "Reset",
        button.Large,
        None,
        attrs_reset,
      ),
    ]),
    h.h2([a.class("mt-4")], [text("Accessibility (ARIA)")]),
    h.div([a.class("button-grid")], [
      button.button_full(
        button.Primary,
        "Save",
        button.Large,
        None,
        attrs_aria_label,
      ),
      button.button_full(
        button.WithIcon(lc.chevron_down([])),
        "Menu",
        button.Large,
        None,
        attrs_aria_expanded,
      ),
    ]),
  ])
}
