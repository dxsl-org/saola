import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h

pub type SpinnerSize {
  Small
  Medium
  Large
}

pub fn spinner_full(size: SpinnerSize, class: String) -> Element(msg) {
  let size_class = case size {
    Small -> "spinner spinner-sm"
    Medium -> "spinner spinner-md"
    Large -> "spinner spinner-lg"
  }
  let full_class = case class {
    "" -> size_class
    c -> size_class <> " " <> c
  }
  h.span(
    [
      a.class(full_class),
      a.role("status"),
      a.attribute("aria-label", "Loading"),
    ],
    [],
  )
}

pub fn spinner_simple() -> Element(msg) {
  spinner_full(Medium, "")
}
