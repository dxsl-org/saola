import gleam/int
import gleam/list
import gleam/option.{type Option, None, Some}
import gleam/string
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import lustre/event as e
import saola/badge
import saola/component/canvas
import saola/drawer
import saola/lustre_bar_chart
import saola/preview/model.{
  type Message, type Model, DashDrawerClosed, DashPageChanged, DashRowClicked,
  DashSearchChanged,
}
import saola/progress
import saola/search

// ---------------------------------------------------------------------------
// Data
// ---------------------------------------------------------------------------

type Employee {
  Employee(id: String, name: String, dept: String, score: Int)
}

fn all_employees() -> List(Employee) {
  [
    Employee("1", "Alice Chen", "Engineering", 92),
    Employee("2", "Bob Smith", "Marketing", 78),
    Employee("3", "Carol Davis", "Product", 85),
    Employee("4", "Dan Wilson", "Design", 71),
    Employee("5", "Eva Martinez", "Operations", 88),
    Employee("6", "Frank Lee", "Engineering", 65),
    Employee("7", "Grace Kim", "Marketing", 90),
    Employee("8", "Henry Brown", "Product", 55),
    Employee("9", "Iris Johnson", "Design", 82),
    Employee("10", "Jack Wang", "Operations", 77),
    Employee("11", "Karen White", "Engineering", 95),
    Employee("12", "Liam Harris", "Marketing", 63),
    Employee("13", "Mia Taylor", "Product", 87),
    Employee("14", "Noah Anderson", "Design", 74),
    Employee("15", "Olivia Thomas", "Operations", 91),
    Employee("16", "Paul Jackson", "Engineering", 58),
    Employee("17", "Quinn Garcia", "Marketing", 84),
    Employee("18", "Rachel Martinez", "Product", 79),
    Employee("19", "Sam Robinson", "Design", 66),
    Employee("20", "Tina Clark", "Operations", 93),
    Employee("21", "Uma Lewis", "Engineering", 72),
    Employee("22", "Victor Lee", "Marketing", 86),
    Employee("23", "Wendy Walker", "Product", 61),
    Employee("24", "Xavier Hall", "Design", 96),
    Employee("25", "Yara Allen", "Operations", 69),
    Employee("26", "Zack Young", "Engineering", 83),
    Employee("27", "Amy Hernandez", "Marketing", 57),
    Employee("28", "Brian King", "Product", 94),
    Employee("29", "Cathy Wright", "Design", 76),
    Employee("30", "Derek Lopez", "Operations", 89),
  ]
}

fn filter_employees(
  employees: List(Employee),
  query: String,
) -> List(Employee) {
  case string.trim(query) {
    "" -> employees
    q -> {
      let lower = string.lowercase(q)
      list.filter(employees, fn(emp) {
        string.contains(string.lowercase(emp.name), lower)
        || string.contains(string.lowercase(emp.dept), lower)
      })
    }
  }
}

const page_size = 8

// ---------------------------------------------------------------------------
// View
// ---------------------------------------------------------------------------

