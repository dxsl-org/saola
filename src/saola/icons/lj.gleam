import lustre/attribute.{type Attribute, attribute as a}
import lustre/element/svg

pub fn japanese_yen(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 9.5V21m0-11.5L6 3m6 6.5L18 3")]),
      svg.path([a("d", "M6 15h12")]),
      svg.path([a("d", "M6 11h12")]),
    ],
  )
}


pub fn joystick(attributes: List(Attribute(a))) {
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
      svg.path([
        a(
          "d",
          "M21 17a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v2a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-2Z",
        ),
      ]),
      svg.path([a("d", "M6 15v-2")]),
      svg.path([a("d", "M12 15V9")]),
      svg.circle([
        a("r", "3"),
        a("cy", "6"),
        a("cx", "12"),
      ]),
    ],
  )
}
