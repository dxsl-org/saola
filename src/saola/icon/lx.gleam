import lustre/attribute.{type Attribute, attribute as a}
import lustre/element/svg

pub fn x(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M18 6 6 18")]),
      svg.path([a("d", "m6 6 12 12")]),
    ],
  )
}


pub fn x_line_top(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M18 4H6")]),
      svg.path([a("d", "M18 8 6 20")]),
      svg.path([a("d", "m6 8 12 12")]),
    ],
  )
}
