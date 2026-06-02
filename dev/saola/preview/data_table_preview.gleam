import gleam/option.{None, Some}
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/data_table
import saola/preview/model.{
  type Message, type Model, DataTableFilterChanged, DataTablePageChanged,
  DataTableSelectChanged, DataTableSortChanged,
}

type Person {
  Person(id: String, name: String, email: String, role: String, status: String)
}

fn sample_rows() -> List(Person) {
  [
    Person("1", "Alice Chen", "alice@example.com", "Engineer", "Active"),
    Person("2", "Bob Smith", "bob@example.com", "Designer", "Active"),
    Person("3", "Carol White", "carol@example.com", "Manager", "Inactive"),
    Person("4", "Dan Brown", "dan@example.com", "Engineer", "Active"),
    Person("5", "Eve Davis", "eve@example.com", "Designer", "Active"),
    Person("6", "Frank Lee", "frank@example.com", "Engineer", "Inactive"),
    Person("7", "Grace Kim", "grace@example.com", "Manager", "Active"),
    Person("8", "Henry Park", "henry@example.com", "Engineer", "Active"),
    Person("9", "Iris Tan", "iris@example.com", "Designer", "Inactive"),
    Person("10", "Jack Wu", "jack@example.com", "Engineer", "Active"),
    Person("11", "Karen Liu", "karen@example.com", "Manager", "Active"),
    Person("12", "Leo Ng", "leo@example.com", "Engineer", "Active"),
  ]
}

fn full_columns() -> List(data_table.DataTableColumn(Person, Message)) {
  [
    data_table.DataTableColumn(
      header: "Name",
      cell: fn(row: Person) { text(row.name) },
      sort_key: Some("name"),
    ),
    data_table.DataTableColumn(
      header: "Email",
      cell: fn(row: Person) { text(row.email) },
      sort_key: None,
    ),
    data_table.DataTableColumn(
      header: "Role",
      cell: fn(row: Person) { text(row.role) },
      sort_key: Some("role"),
    ),
    data_table.DataTableColumn(
      header: "Status",
      cell: fn(row: Person) {
        let cls = case row.status {
          "Active" -> "badge"
          _ -> "badge badge-secondary"
        }
        h.span([a.class(cls)], [text(row.status)])
      },
      sort_key: Some("status"),
    ),
  ]
}

fn simple_columns() -> List(data_table.DataTableColumn(Person, Message)) {
  [
    data_table.DataTableColumn(
      header: "Name",
      cell: fn(row: Person) { text(row.name) },
      sort_key: None,
    ),
    data_table.DataTableColumn(
      header: "Role",
      cell: fn(row: Person) { text(row.role) },
      sort_key: None,
    ),
    data_table.DataTableColumn(
      header: "Status",
      cell: fn(row: Person) { text(row.status) },
      sort_key: None,
    ),
  ]
}

pub fn view(model: Model) -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Data Table")]),
    h.p([a.class("page-description")], [
      text(
        "Sortable, filterable table with pagination and row selection. Click a row to select it.",
      ),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Full-featured table")]),
        data_table.data_table_full(
          full_columns(),
          sample_rows(),
          model.data_table_state,
          fn(key) { DataTableSortChanged(key) },
          fn(q) { DataTableFilterChanged(q) },
          fn(p) { DataTablePageChanged(p) },
          fn(ids) { DataTableSelectChanged(ids) },
          fn(row) { row.id },
          data_table.default_attrs,
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Simple read-only")]),
        data_table.data_table_simple(simple_columns(), [
          Person("1", "Alice Chen", "alice@example.com", "Engineer", "Active"),
          Person("2", "Bob Smith", "bob@example.com", "Designer", "Active"),
          Person("3", "Carol White", "carol@example.com", "Manager", "Inactive"),
          Person("4", "Dan Brown", "dan@example.com", "Engineer", "Active"),
        ]),
      ]),
    ]),
  ])
}
