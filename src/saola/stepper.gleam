import gleam/int
import gleam/list
import gleam/option.{type Option, None, Some}
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e

pub type StepperOrientation {
  Horizontal
  Vertical
}

pub type StepStatus {
  Pending
  Active
  Complete
  Error
}

pub type StepItem {
  StepItem(label: String, description: String, status: StepStatus)
}

/// Multi-step progress indicator.
///
/// - `active_step`: 0-indexed index of the current step
/// - `on_step_click`: if `Some`, completed steps are clickable
pub fn stepper_full(
  orientation: StepperOrientation,
  steps: List(StepItem),
  active_step: Int,
  on_step_click: Option(fn(Int) -> msg),
  class: String,
) -> Element(msg) {
  let orient_class = case orientation {
    Horizontal -> "stepper stepper-horizontal"
    Vertical -> "stepper stepper-vertical"
  }
  let root_class = case class {
    "" -> orient_class
    c -> orient_class <> " " <> c
  }
  let indexed = list.index_map(steps, fn(step, idx) { #(idx, step) })
  let total = list.length(steps)
  h.ol(
    [a.class(root_class), a.attribute("aria-label", "Progress")],
    list.map(indexed, fn(pair) {
      let #(idx, step) = pair
      let status = case step.status {
        Active -> Active
        Complete -> Complete
        Error -> Error
        Pending ->
          case idx == active_step {
            True -> Active
            False ->
              case idx < active_step {
                True -> Complete
                False -> Pending
              }
          }
      }
      let step_class = case status {
        Active -> "stepper-step stepper-step-active"
        Complete -> "stepper-step stepper-step-complete"
        Error -> "stepper-step stepper-step-error"
        Pending -> "stepper-step"
      }
      let indicator_text = case status {
        Complete -> "✓"
        Error -> "✕"
        _ -> int.to_string(idx + 1)
      }
      let click_attr = case on_step_click, status {
        Some(f), Complete -> e.on_click(f(idx))
        _, _ -> a.none()
      }
      let is_last = idx == total - 1
      h.li([a.class(step_class)], [
        h.button(
          [
            a.type_("button"),
            a.class("stepper-trigger"),
            a.attribute("aria-current", case status {
              Active -> "step"
              _ -> "false"
            }),
            click_attr,
          ],
          [
            h.span([a.class("stepper-indicator")], [h.text(indicator_text)]),
            h.span([a.class("stepper-content")], [
              h.span([a.class("stepper-label")], [h.text(step.label)]),
              case step.description {
                "" -> element.none()
                d -> h.span([a.class("stepper-description")], [h.text(d)])
              },
            ]),
          ],
        ),
        case is_last {
          True -> element.none()
          False -> h.div([a.class("stepper-separator")], [])
        },
      ])
    }),
  )
}

pub fn stepper_simple(steps: List(StepItem), active_step: Int) -> Element(msg) {
  stepper_full(Horizontal, steps, active_step, None, "")
}
