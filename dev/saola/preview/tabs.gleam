import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/preview/model.{type Model, type Msg, TabChanged}
import saola/tabs

pub fn view_tabs(model: Model) -> Element(Msg) {
  let demo_tabs = [
    tabs.Tab("account", "Account", h.p([], [
      text("Manage your account settings and preferences."),
    ])),
    tabs.Tab("password", "Password", h.p([], [
      text("Change your password here. After saving, you'll be logged out."),
    ])),
    tabs.Tab("notifications", "Notifications", h.p([], [
      text("Configure how you receive notifications."),
    ])),
  ]
  h.div([], [
    h.h1([a.class("page-title")], [text("Tabs")]),
    h.p([a.class("page-description")], [
      text("Organize content into tabbed panels."),
    ]),
    h.div([a.class("mt-4")], [
      tabs.tabs_simple(
        tabs: demo_tabs,
        active_id: model.active_tab,
        on_tab_change: TabChanged,
      ),
    ]),
  ])
}
