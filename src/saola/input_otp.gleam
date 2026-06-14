import gleam/int
import gleam/list
import gleam/result
import gleam/string
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e

pub type InputOtpAttrs {
  InputOtpAttrs(length: Int, disabled: Bool, class: String)
}

pub const default_attrs = InputOtpAttrs(length: 6, disabled: False, class: "")

fn slot_indices(length: Int) -> List(Int) {
  case length <= 0 {
    True -> []
    False -> slot_indices_from(0, length)
  }
}

fn slot_indices_from(current: Int, max: Int) -> List(Int) {
  case current >= max {
    True -> []
    False -> [current, ..slot_indices_from(current + 1, max)]
  }
}

fn char_at(chars: List(String), idx: Int) -> String {
  chars
  |> list.drop(idx)
  |> list.first
  |> result.unwrap("")
}

/// Render an OTP input group.
/// `value` is the current string (up to `attrs.length` chars).
/// `on_change` fires with the new string when any slot changes.
pub fn input_otp(
  value: String,
  on_change: fn(String) -> msg,
  attrs: InputOtpAttrs,
) -> Element(msg) {
  let chars = string.to_graphemes(value)
  let extra_class = case attrs.class {
    "" -> a.none()
    c -> a.class(c)
  }
  let slots =
    slot_indices(attrs.length)
    |> list.map(fn(idx) {
      let slot_val = char_at(chars, idx)
      h.input([
        a.type_("text"),
        a.class("input input-otp-slot"),
        a.id("otp-slot-" <> int.to_string(idx)),
        a.value(slot_val),
        a.maxlength(1),
        a.inputmode("numeric"),
        a.autocomplete("one-time-code"),
        a.aria_label("Digit " <> int.to_string(idx + 1)),
        case attrs.disabled {
          True -> a.disabled(True)
          False -> a.none()
        },
        e.on_input(fn(new_char) {
          let before = list.take(chars, idx)
          let after = list.drop(chars, idx + 1)
          let new_chars = list.flatten([before, [new_char], after])
          on_change(string.join(new_chars, ""))
        }),
      ])
    })
  h.div(
    [
      a.class("input-otp"),
      extra_class,
      a.aria_label("One-time password"),
    ],
    slots,
  )
}

pub fn input_otp_simple(
  value: String,
  on_change: fn(String) -> msg,
) -> Element(msg) {
  input_otp(value, on_change, default_attrs)
}
