import gleam/int
import gleam/list
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e

pub type PaginationAttrs {
  PaginationAttrs(
    show_prev_next: Bool,
    prev_label: String,
    next_label: String,
    class: String,
  )
}

pub const default_attrs = PaginationAttrs(
  show_prev_next: True,
  prev_label: "Previous",
  next_label: "Next",
  class: "",
)

fn pages_list(from: Int, to: Int) -> List(Int) {
  case from > to {
    True -> []
    False -> [from, ..pages_list(from + 1, to)]
  }
}

pub fn pagination(
  current_page: Int,
  total_pages: Int,
  on_change: fn(Int) -> msg,
  attrs: PaginationAttrs,
) -> Element(msg) {
  let extra_class = case attrs.class {
    "" -> a.none()
    c -> a.class(c)
  }
  let page_buttons =
    pages_list(1, total_pages)
    |> list.map(fn(page) {
      let is_current = page == current_page
      h.button(
        [
          a.type_("button"),
          a.class(case is_current {
            True -> "btn btn-sm btn-primary"
            False -> "btn btn-sm btn-ghost"
          }),
          a.aria_label("Page " <> int.to_string(page)),
          case is_current {
            True -> a.aria_current("page")
            False -> a.none()
          },
          e.on_click(on_change(page)),
        ],
        [h.text(int.to_string(page))],
      )
    })
  let prev_btn = case attrs.show_prev_next {
    False -> []
    True -> [
      h.button(
        [
          a.type_("button"),
          a.class("btn btn-sm btn-ghost"),
          a.aria_label(attrs.prev_label),
          case current_page <= 1 {
            True -> a.disabled(True)
            False -> a.none()
          },
          e.on_click(on_change(current_page - 1)),
        ],
        [h.text(attrs.prev_label)],
      ),
    ]
  }
  let next_btn = case attrs.show_prev_next {
    False -> []
    True -> [
      h.button(
        [
          a.type_("button"),
          a.class("btn btn-sm btn-ghost"),
          a.aria_label(attrs.next_label),
          case current_page >= total_pages {
            True -> a.disabled(True)
            False -> a.none()
          },
          e.on_click(on_change(current_page + 1)),
        ],
        [h.text(attrs.next_label)],
      ),
    ]
  }
  h.nav(
    [
      a.class("pagination"),
      extra_class,
      a.aria_label("Pagination"),
      a.role("navigation"),
    ],
    list.flatten([prev_btn, page_buttons, next_btn]),
  )
}

pub fn pagination_simple(
  current_page: Int,
  total_pages: Int,
  on_change: fn(Int) -> msg,
) -> Element(msg) {
  pagination(current_page, total_pages, on_change, default_attrs)
}
