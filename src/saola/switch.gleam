import gleam/result
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e
import typeid

pub const class_input = "input"

pub const class_label = "label"

pub type SwitchStatus {
  /// Seeds the checked state once. Use with the `formal` library.
  InitChecked(Bool)
  /// Kept in sync with the app model. Use for controlled inputs.
  SyncChecked(Bool)
}

pub type SwitchExtraAttrs {
  SwitchExtraAttrs(id: String, name: String, disabled: Bool, class: String)
}

pub const default_extra_attrs = SwitchExtraAttrs(
  id: "",
  name: "",
  disabled: False,
  class: "",
)

/// Fully customizable switch (toggle).
pub fn switch_full(
  label: String,
  status: SwitchStatus,
  on_change on_change: fn(Bool) -> msg,
  extra_attrs extra_attrs: SwitchExtraAttrs,
) -> Element(msg) {
  let SwitchExtraAttrs(id:, name:, disabled:, class:) = extra_attrs
  let input_id =
    case id {
      "" ->
        typeid.new(prefix: "sw") |> result.map(typeid.to_string)
      v -> Ok(v)
    }
    |> result.unwrap("switch-fallback")
  let label_class = case class {
    "" -> class_label
    c -> class_label <> " " <> c
  }
  h.label([a.class(label_class <> " gap-3 cursor-pointer")], [
    h.input([
      a.type_("checkbox"),
      a.role("switch"),
      a.class(class_input),
      a.id(input_id),
      case name {
        "" -> a.none()
        n -> a.name(n)
      },
      case status {
        InitChecked(v) -> a.default_checked(v)
        SyncChecked(v) -> a.checked(v)
      },
      case disabled {
        True -> a.disabled(True)
        False -> a.none()
      },
      e.on_check(on_change),
    ]),
    h.text(label),
  ])
}

pub fn switch_simple(
  label: String,
  checked: Bool,
  on_change: fn(Bool) -> msg,
) -> Element(msg) {
  switch_full(
    label,
    SyncChecked(checked),
    on_change: on_change,
    extra_attrs: default_extra_attrs,
  )
}
