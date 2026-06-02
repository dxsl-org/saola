import gleam/option.{None}
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/preview/model.{type Message, type Model, SearchQueryChanged}
import saola/search

pub fn view(model: Model) -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Search")]),
    h.p([a.class("page-description")], [
      text("A search input with icon prefix and optional clear button."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Simple")]),
        h.div([a.class("max-w-sm")], [
          search.search_simple(model.search_query, SearchQueryChanged),
        ]),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Clearable")]),
        h.div([a.class("max-w-sm")], [
          search.search_clearable(
            model.search_query,
            SearchQueryChanged,
            SearchQueryChanged(""),
          ),
        ]),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Small size")]),
        h.div([a.class("max-w-sm")], [
          search.search_full(
            search.Small,
            model.search_query,
            SearchQueryChanged,
            None,
            search.default_attrs,
          ),
        ]),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Disabled")]),
        h.div([a.class("max-w-sm")], [
          search.search_full(
            search.Large,
            "",
            SearchQueryChanged,
            None,
            search.SearchAttrs(..search.default_attrs, disabled: True),
          ),
        ]),
      ]),
      h.div([a.class("mt-4")], [
        h.p([a.class("text-muted-foreground text-sm")], [
          text("Current value: \"" <> model.search_query <> "\""),
        ]),
      ]),
    ]),
  ])
}
