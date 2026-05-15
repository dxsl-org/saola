import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/preview/model.{type Msg, SwitchToggled}
import saola/switch

pub fn view_switches(notifications: Bool, marketing: Bool) -> Element(Msg) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Switch")]),
    h.p([a.class("page-description")], [
      text("A toggle switch for boolean on/off settings."),
    ]),
    h.div([a.class("mt-4 grid gap-4")], [
      switch.switch_simple("Enable notifications", notifications, fn(v) {
        SwitchToggled("notifications", v)
      }),
      switch.switch_simple("Marketing emails", marketing, fn(v) {
        SwitchToggled("marketing", v)
      }),
      switch.switch_full(
        "Disabled switch",
        switch.InitChecked(True),
        on_change: fn(v) { SwitchToggled("disabled", v) },
        extra_attrs: switch.SwitchExtraAttrs(
          ..switch.default_extra_attrs,
          disabled: True,
        ),
      ),
    ]),
  ])
}
