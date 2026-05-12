import lustre/attribute.{type Attribute, attribute as a}
import lustre/element/svg

pub fn qr_code(attributes: List(Attribute(a))) {
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
      svg.rect([
        a("rx", "1"),
        a("y", "3"),
        a("x", "3"),
        a("height", "5"),
        a("width", "5"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("y", "3"),
        a("x", "16"),
        a("height", "5"),
        a("width", "5"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("y", "16"),
        a("x", "3"),
        a("height", "5"),
        a("width", "5"),
      ]),
      svg.path([a("d", "M21 16h-3a2 2 0 0 0-2 2v3")]),
      svg.path([a("d", "M21 21v.01")]),
      svg.path([a("d", "M12 7v3a2 2 0 0 1-2 2H7")]),
      svg.path([a("d", "M3 12h.01")]),
      svg.path([a("d", "M12 3h.01")]),
      svg.path([a("d", "M12 16v.01")]),
      svg.path([a("d", "M16 12h1")]),
      svg.path([a("d", "M21 12v.01")]),
      svg.path([a("d", "M12 21v-1")]),
    ],
  )
}


pub fn quote(attributes: List(Attribute(a))) {
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
          "M16 3a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2 1 1 0 0 1 1 1v1a2 2 0 0 1-2 2 1 1 0 0 0-1 1v2a1 1 0 0 0 1 1 6 6 0 0 0 6-6V5a2 2 0 0 0-2-2z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M5 3a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2 1 1 0 0 1 1 1v1a2 2 0 0 1-2 2 1 1 0 0 0-1 1v2a1 1 0 0 0 1 1 6 6 0 0 0 6-6V5a2 2 0 0 0-2-2z",
        ),
      ]),
    ],
  )
}
