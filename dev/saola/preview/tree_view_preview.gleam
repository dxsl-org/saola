import gleam/option.{None, Some}
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/preview/model.{type Message, type Model, TreeNodeToggled}
import saola/tree_view

pub fn view_tree_views(model: Model) -> Element(Message) {
  let items = [
    tree_view.TreeItem(id: "src", label: "src", icon: None, children: [
      tree_view.TreeItem(id: "src-saola", label: "saola", icon: None, children: [
        tree_view.TreeItem(
          id: "button-gleam",
          label: "button.gleam",
          icon: None,
          children: [],
        ),
        tree_view.TreeItem(
          id: "input-gleam",
          label: "input.gleam",
          icon: None,
          children: [],
        ),
      ]),
      tree_view.TreeItem(
        id: "main-gleam",
        label: "main.gleam",
        icon: None,
        children: [],
      ),
    ]),
    tree_view.TreeItem(id: "test", label: "test", icon: None, children: [
      tree_view.TreeItem(
        id: "widget-tests",
        label: "widget_tests.gleam",
        icon: None,
        children: [],
      ),
    ]),
    tree_view.TreeItem(
      id: "gleam-toml",
      label: "gleam.toml",
      icon: None,
      children: [],
    ),
  ]

  h.div([], [
    h.h1([a.class("page-title")], [text("Tree View")]),
    h.p([a.class("page-description")], [
      text(
        "A collapsible tree widget for hierarchical data. Click folders to expand/collapse.",
      ),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("File tree")]),
        h.div([a.class("max-w-xs border rounded-md p-2")], [
          tree_view.tree_view_simple(
            items,
            model.tree_open_ids,
            TreeNodeToggled,
          ),
        ]),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("With select callback")]),
        h.div([a.class("max-w-xs border rounded-md p-2")], [
          tree_view.tree_view_full(
            items,
            model.tree_open_ids,
            TreeNodeToggled,
            Some(fn(_id) { TreeNodeToggled("") }),
            tree_view.default_attrs,
          ),
        ]),
      ]),
    ]),
  ])
}