pub fn view(model: Model) -> Element(Message) {
  let all = all_employees()
  let total = list.length(all)
  let filtered = filter_employees(all, model.dash_search)
  let matched = list.length(filtered)
  let max_page = int.max(1, { matched + page_size - 1 } / page_size)
  let page = int.clamp(model.dash_page, min: 1, max: max_page)
  let page_employees =
    filtered
    |> list.drop({ page - 1 } * page_size)
    |> list.take(page_size)

  let selected_employee = case model.dash_selected_id {
    None -> None
    Some(id) -> list.find(all, fn(emp) { emp.id == id }) |> result_to_option
  }

  h.div([a.class("grid gap-6")], [
    h.header([a.class("grid gap-2")], [
      h.h1([a.class("page-title")], [text("Widget Dashboard")]),
      h.p([a.class("page-description")], [
        text(
          "Multiple widgets share a single Lustre Model. "
          <> "The search box, badge, progress bar, table, and score chart all "
          <> "react to the same state — no side-channel subscriptions.",
        ),
      ]),
    ]),
    // ---- Search + summary stats ---------------------------------------------
    h.div([a.class("flex flex-wrap gap-4 items-center")], [
      h.div([a.class("flex-1 max-w-sm")], [
        search.search_clearable(
          model.dash_search,
          DashSearchChanged,
          DashSearchChanged(""),
        ),
      ]),
      h.div([a.class("flex gap-2 items-center")], [
        h.span([a.class("text-sm text-muted-foreground")], [text("Showing")]),
        badge.badge_secondary(
          int.to_string(matched) <> " / " <> int.to_string(total),
        ),
        h.span([a.class("text-sm text-muted-foreground")], [text("employees")]),
      ]),
    ]),
    // ---- Match ratio progress bar ------------------------------------------
    h.div([a.class("grid gap-1")], [
      h.div([a.class("flex justify-between text-xs text-muted-foreground")], [
        text("Match ratio"),
        text(int.to_string(matched * 100 / int.max(total, 1)) <> "%"),
      ]),
      progress.progress(
        matched * 100 / int.max(total, 1),
        progress.Default,
        progress.ProgressAttrs(..progress.default_attrs, label: "Match ratio"),
      ),
    ]),
    // ---- Table + score distribution chart ----------------------------------
    h.div([a.class("grid gap-6 lg:grid-cols-3")], [
      h.div([a.class("lg:col-span-2 grid gap-2")], [
        employee_table(page_employees, model.dash_selected_id),
        pagination_controls(page, max_page),
      ]),
      h.div([a.class("grid gap-2")], [
        h.p([a.class("text-sm font-medium")], [text("Score Distribution")]),
        h.p([a.class("text-xs text-muted-foreground")], [
          text("Filtered employees · canvas-rendered"),
        ]),
        score_chart(filtered, DashPageChanged(page)),
      ]),
    ]),
    // ---- Row detail drawer -------------------------------------------------
    drawer.drawer(
      model.dash_drawer_open,
      case selected_employee {
        None -> "Employee Details"
        Some(emp) -> emp.name
      },
      None,
      case selected_employee {
        None -> h.text("")
        Some(emp) -> employee_detail(emp)
      },
      None,
      fn() { DashDrawerClosed },
      drawer.DrawerAttrs(side: drawer.Right, class: ""),
    ),
  ])
}

// ---------------------------------------------------------------------------
// Sub-views
// ---------------------------------------------------------------------------

fn employee_table(
  employees: List(Employee),
  selected_id: Option(String),
) -> Element(Message) {
  h.div([a.class("rounded-md border overflow-hidden")], [
    h.table([a.class("w-full text-sm")], [
      h.thead([], [
        h.tr([a.class("border-b bg-muted/50")], [
          h.th([a.class("px-4 py-2 text-left font-medium")], [text("Name")]),
          h.th([a.class("px-4 py-2 text-left font-medium")], [
            text("Department"),
          ]),
          h.th([a.class("px-4 py-2 text-right font-medium")], [text("Score")]),
        ]),
      ]),
      h.tbody([], case employees {
        [] -> [
          h.tr([], [
            h.td(
              [
                a.class("px-4 py-8 text-center text-muted-foreground"),
                a.colspan(3),
              ],
              [text("No employees match the search.")],
            ),
          ]),
        ]
        _ ->
          list.map(employees, fn(emp) {
            let is_selected = case selected_id {
              Some(id) -> id == emp.id
              None -> False
            }
            let row_class = case is_selected {
              True -> "border-b cursor-pointer bg-accent"
              False -> "border-b cursor-pointer hover:bg-muted/50"
            }
            h.tr([a.class(row_class), e.on_click(DashRowClicked(emp.id))], [
              h.td([a.class("px-4 py-2")], [text(emp.name)]),
              h.td([a.class("px-4 py-2")], [
                badge.badge(emp.dept, dept_badge_variant(emp.dept)),
              ]),
              h.td([a.class("px-4 py-2 text-right font-medium")], [
                text(int.to_string(emp.score)),
              ]),
            ])
          })
      }),
    ]),
  ])
}

