import gleam/option.{None, Some}
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h

import saola/button
import saola/icon/lc
import saola/preview/model.{type Message, Home, OnRouteChange}

pub fn view_buttons() -> Element(Message) {
  let attrs_disabled = button.ButtonExtraAttrs(True, None, button.default_aria)
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
    h.h2([], [text("Variants")]),
    h.div([a.class("button-grid")], [
      button.button_primary("Primary", OnRouteChange(Home)),
      button.button_secondary("Secondary", OnRouteChange(Home)),
      button.button_outline("Outline", OnRouteChange(Home)),
      button.button_ghost("Ghost", OnRouteChange(Home)),
      button.button_destructive("Destructive", OnRouteChange(Home)),
      button.button_full(
        button.Link,
        "Link",
        button.Large,
        None,
        Some(OnRouteChange(Home)),
        button.default_extra_attrs,
      ),
    ]),
    h.h2([a.class("mt-4")], [text("With icon")]),
    h.div([a.class("button-grid")], [
      button.button_full(
        button.Outline,
        "Check",
        button.Large,
        Some(lc.check([])),
        Some(OnRouteChange(Home)),
        button.default_extra_attrs,
      ),
      button.button_full(
        button.Secondary,
        "Menu",
        button.Large,
        Some(lc.chevron_down([])),
        Some(OnRouteChange(Home)),
        attrs_aria_expanded,
      ),
      button.button_close(OnRouteChange(Home)),
    ]),
    h.h2([a.class("mt-4")], [text("Sizes")]),
    h.div([a.class("button-grid")], [
      button.button_full(
        button.Primary,
        "Large",
        button.Large,
        None,
        None,
        button.default_extra_attrs,
      ),
      button.button_full(
        button.Primary,
        "Small",
        button.Small,
        None,
        None,
        button.default_extra_attrs,
      ),
    ]),
    h.h2([a.class("mt-4")], [text("Disabled")]),
    h.div([a.class("button-grid")], [
      button.button_full(
        button.Primary,
        "Disabled Primary",
        button.Large,
        None,
        None,
        attrs_disabled,
      ),
      button.button_full(
        button.Secondary,
        "Disabled Secondary",
        button.Large,
        None,
        None,
        attrs_disabled,
      ),
      button.button_full(
        button.Outline,
        "Disabled Icon",
        button.Large,
        Some(lc.check([])),
        None,
        attrs_disabled,
      ),
    ]),
    h.h2([a.class("mt-4")], [text("Form types")]),
    h.div([a.class("button-grid")], [
      button.button_submit("Submit"),
      button.button_full(
        button.Primary,
        "Reset",
        button.Large,
        None,
        None,
        button.ButtonExtraAttrs(False, Some(button.Reset), button.default_aria),
      ),
    ]),
    h.h2([a.class("mt-4")], [text("Accessibility (ARIA)")]),
    h.div([a.class("button-grid")], [
      button.button_full(
        button.Primary,
        "Save",
        button.Large,
        None,
        None,
        attrs_aria_label,
      ),
    ]),
  ])
}
