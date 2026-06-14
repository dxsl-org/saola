import gleam/int
import gleam/list
import gleam/option.{type Option, None, Some}
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e

pub type RatingMode {
  ReadOnly
  Interactive
}

pub type RatingAttrs {
  RatingAttrs(max: Int, class: String, aria_label: String)
}

pub const default_attrs = RatingAttrs(max: 5, class: "", aria_label: "Rating")

/// Star rating widget.
///
/// - `value`: current rating (0–max)
/// - `on_change`: `None` in read-only mode; `Some(fn)` makes stars interactive
pub fn rating(
  value: Int,
  mode: RatingMode,
  on_change: Option(fn(Int) -> msg),
  attrs: RatingAttrs,
) -> Element(msg) {
  let stars = range(1, attrs.max)
  let root_class = case attrs.class {
    "" -> "rating"
    c -> "rating " <> c
  }
  case mode {
    ReadOnly ->
      h.div(
        [
          a.class(root_class <> " rating-readonly"),
          a.role("img"),
          a.aria_label(
            attrs.aria_label
            <> ": "
            <> int.to_string(value)
            <> " out of "
            <> int.to_string(attrs.max),
          ),
        ],
        list.map(stars, fn(n) {
          h.span(
            [
              a.class(case n <= value {
                True -> "rating-star rating-star-filled"
                False -> "rating-star"
              }),
              a.aria_hidden(True),
            ],
            [h.text("★")],
          )
        }),
      )
    Interactive ->
      h.div(
        [
          a.class(root_class),
          a.role("group"),
          a.aria_label(attrs.aria_label),
        ],
        list.map(stars, fn(n) {
          let cb = case on_change {
            None -> a.none()
            Some(f) -> e.on_click(f(n))
          }
          h.button(
            [
              a.type_("button"),
              a.class(case n <= value {
                True -> "rating-star rating-star-filled"
                False -> "rating-star"
              }),
              a.aria_label(
                int.to_string(n) <> " out of " <> int.to_string(attrs.max),
              ),
              cb,
            ],
            [h.text("★")],
          )
        }),
      )
  }
}

pub fn rating_readonly(value: Int) -> Element(msg) {
  rating(value, ReadOnly, None, default_attrs)
}

pub fn rating_interactive(
  value: Int,
  on_change: fn(Int) -> msg,
) -> Element(msg) {
  rating(value, Interactive, Some(on_change), default_attrs)
}

fn range(from: Int, to: Int) -> List(Int) {
  case from > to {
    True -> []
    False -> [from, ..range(from + 1, to)]
  }
}