fn dept_badge_variant(dept: String) -> badge.BadgeVariant {
  case dept {
    "Engineering" -> badge.Default
    "Product" -> badge.Secondary
    "Design" -> badge.Outline
    _ -> badge.Outline
  }
}

fn pagination_controls(page: Int, max_page: Int) -> Element(Message) {
  h.div([a.class("flex justify-between items-center text-sm")], [
    h.button(
      [
        a.type_("button"),
        a.class("nav-link"),
        e.on_click(DashPageChanged(page - 1)),
        a.disabled(page <= 1),
      ],
      [text("← Prev")],
    ),
    h.span([a.class("text-muted-foreground")], [
      text("Page " <> int.to_string(page) <> " of " <> int.to_string(max_page)),
    ]),
    h.button(
      [
        a.type_("button"),
        a.class("nav-link"),
        e.on_click(DashPageChanged(page + 1)),
        a.disabled(page >= max_page),
      ],
      [text("Next →")],
    ),
  ])
}

fn score_chart(employees: List(Employee), no_op: Message) -> Element(Message) {
  let buckets = [
    #("< 60", list.filter(employees, fn(emp) { emp.score < 60 }) |> list.length),
    #(
      "60–74",
      list.filter(employees, fn(emp) { emp.score >= 60 && emp.score < 75 })
        |> list.length,
    ),
    #(
      "75–89",
      list.filter(employees, fn(emp) { emp.score >= 75 && emp.score < 90 })
        |> list.length,
    ),
    #("90+", list.filter(employees, fn(emp) { emp.score >= 90 }) |> list.length),
  ]
  let chart_data =
    list.map(buckets, fn(b) {
      let #(label, count) = b
      lustre_bar_chart.ChartPoint(label, int.to_float(count))
    })
  let output =
    lustre_bar_chart.bar_chart_canvas(
      chart_data,
      title: "",
      width: 280,
      height: 200,
      on_bar_click: None,
    )
  canvas.element([canvas.on_tap(fn(_, _) { no_op })], output)
}

fn employee_detail(emp: Employee) -> Element(Message) {
  h.div([a.class("grid gap-4 p-4")], [
    h.div([a.class("grid gap-1")], [
      h.p([a.class("text-xs text-muted-foreground uppercase tracking-wide")], [
        text("Department"),
      ]),
      badge.badge(emp.dept, dept_badge_variant(emp.dept)),
    ]),
    h.div([a.class("grid gap-2")], [
      h.p([a.class("text-xs text-muted-foreground uppercase tracking-wide")], [
        text("Performance Score"),
      ]),
      h.div([a.class("flex gap-3 items-center")], [
        h.span([a.class("text-3xl font-bold")], [text(int.to_string(emp.score))]),
        h.div([a.class("flex-1")], [
          progress.progress(
            emp.score,
            case emp.score {
              s if s >= 85 -> progress.Success
              s if s < 65 -> progress.Destructive
              _ -> progress.Default
            },
            progress.ProgressAttrs(
              ..progress.default_attrs,
              label: "Performance score",
            ),
          ),
        ]),
      ]),
    ]),
    h.div([a.class("grid gap-1")], [
      h.p([a.class("text-xs text-muted-foreground uppercase tracking-wide")], [
        text("Employee ID"),
      ]),
      h.p([a.class("font-mono text-sm")], [text("#" <> emp.id)]),
    ]),
    h.div([a.class("grid gap-1")], [
      h.p([a.class("text-xs text-muted-foreground uppercase tracking-wide")], [
        text("Full Name"),
      ]),
      h.p([a.class("font-medium")], [text(emp.name)]),
    ]),
  ])
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

fn result_to_option(r: Result(a, e)) -> Option(a) {
  case r {
    Ok(v) -> Some(v)
    Error(_) -> None
  }
}
