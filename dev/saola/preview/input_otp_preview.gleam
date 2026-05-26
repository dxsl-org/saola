import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/input_otp
import saola/preview/model.{type Message, type Model, InputOtpChanged}

pub fn view_input_otps(model: Model) -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Input OTP")]),
    h.p([a.class("page-description")], [
      text("An accessible one-time password input."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("6-digit OTP")]),
        input_otp.input_otp_simple(model.input_otp_value, InputOtpChanged),
        h.p(
          [
            a.style("font-size", "0.875rem"),
            a.style("color", "var(--color-muted-foreground, #6c757d)"),
          ],
          [
            text("Value: " <> model.input_otp_value),
          ],
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("4-digit PIN")]),
        input_otp.input_otp_full(
          model.input_otp_value,
          InputOtpChanged,
          input_otp.InputOtpAttrs(..input_otp.default_attrs, length: 4),
        ),
      ]),
    ]),
  ])
}
