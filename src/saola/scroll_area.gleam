import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h

pub fn scroll_area(
  content: Element(msg),
  height: String,
  width: String,
  class: String,
) -> Element(msg) {
  let extra_class = case class {
    "" -> a.none()
    c -> a.class(c)
  }
  h.div(
    [
      a.class("scroll-area"),
      extra_class,
      a.style("height", height),
      a.style("width", width),
      a.data("radix-scroll-area-root", ""),
    ],
    [
      h.div(
        [
          a.class("scroll-area-viewport"),
          a.tabindex(0),
        ],
        [content],
      ),
    ],
  )
}

pub fn scroll_area_simple(
  content: Element(msg),
  height: String,
) -> Element(msg) {
  scroll_area(content, height, "100%", "")
}
