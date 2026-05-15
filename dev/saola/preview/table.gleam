import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/badge
import saola/preview/model.{type Msg}
import saola/table

pub fn view_tables() -> Element(Msg) {
  let headers = ["Name", "Email", "Status", "Role"]
  let rows = [
    table.TableRow([
      table.TextCell("Alice Martin"),
      table.TextCell("alice@example.com"),
      table.ElementCell(badge.badge_default("Active")),
      table.TextCell("Admin"),
    ]),
    table.TableRow([
      table.TextCell("Bob Chen"),
      table.TextCell("bob@example.com"),
      table.ElementCell(badge.badge_secondary("Inactive")),
      table.TextCell("Member"),
    ]),
    table.TableRow([
      table.TextCell("Carol Kim"),
      table.TextCell("carol@example.com"),
      table.ElementCell(badge.badge_outline("Pending")),
      table.TextCell("Member"),
    ]),
  ]
  h.div([], [
    h.h1([a.class("page-title")], [text("Tables")]),
    h.p([a.class("page-description")], [
      text("Data tables with typed cells and optional captions."),
    ]),
    h.div([a.class("mt-4")], [
      table.table_simple(
        headers: headers,
        rows: rows,
        extra_attrs: table.TableExtraAttrs("Team members", ""),
      ),
    ]),
  ])
}
