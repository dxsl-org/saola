import gleam/list
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e

pub type Tab(msg) {
  Tab(id: String, label: String, content: Element(msg))
  TabWithIcon(id: String, icon: Element(msg), label: String, content: Element(msg))
}

pub type TabsExtraAttrs {
  TabsExtraAttrs(class: String)
}

pub const default_tabs_attrs = TabsExtraAttrs("")

fn tab_id(id: String) -> String {
  "tab-" <> id
}

fn panel_id(id: String) -> String {
  "panel-" <> id
}

fn tab_label(tab: Tab(msg)) -> String {
  case tab {
    Tab(label:, ..) -> label
    TabWithIcon(label:, ..) -> label
  }
}

fn tab_icon(tab: Tab(msg)) -> Element(msg) {
  case tab {
    Tab(..) -> element.none()
    TabWithIcon(icon:, ..) -> icon
  }
}

fn tab_content(tab: Tab(msg)) -> Element(msg) {
  case tab {
    Tab(content:, ..) -> content
    TabWithIcon(content:, ..) -> content
  }
}

fn tab_id_field(tab: Tab(msg)) -> String {
  case tab {
    Tab(id:, ..) -> id
    TabWithIcon(id:, ..) -> id
  }
}

fn render_trigger(
  tab: Tab(msg),
  is_active: Bool,
  on_tab_change: fn(String) -> msg,
) -> Element(msg) {
  let id = tab_id_field(tab)
  h.button(
    [
      a.type_("button"),
      a.role("tab"),
      a.id(tab_id(id)),
      a.aria_selected(is_active),
      a.aria_controls(panel_id(id)),
      e.on_click(on_tab_change(id)),
    ],
    [tab_icon(tab), h.text(tab_label(tab))],
  )
}

fn render_panel(tab: Tab(msg), is_active: Bool) -> Element(msg) {
  let id = tab_id_field(tab)
  h.div(
    [
      a.role("tabpanel"),
      a.id(panel_id(id)),
      a.aria_labelledby(tab_id(id)),
      a.aria_hidden(!is_active),
    ],
    [tab_content(tab)],
  )
}

/// Render a tab group. `active_id` is the ID of the currently visible tab.
/// `on_tab_change` is called with the new tab ID when the user clicks a tab.
///
/// NOTE: `aria-hidden` alone does not remove inactive panels from keyboard
/// tab order. Add `[role="tabpanel"][aria-hidden="true"] { display: none; }`
/// to your CSS so focusable elements inside hidden panels are unreachable.
///
/// Example:
/// ```gleam
/// tabs_full(
///   tabs: [Tab("account", "Account", account_view), Tab("security", "Security", security_view)],
///   active_id: model.active_tab,
///   on_tab_change: TabChanged,
///   extra_attrs: default_tabs_attrs,
/// )
/// ```
pub fn tabs_full(
  tabs tabs: List(Tab(msg)),
  active_id active_id: String,
  on_tab_change on_tab_change: fn(String) -> msg,
  extra_attrs extra_attrs: TabsExtraAttrs,
) -> Element(msg) {
  let TabsExtraAttrs(class:) = extra_attrs
  let extra_class = case class {
    "" -> a.none()
    c -> a.class(c)
  }
  let triggers =
    tabs
    |> list.map(fn(tab) {
      render_trigger(tab, tab_id_field(tab) == active_id, on_tab_change)
    })
  let panels =
    tabs
    |> list.map(fn(tab) { render_panel(tab, tab_id_field(tab) == active_id) })
  h.div([a.class("tabs"), extra_class], [
    h.div([a.role("tablist")], triggers),
    ..panels
  ])
}

/// Simple tabs with default styling.
pub fn tabs_simple(
  tabs tabs: List(Tab(msg)),
  active_id active_id: String,
  on_tab_change on_tab_change: fn(String) -> msg,
) -> Element(msg) {
  tabs_full(
    tabs: tabs,
    active_id: active_id,
    on_tab_change: on_tab_change,
    extra_attrs: default_tabs_attrs,
  )
}
