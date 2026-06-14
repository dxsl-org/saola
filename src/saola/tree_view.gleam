import gleam/int
import gleam/list
import gleam/option.{type Option, None, Some}
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e

pub type TreeItem(msg) {
  TreeItem(
    id: String,
    label: String,
    icon: Option(Element(msg)),
    children: List(TreeItem(msg)),
  )
}

pub type TreeViewAttrs {
  TreeViewAttrs(class: String)
}

pub const default_attrs = TreeViewAttrs(class: "")

/// Collapsible tree widget. Consumer owns which node IDs are open.
///
/// - `open_ids`: list of node IDs currently expanded
/// - `on_toggle`: dispatched when a node's expand/collapse is toggled
/// - `on_select`: dispatched when a leaf node is activated (optional)
pub fn tree_view(
  items: List(TreeItem(msg)),
  open_ids: List(String),
  on_toggle: fn(String) -> msg,
  on_select: Option(fn(String) -> msg),
  attrs: TreeViewAttrs,
) -> Element(msg) {
  let root_class = case attrs.class {
    "" -> "tree-view"
    c -> "tree-view " <> c
  }
  h.ul(
    [a.class(root_class), a.role("tree")],
    list.map(items, fn(item) {
      render_node(item, open_ids, on_toggle, on_select, 0)
    }),
  )
}

fn render_node(
  item: TreeItem(msg),
  open_ids: List(String),
  on_toggle: fn(String) -> msg,
  on_select: Option(fn(String) -> msg),
  depth: Int,
) -> Element(msg) {
  let is_open = list.contains(open_ids, item.id)
  let has_children = !list.is_empty(item.children)
  let node_class = case has_children {
    True ->
      case is_open {
        True -> "tree-node tree-node-open"
        False -> "tree-node tree-node-closed"
      }
    False -> "tree-node tree-node-leaf"
  }
  let icon_el = case item.icon {
    None -> element.none()
    Some(icon) -> h.span([a.class("tree-node-icon")], [icon])
  }
  let expand_el = case has_children {
    False -> h.span([a.class("tree-node-spacer")], [])
    True ->
      h.span(
        [
          a.class("tree-node-expand"),
          a.aria_hidden(True),
        ],
        [
          h.text(case is_open {
            True -> "▾"
            False -> "▸"
          }),
        ],
      )
  }
  let row_attrs = case has_children {
    True -> [
      a.class("tree-node-row"),
      a.style("padding-left", calc_indent(depth)),
      a.aria_expanded(is_open),
      e.on_click(on_toggle(item.id)),
    ]
    False -> [
      a.class("tree-node-row"),
      a.style("padding-left", calc_indent(depth)),
      case on_select {
        None -> a.none()
        Some(f) -> e.on_click(f(item.id))
      },
    ]
  }
  h.li([a.class(node_class), a.role("treeitem")], [
    h.div(row_attrs, [
      expand_el,
      icon_el,
      h.span([a.class("tree-node-label")], [h.text(item.label)]),
    ]),
    case has_children && is_open {
      False -> element.none()
      True ->
        h.ul(
          [a.class("tree-children"), a.role("group")],
          list.map(item.children, fn(child) {
            render_node(child, open_ids, on_toggle, on_select, depth + 1)
          }),
        )
    },
  ])
}

fn calc_indent(depth: Int) -> String {
  let px = depth * 16 + 8
  int.to_string(px) <> "px"
}

pub fn tree_view_simple(
  items: List(TreeItem(msg)),
  open_ids: List(String),
  on_toggle: fn(String) -> msg,
) -> Element(msg) {
  tree_view(items, open_ids, on_toggle, None, default_attrs)
}
