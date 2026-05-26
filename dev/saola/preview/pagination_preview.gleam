import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/pagination
import saola/preview/model.{type Message, type Model, PaginationChanged}

pub fn view_paginations(model: Model) -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Pagination")]),
    h.p([a.class("page-description")], [
      text("Navigation for splitting content across multiple pages."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Default")]),
        pagination.pagination_simple(
          model.pagination_page,
          5,
          PaginationChanged,
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Without prev/next")]),
        pagination.pagination_full(
          model.pagination_page,
          5,
          PaginationChanged,
          pagination.PaginationAttrs(
            ..pagination.default_attrs,
            show_prev_next: False,
          ),
        ),
      ]),
    ]),
  ])
}
