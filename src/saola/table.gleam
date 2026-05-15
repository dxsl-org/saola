import gleam/list
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h

/// A table cell can hold plain text or any element (badge, button, etc.).
pub type TableCell(msg) {
  TextCell(String)
  ElementCell(Element(msg))
}

pub type TableRow(msg) {
  TableRow(cells: List(TableCell(msg)))
}

pub type TableExtraAttrs {
  TableExtraAttrs(caption: String, class: String)
}

pub const default_table_attrs = TableExtraAttrs("", "")

fn render_cell(cell: TableCell(msg)) -> Element(msg) {
  case cell {
    TextCell(text) -> h.td([], [h.text(text)])
    ElementCell(el) -> h.td([], [el])
  }
}

fn render_row(row: TableRow(msg)) -> Element(msg) {
  h.tr([], row.cells |> list.map(render_cell))
}

/// Render a table from typed headers and rows.
///
/// Example:
/// ```gleam
/// table_simple(
///   headers: ["Name", "Email", "Role"],
///   rows: [
///     TableRow([TextCell("Alice"), TextCell("alice@example.com"), TextCell("Admin")]),
///     TableRow([TextCell("Bob"),   TextCell("bob@example.com"),   ElementCell(badge_secondary("Member"))]),
///   ],
///   extra_attrs: default_table_attrs,
/// )
/// ```
pub fn table_simple(
  headers headers: List(String),
  rows rows: List(TableRow(msg)),
  extra_attrs extra_attrs: TableExtraAttrs,
) -> Element(msg) {
  let TableExtraAttrs(caption:, class:) = extra_attrs
  let caption_el = case caption {
    "" -> element.none()
    c -> h.caption([], [h.text(c)])
  }
  let header_row =
    h.tr([], headers |> list.map(fn(h_) { h.th([a.scope("col")], [h.text(h_)]) }))
  let extra_class = case class {
    "" -> a.none()
    c -> a.class(c)
  }
  h.div([a.class("overflow-auto")], [
    h.table([a.class("table"), extra_class], [
      caption_el,
      h.thead([], [header_row]),
      h.tbody([], rows |> list.map(render_row)),
    ]),
  ])
}

/// Render a simple string-only table.
pub fn table(
  headers: List(String),
  rows: List(List(String)),
) -> Element(msg) {
  table_simple(
    headers: headers,
    rows: rows |> list.map(fn(cells) { TableRow(cells |> list.map(TextCell)) }),
    extra_attrs: default_table_attrs,
  )
}
