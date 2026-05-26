import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/breadcrumb
import saola/preview/model.{type Message}

pub fn view_breadcrumbs() -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Breadcrumb")]),
    h.p([a.class("page-description")], [
      text("A navigation trail showing the path to the current page."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Default")]),
        breadcrumb.breadcrumb_simple([
          breadcrumb.BreadcrumbLink("Home", "/"),
          breadcrumb.BreadcrumbLink("Components", "/components"),
          breadcrumb.BreadcrumbPage("Breadcrumb"),
        ]),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Custom separator")]),
        breadcrumb.breadcrumb_full(
          [
            breadcrumb.BreadcrumbLink("Docs", "/docs"),
            breadcrumb.BreadcrumbLink("API", "/docs/api"),
            breadcrumb.BreadcrumbPage("Breadcrumb"),
          ],
          breadcrumb.BreadcrumbAttrs(..breadcrumb.default_attrs, separator: ">"),
        ),
      ]),
    ]),
  ])
}
