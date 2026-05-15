import lustre/attribute.{type Attribute, attribute as a}
import lustre/element/svg

pub fn kanban(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M5 3v14")]),
      svg.path([a("d", "M12 3v8")]),
      svg.path([a("d", "M19 3v18")]),
    ],
  )
}


pub fn kayak(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M18 17a1 1 0 0 0-1 1v1a2 2 0 1 0 2-2z")]),
      svg.path([
        a(
          "d",
          "M20.97 3.61a.45.45 0 0 0-.58-.58C10.2 6.6 6.6 10.2 3.03 20.39a.45.45 0 0 0 .58.58C13.8 17.4 17.4 13.8 20.97 3.61",
        ),
      ]),
      svg.path([a("d", "m6.707 6.707 10.586 10.586")]),
      svg.path([a("d", "M7 5a2 2 0 1 0-2 2h1a1 1 0 0 0 1-1z")]),
    ],
  )
}


pub fn key(attributes: List(Attribute(a))) {
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
        a("d", "m15.5 7.5 2.3 2.3a1 1 0 0 0 1.4 0l2.1-2.1a1 1 0 0 0 0-1.4L19 4"),
      ]),
      svg.path([a("d", "m21 2-9.6 9.6")]),
      svg.circle([
        a("r", "5.5"),
        a("cy", "15.5"),
        a("cx", "7.5"),
      ]),
    ],
  )
}


pub fn key_round(attributes: List(Attribute(a))) {
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
          "M2.586 17.414A2 2 0 0 0 2 18.828V21a1 1 0 0 0 1 1h3a1 1 0 0 0 1-1v-1a1 1 0 0 1 1-1h1a1 1 0 0 0 1-1v-1a1 1 0 0 1 1-1h.172a2 2 0 0 0 1.414-.586l.814-.814a6.5 6.5 0 1 0-4-4z",
        ),
      ]),
      svg.circle([
        a("fill", "currentColor"),
        a("r", ".5"),
        a("cy", "7.5"),
        a("cx", "16.5"),
      ]),
    ],
  )
}


pub fn key_square(attributes: List(Attribute(a))) {
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
          "M12.4 2.7a2.5 2.5 0 0 1 3.4 0l5.5 5.5a2.5 2.5 0 0 1 0 3.4l-3.7 3.7a2.5 2.5 0 0 1-3.4 0L8.7 9.8a2.5 2.5 0 0 1 0-3.4z",
        ),
      ]),
      svg.path([a("d", "m14 7 3 3")]),
      svg.path([
        a(
          "d",
          "m9.4 10.6-6.814 6.814A2 2 0 0 0 2 18.828V21a1 1 0 0 0 1 1h3a1 1 0 0 0 1-1v-1a1 1 0 0 1 1-1h1a1 1 0 0 0 1-1v-1a1 1 0 0 1 1-1h.172a2 2 0 0 0 1.414-.586l.814-.814",
        ),
      ]),
    ],
  )
}


pub fn keyboard(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10 8h.01")]),
      svg.path([a("d", "M12 12h.01")]),
      svg.path([a("d", "M14 8h.01")]),
      svg.path([a("d", "M16 12h.01")]),
      svg.path([a("d", "M18 8h.01")]),
      svg.path([a("d", "M6 8h.01")]),
      svg.path([a("d", "M7 16h10")]),
      svg.path([a("d", "M8 12h.01")]),
      svg.rect([
        a("rx", "2"),
        a("y", "4"),
        a("x", "2"),
        a("height", "16"),
        a("width", "20"),
      ]),
    ],
  )
}


pub fn keyboard_music(attributes: List(Attribute(a))) {
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
        a("rx", "2"),
        a("y", "4"),
        a("x", "2"),
        a("height", "16"),
        a("width", "20"),
      ]),
      svg.path([a("d", "M6 8h4")]),
      svg.path([a("d", "M14 8h.01")]),
      svg.path([a("d", "M18 8h.01")]),
      svg.path([a("d", "M2 12h20")]),
      svg.path([a("d", "M6 12v4")]),
      svg.path([a("d", "M10 12v4")]),
      svg.path([a("d", "M14 12v4")]),
      svg.path([a("d", "M18 12v4")]),
    ],
  )
}


pub fn keyboard_off(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M 20 4 A2 2 0 0 1 22 6")]),
      svg.path([a("d", "M 22 6 L 22 16.41")]),
      svg.path([a("d", "M 7 16 L 16 16")]),
      svg.path([a("d", "M 9.69 4 L 20 4")]),
      svg.path([a("d", "M14 8h.01")]),
      svg.path([a("d", "M18 8h.01")]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([a("d", "M20 20H4a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2")]),
      svg.path([a("d", "M6 8h.01")]),
      svg.path([a("d", "M8 12h.01")]),
    ],
  )
}
