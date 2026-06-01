import gleam/option.{Some}
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/preview/model.{type Message, type Model, StepperStepClicked}
import saola/stepper

pub fn view_steppers(model: Model) -> Element(Message) {
  let steps = [
    stepper.StepItem(
      label: "Account",
      description: "Enter your credentials",
      status: stepper.Pending,
    ),
    stepper.StepItem(
      label: "Profile",
      description: "Tell us about yourself",
      status: stepper.Pending,
    ),
    stepper.StepItem(
      label: "Payment",
      description: "Choose a plan",
      status: stepper.Pending,
    ),
    stepper.StepItem(
      label: "Confirm",
      description: "Review and submit",
      status: stepper.Pending,
    ),
  ]
  h.div([], [
    h.h1([a.class("page-title")], [text("Stepper")]),
    h.p([a.class("page-description")], [
      text(
        "A multi-step progress indicator with horizontal and vertical modes.",
      ),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Horizontal")]),
        stepper.stepper_full(
          stepper.Horizontal,
          steps,
          model.stepper_step,
          Some(StepperStepClicked),
          "",
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Vertical")]),
        stepper.stepper_full(
          stepper.Vertical,
          steps,
          model.stepper_step,
          Some(StepperStepClicked),
          "",
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("With error state")]),
        stepper.stepper_simple(
          [
            stepper.StepItem(
              label: "Account",
              description: "",
              status: stepper.Complete,
            ),
            stepper.StepItem(
              label: "Verification",
              description: "Email not verified",
              status: stepper.Error,
            ),
            stepper.StepItem(
              label: "Done",
              description: "",
              status: stepper.Pending,
            ),
          ],
          1,
        ),
      ]),
    ]),
  ])
}
