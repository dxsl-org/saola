import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/preview/model.{type Message, type Model, ToggleGroupChanged}
import saola/toggle_group

pub fn view_toggle_groups(model: Model) -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Toggle Group")]),
    h.p([a.class("page-description")], [
      text("A group of toggle buttons where one or more can be active."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Single select")]),
        toggle_group.toggle_group_simple(
          [
            toggle_group.ToggleGroupItem("left", "Left"),
            toggle_group.ToggleGroupItem("center", "Center"),
            toggle_group.ToggleGroupItem("right", "Right"),
          ],
          model.toggle_group_selected,
          ToggleGroupChanged,
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Multi select")]),
        toggle_group.toggle_group_full(
          [
            toggle_group.ToggleGroupItem("bold", "B"),
            toggle_group.ToggleGroupItem("italic", "I"),
            toggle_group.ToggleGroupItem("underline", "U"),
            toggle_group.ToggleGroupItemDisabled("strike", "S"),
          ],
          model.toggle_group_selected,
          ToggleGroupChanged,
          toggle_group.ToggleGroupAttrs(
            ..toggle_group.default_attrs,
            group_type: toggle_group.MultiSelect,
          ),
        ),
      ]),
    ]),
  ])
}
