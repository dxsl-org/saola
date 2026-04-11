import gleam/option.{None, Some}
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h

import saola/buttons
import saola/icons/lc
import saola/preview/models.{type Msg, Home, OnRouteChange}

pub fn view_buttons() -> Element(Msg) {
  let attrs_disabled =
    buttons.ButtonExtraAttrs(True, None, buttons.default_aria)
  let attrs_submit =
    buttons.ButtonExtraAttrs(False, Some(buttons.Submit), buttons.default_aria)
  let attrs_reset =
    buttons.ButtonExtraAttrs(False, Some(buttons.Reset), buttons.default_aria)
  let attrs_aria_label =
    buttons.ButtonExtraAttrs(
      False,
      None,
      buttons.ButtonAria("Save changes", None),
    )
  let attrs_aria_expanded =
    buttons.ButtonExtraAttrs(
      False,
      None,
      buttons.ButtonAria("Expand menu", Some(True)),
    )

  h.div([], [
    h.h1([a.class("page-title")], [text("Buttons")]),
    h.p([a.class("page-description")], [
      text("Showcase of different button styles and sizes."),
    ]),
    h.h2([], [text("Basic")]),
    h.div([a.class("button-grid")], [
      buttons.button_primary("Primary Button", OnRouteChange(Home)),
      buttons.button_full(
        buttons.Secondary,
        "Secondary Button",
        buttons.Large,
        None,
        buttons.default_extra_attrs,
      ),
      buttons.button_full(
        buttons.WithIcon(lc.check([])),
        "With Icon",
        buttons.Large,
        None,
        buttons.default_extra_attrs,
      ),
      buttons.button_full(
        buttons.Primary,
        "Small Primary",
        buttons.Small,
        None,
        buttons.default_extra_attrs,
      ),
      buttons.button_close(OnRouteChange(Home)),
    ]),
    h.h2([a.class("mt-4")], [text("Disabled")]),
    h.div([a.class("button-grid")], [
      buttons.button_full(
        buttons.Primary,
        "Disabled Primary",
        buttons.Large,
        None,
        attrs_disabled,
      ),
      buttons.button_full(
        buttons.Secondary,
        "Disabled Secondary",
        buttons.Large,
        None,
        attrs_disabled,
      ),
      buttons.button_full(
        buttons.WithIcon(lc.check([])),
        "Disabled Icon",
        buttons.Large,
        None,
        attrs_disabled,
      ),
    ]),
    h.h2([a.class("mt-4")], [text("Button Types")]),
    h.div([a.class("button-grid")], [
      buttons.button_full(
        buttons.Primary,
        "Submit",
        buttons.Large,
        None,
        attrs_submit,
      ),
      buttons.button_full(
        buttons.Primary,
        "Reset",
        buttons.Large,
        None,
        attrs_reset,
      ),
    ]),
    h.h2([a.class("mt-4")], [text("Accessibility (ARIA)")]),
    h.div([a.class("button-grid")], [
      buttons.button_full(
        buttons.Primary,
        "Save",
        buttons.Large,
        None,
        attrs_aria_label,
      ),
      buttons.button_full(
        buttons.WithIcon(lc.chevron_down([])),
        "Menu",
        buttons.Large,
        None,
        attrs_aria_expanded,
      ),
    ]),
  ])
}
