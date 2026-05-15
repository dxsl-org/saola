import gleam/option.{None}
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/alert
import saola/preview/model.{type Msg}

pub fn view_alerts() -> Element(Msg) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Alerts")]),
    h.p([a.class("page-description")], [
      text("Showcase of alert notifications."),
    ]),
    h.div([a.class("grid gap-4 mt-4")], [
      alert.alert_full(
        alert.Default,
        title: "Heads up!",
        description: "You can add components to your app using the CLI.",
        icon: None,
      ),
      alert.alert_full(
        alert.Destructive,
        title: "Error",
        description: "Your session has expired. Please log in again.",
        icon: None,
      ),
      alert.alert_default("A simple informational message with no title."),
    ]),
  ])
}
