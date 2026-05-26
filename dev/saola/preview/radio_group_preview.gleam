import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/preview/model.{type Message, type Model, ToggleBoldChanged}
import saola/radio_group

pub fn view_radio_groups(model: Model) -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Radio Group")]),
    h.p([a.class("page-description")], [
      text(
        "A set of checkable buttons where only one can be checked at a time.",
      ),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Vertical (default)")]),
        radio_group.radio_group_simple(
          options: [
            radio_group.RadioOption("light", "Light"),
            radio_group.RadioOption("dark", "Dark"),
            radio_group.RadioOption("system", "System"),
          ],
          value: model.toggle_bold
            |> fn(b) {
              case b {
                True -> "dark"
                False -> "light"
              }
            },
          name: "theme",
          on_change: fn(v) { ToggleBoldChanged(v == "dark") },
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Horizontal")]),
        radio_group.radio_group_full(
          [
            radio_group.RadioOption("xs", "XS"),
            radio_group.RadioOption("sm", "SM"),
            radio_group.RadioOption("md", "MD"),
            radio_group.RadioOption("lg", "LG"),
            radio_group.RadioOptionDisabled("xl", "XL"),
          ],
          "md",
          fn(_) { ToggleBoldChanged(model.toggle_bold) },
          radio_group.RadioGroupAttrs(
            ..radio_group.default_attrs,
            orientation: radio_group.Horizontal,
            name: "size",
          ),
        ),
      ]),
    ]),
  ])
}
