import lustre/attribute.{type Attribute, attribute as a}
import lustre/element/svg

pub fn table(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 3v18")]),
      svg.rect([
        a("rx", "2"),
        a("y", "3"),
        a("x", "3"),
        a("height", "18"),
        a("width", "18"),
      ]),
      svg.path([a("d", "M3 9h18")]),
      svg.path([a("d", "M3 15h18")]),
    ],
  )
}


pub fn table_2(attributes: List(Attribute(a))) {
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
          "M9 3H5a2 2 0 0 0-2 2v4m6-6h10a2 2 0 0 1 2 2v4M9 3v18m0 0h10a2 2 0 0 0 2-2V9M9 21H5a2 2 0 0 1-2-2V9m0 0h18",
        ),
      ]),
    ],
  )
}


pub fn table_cells_merge(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 21v-6")]),
      svg.path([a("d", "M12 9V3")]),
      svg.path([a("d", "M3 15h18")]),
      svg.path([a("d", "M3 9h18")]),
      svg.rect([
        a("rx", "2"),
        a("y", "3"),
        a("x", "3"),
        a("height", "18"),
        a("width", "18"),
      ]),
    ],
  )
}


pub fn table_cells_split(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 15V9")]),
      svg.path([a("d", "M3 15h18")]),
      svg.path([a("d", "M3 9h18")]),
      svg.rect([
        a("rx", "2"),
        a("y", "3"),
        a("x", "3"),
        a("height", "18"),
        a("width", "18"),
      ]),
    ],
  )
}


pub fn table_columns_split(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M14 14v2")]),
      svg.path([a("d", "M14 20v2")]),
      svg.path([a("d", "M14 2v2")]),
      svg.path([a("d", "M14 8v2")]),
      svg.path([a("d", "M2 15h8")]),
      svg.path([a("d", "M2 3h6a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H2")]),
      svg.path([a("d", "M2 9h8")]),
      svg.path([a("d", "M22 15h-4")]),
      svg.path([a("d", "M22 3h-2a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h2")]),
      svg.path([a("d", "M22 9h-4")]),
      svg.path([a("d", "M5 3v18")]),
    ],
  )
}


pub fn table_of_contents(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16 5H3")]),
      svg.path([a("d", "M16 12H3")]),
      svg.path([a("d", "M16 19H3")]),
      svg.path([a("d", "M21 5h.01")]),
      svg.path([a("d", "M21 12h.01")]),
      svg.path([a("d", "M21 19h.01")]),
    ],
  )
}


pub fn table_properties(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M15 3v18")]),
      svg.rect([
        a("rx", "2"),
        a("y", "3"),
        a("x", "3"),
        a("height", "18"),
        a("width", "18"),
      ]),
      svg.path([a("d", "M21 9H3")]),
      svg.path([a("d", "M21 15H3")]),
    ],
  )
}


pub fn table_rows_split(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M14 10h2")]),
      svg.path([a("d", "M15 22v-8")]),
      svg.path([a("d", "M15 2v4")]),
      svg.path([a("d", "M2 10h2")]),
      svg.path([a("d", "M20 10h2")]),
      svg.path([a("d", "M3 19h18")]),
      svg.path([a("d", "M3 22v-6a2 2 135 0 1 2-2h14a2 2 45 0 1 2 2v6")]),
      svg.path([a("d", "M3 2v2a2 2 45 0 0 2 2h14a2 2 135 0 0 2-2V2")]),
      svg.path([a("d", "M8 10h2")]),
      svg.path([a("d", "M9 22v-8")]),
      svg.path([a("d", "M9 2v4")]),
    ],
  )
}


pub fn tablet(attributes: List(Attribute(a))) {
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
        a("ry", "2"),
        a("rx", "2"),
        a("y", "2"),
        a("x", "4"),
        a("height", "20"),
        a("width", "16"),
      ]),
      svg.line([
        a("y2", "18"),
        a("y1", "18"),
        a("x2", "12.01"),
        a("x1", "12"),
      ]),
    ],
  )
}


pub fn tablet_smartphone(attributes: List(Attribute(a))) {
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
        a("y", "8"),
        a("x", "3"),
        a("height", "14"),
        a("width", "10"),
      ]),
      svg.path([
        a("d", "M5 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v16a2 2 0 0 1-2 2h-2.4"),
      ]),
      svg.path([a("d", "M8 18h.01")]),
    ],
  )
}


pub fn tablets(attributes: List(Attribute(a))) {
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
      svg.circle([
        a("r", "5"),
        a("cy", "7"),
        a("cx", "7"),
      ]),
      svg.circle([
        a("r", "5"),
        a("cy", "17"),
        a("cx", "17"),
      ]),
      svg.path([a("d", "M12 17h10")]),
      svg.path([a("d", "m3.46 10.54 7.08-7.08")]),
    ],
  )
}


pub fn tag(attributes: List(Attribute(a))) {
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
          "M12.586 2.586A2 2 0 0 0 11.172 2H4a2 2 0 0 0-2 2v7.172a2 2 0 0 0 .586 1.414l8.704 8.704a2.426 2.426 0 0 0 3.42 0l6.58-6.58a2.426 2.426 0 0 0 0-3.42z",
        ),
      ]),
      svg.circle([
        a("fill", "currentColor"),
        a("r", ".5"),
        a("cy", "7.5"),
        a("cx", "7.5"),
      ]),
    ],
  )
}


pub fn tags(attributes: List(Attribute(a))) {
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
          "M13.172 2a2 2 0 0 1 1.414.586l6.71 6.71a2.4 2.4 0 0 1 0 3.408l-4.592 4.592a2.4 2.4 0 0 1-3.408 0l-6.71-6.71A2 2 0 0 1 6 9.172V3a1 1 0 0 1 1-1z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M2 7v6.172a2 2 0 0 0 .586 1.414l6.71 6.71a2.4 2.4 0 0 0 3.191.193",
        ),
      ]),
      svg.circle([
        a("fill", "currentColor"),
        a("r", ".5"),
        a("cy", "6.5"),
        a("cx", "10.5"),
      ]),
    ],
  )
}


pub fn tally_1(attributes: List(Attribute(a))) {
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
    [svg.path([a("d", "M4 4v16")])],
  )
}


pub fn tally_2(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M4 4v16")]),
      svg.path([a("d", "M9 4v16")]),
    ],
  )
}


pub fn tally_3(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M4 4v16")]),
      svg.path([a("d", "M9 4v16")]),
      svg.path([a("d", "M14 4v16")]),
    ],
  )
}


pub fn tally_4(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M4 4v16")]),
      svg.path([a("d", "M9 4v16")]),
      svg.path([a("d", "M14 4v16")]),
      svg.path([a("d", "M19 4v16")]),
    ],
  )
}


pub fn tally_5(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M4 4v16")]),
      svg.path([a("d", "M9 4v16")]),
      svg.path([a("d", "M14 4v16")]),
      svg.path([a("d", "M19 4v16")]),
      svg.path([a("d", "M22 6 2 18")]),
    ],
  )
}


pub fn tangent(attributes: List(Attribute(a))) {
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
      svg.circle([
        a("r", "2"),
        a("cy", "4"),
        a("cx", "17"),
      ]),
      svg.path([a("d", "M15.59 5.41 5.41 15.59")]),
      svg.circle([
        a("r", "2"),
        a("cy", "17"),
        a("cx", "4"),
      ]),
      svg.path([a("d", "M12 22s-4-9-1.5-11.5S22 12 22 12")]),
    ],
  )
}


pub fn target(attributes: List(Attribute(a))) {
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
      svg.circle([
        a("r", "10"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
      svg.circle([
        a("r", "6"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn telescope(attributes: List(Attribute(a))) {
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
          "m10.065 12.493-6.18 1.318a.934.934 0 0 1-1.108-.702l-.537-2.15a1.07 1.07 0 0 1 .691-1.265l13.504-4.44",
        ),
      ]),
      svg.path([a("d", "m13.56 11.747 4.332-.924")]),
      svg.path([a("d", "m16 21-3.105-6.21")]),
      svg.path([
        a(
          "d",
          "M16.485 5.94a2 2 0 0 1 1.455-2.425l1.09-.272a1 1 0 0 1 1.212.727l1.515 6.06a1 1 0 0 1-.727 1.213l-1.09.272a2 2 0 0 1-2.425-1.455z",
        ),
      ]),
      svg.path([a("d", "m6.158 8.633 1.114 4.456")]),
      svg.path([a("d", "m8 21 3.105-6.21")]),
      svg.circle([
        a("r", "2"),
        a("cy", "13"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn tent(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M3.5 21 14 3")]),
      svg.path([a("d", "M20.5 21 10 3")]),
      svg.path([a("d", "M15.5 21 12 15l-3.5 6")]),
      svg.path([a("d", "M2 21h20")]),
    ],
  )
}


pub fn tent_tree(attributes: List(Attribute(a))) {
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
      svg.circle([
        a("r", "2"),
        a("cy", "4"),
        a("cx", "4"),
      ]),
      svg.path([a("d", "m14 5 3-3 3 3")]),
      svg.path([a("d", "m14 10 3-3 3 3")]),
      svg.path([a("d", "M17 14V2")]),
      svg.path([a("d", "M17 14H7l-5 8h20Z")]),
      svg.path([a("d", "M8 14v8")]),
      svg.path([a("d", "m9 14 5 8")]),
    ],
  )
}


pub fn terminal(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 19h8")]),
      svg.path([a("d", "m4 17 6-6-6-6")]),
    ],
  )
}


pub fn test_tube(attributes: List(Attribute(a))) {
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
        a("d", "M14.5 2v17.5c0 1.4-1.1 2.5-2.5 2.5c-1.4 0-2.5-1.1-2.5-2.5V2"),
      ]),
      svg.path([a("d", "M8.5 2h7")]),
      svg.path([a("d", "M14.5 16h-5")]),
    ],
  )
}


pub fn test_tube_diagonal(attributes: List(Attribute(a))) {
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
          "M21 7 6.82 21.18a2.83 2.83 0 0 1-3.99-.01a2.83 2.83 0 0 1 0-4L17 3",
        ),
      ]),
      svg.path([a("d", "m16 2 6 6")]),
      svg.path([a("d", "M12 16H4")]),
    ],
  )
}


pub fn test_tubes(attributes: List(Attribute(a))) {
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
        a("d", "M9 2v17.5A2.5 2.5 0 0 1 6.5 22A2.5 2.5 0 0 1 4 19.5V2"),
      ]),
      svg.path([
        a("d", "M20 2v17.5a2.5 2.5 0 0 1-2.5 2.5a2.5 2.5 0 0 1-2.5-2.5V2"),
      ]),
      svg.path([a("d", "M3 2h7")]),
      svg.path([a("d", "M14 2h7")]),
      svg.path([a("d", "M9 16H4")]),
      svg.path([a("d", "M20 16h-5")]),
    ],
  )
}


pub fn text_align_center(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M21 5H3")]),
      svg.path([a("d", "M17 12H7")]),
      svg.path([a("d", "M19 19H5")]),
    ],
  )
}


pub fn text_align_end(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M21 5H3")]),
      svg.path([a("d", "M21 12H9")]),
      svg.path([a("d", "M21 19H7")]),
    ],
  )
}


pub fn text_align_justify(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M3 5h18")]),
      svg.path([a("d", "M3 12h18")]),
      svg.path([a("d", "M3 19h18")]),
    ],
  )
}


pub fn text_align_start(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M21 5H3")]),
      svg.path([a("d", "M15 12H3")]),
      svg.path([a("d", "M17 19H3")]),
    ],
  )
}


pub fn text_cursor(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M17 22h-1a4 4 0 0 1-4-4V6a4 4 0 0 1 4-4h1")]),
      svg.path([a("d", "M7 22h1a4 4 0 0 0 4-4v-1")]),
      svg.path([a("d", "M7 2h1a4 4 0 0 1 4 4v1")]),
    ],
  )
}


pub fn text_cursor_input(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 20h-1a2 2 0 0 1-2-2 2 2 0 0 1-2 2H6")]),
      svg.path([a("d", "M13 8h7a2 2 0 0 1 2 2v4a2 2 0 0 1-2 2h-7")]),
      svg.path([a("d", "M5 16H4a2 2 0 0 1-2-2v-4a2 2 0 0 1 2-2h1")]),
      svg.path([a("d", "M6 4h1a2 2 0 0 1 2 2 2 2 0 0 1 2-2h1")]),
      svg.path([a("d", "M9 6v12")]),
    ],
  )
}


pub fn text_initial(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M15 5h6")]),
      svg.path([a("d", "M15 12h6")]),
      svg.path([a("d", "M3 19h18")]),
      svg.path([a("d", "m3 12 3.553-7.724a.5.5 0 0 1 .894 0L11 12")]),
      svg.path([a("d", "M3.92 10h6.16")]),
    ],
  )
}


pub fn text_quote(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M17 5H3")]),
      svg.path([a("d", "M21 12H8")]),
      svg.path([a("d", "M21 19H8")]),
      svg.path([a("d", "M3 12v7")]),
    ],
  )
}


pub fn text_search(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M21 5H3")]),
      svg.path([a("d", "M10 12H3")]),
      svg.path([a("d", "M10 19H3")]),
      svg.circle([
        a("r", "3"),
        a("cy", "15"),
        a("cx", "17"),
      ]),
      svg.path([a("d", "m21 19-1.9-1.9")]),
    ],
  )
}


pub fn text_wrap(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m16 16-3 3 3 3")]),
      svg.path([a("d", "M3 12h14.5a1 1 0 0 1 0 7H13")]),
      svg.path([a("d", "M3 19h6")]),
      svg.path([a("d", "M3 5h18")]),
    ],
  )
}


pub fn theater(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M2 10s3-3 3-8")]),
      svg.path([a("d", "M22 10s-3-3-3-8")]),
      svg.path([a("d", "M10 2c0 4.4-3.6 8-8 8")]),
      svg.path([a("d", "M14 2c0 4.4 3.6 8 8 8")]),
      svg.path([a("d", "M2 10s2 2 2 5")]),
      svg.path([a("d", "M22 10s-2 2-2 5")]),
      svg.path([a("d", "M8 15h8")]),
      svg.path([a("d", "M2 22v-1a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v1")]),
      svg.path([a("d", "M14 22v-1a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v1")]),
    ],
  )
}


pub fn thermometer(attributes: List(Attribute(a))) {
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
    [svg.path([a("d", "M14 4v10.54a4 4 0 1 1-4 0V4a2 2 0 0 1 4 0Z")])],
  )
}


pub fn thermometer_snowflake(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m10 20-1.25-2.5L6 18")]),
      svg.path([a("d", "M10 4 8.75 6.5 6 6")]),
      svg.path([a("d", "M10.585 15H10")]),
      svg.path([a("d", "M2 12h6.5L10 9")]),
      svg.path([a("d", "M20 14.54a4 4 0 1 1-4 0V4a2 2 0 0 1 4 0z")]),
      svg.path([a("d", "m4 10 1.5 2L4 14")]),
      svg.path([a("d", "m7 21 3-6-1.5-3")]),
      svg.path([a("d", "m7 3 3 6h2")]),
    ],
  )
}


pub fn thermometer_sun(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 2v2")]),
      svg.path([a("d", "M12 8a4 4 0 0 0-1.645 7.647")]),
      svg.path([a("d", "M2 12h2")]),
      svg.path([a("d", "M20 14.54a4 4 0 1 1-4 0V4a2 2 0 0 1 4 0z")]),
      svg.path([a("d", "m4.93 4.93 1.41 1.41")]),
      svg.path([a("d", "m6.34 17.66-1.41 1.41")]),
    ],
  )
}


pub fn thumbs_down(attributes: List(Attribute(a))) {
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
          "M9 18.12 10 14H4.17a2 2 0 0 1-1.92-2.56l2.33-8A2 2 0 0 1 6.5 2H20a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2h-2.76a2 2 0 0 0-1.79 1.11L12 22a3.13 3.13 0 0 1-3-3.88Z",
        ),
      ]),
      svg.path([a("d", "M17 14V2")]),
    ],
  )
}


pub fn thumbs_up(attributes: List(Attribute(a))) {
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
          "M15 5.88 14 10h5.83a2 2 0 0 1 1.92 2.56l-2.33 8A2 2 0 0 1 17.5 22H4a2 2 0 0 1-2-2v-8a2 2 0 0 1 2-2h2.76a2 2 0 0 0 1.79-1.11L12 2a3.13 3.13 0 0 1 3 3.88Z",
        ),
      ]),
      svg.path([a("d", "M7 10v12")]),
    ],
  )
}


pub fn ticket(attributes: List(Attribute(a))) {
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
          "M2 9a3 3 0 0 1 0 6v2a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-2a3 3 0 0 1 0-6V7a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2Z",
        ),
      ]),
      svg.path([a("d", "M13 5v2")]),
      svg.path([a("d", "M13 17v2")]),
      svg.path([a("d", "M13 11v2")]),
    ],
  )
}


pub fn ticket_check(attributes: List(Attribute(a))) {
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
          "M2 9a3 3 0 0 1 0 6v2a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-2a3 3 0 0 1 0-6V7a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2Z",
        ),
      ]),
      svg.path([a("d", "m9 12 2 2 4-4")]),
    ],
  )
}


pub fn ticket_minus(attributes: List(Attribute(a))) {
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
          "M2 9a3 3 0 0 1 0 6v2a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-2a3 3 0 0 1 0-6V7a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2Z",
        ),
      ]),
      svg.path([a("d", "M9 12h6")]),
    ],
  )
}


pub fn ticket_percent(attributes: List(Attribute(a))) {
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
          "M2 9a3 3 0 1 1 0 6v2a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-2a3 3 0 1 1 0-6V7a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2Z",
        ),
      ]),
      svg.path([a("d", "M9 9h.01")]),
      svg.path([a("d", "m15 9-6 6")]),
      svg.path([a("d", "M15 15h.01")]),
    ],
  )
}


pub fn ticket_plus(attributes: List(Attribute(a))) {
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
          "M2 9a3 3 0 0 1 0 6v2a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-2a3 3 0 0 1 0-6V7a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2Z",
        ),
      ]),
      svg.path([a("d", "M9 12h6")]),
      svg.path([a("d", "M12 9v6")]),
    ],
  )
}


pub fn ticket_slash(attributes: List(Attribute(a))) {
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
          "M2 9a3 3 0 0 1 0 6v2a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-2a3 3 0 0 1 0-6V7a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2Z",
        ),
      ]),
      svg.path([a("d", "m9.5 14.5 5-5")]),
    ],
  )
}


pub fn ticket_x(attributes: List(Attribute(a))) {
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
          "M2 9a3 3 0 0 1 0 6v2a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-2a3 3 0 0 1 0-6V7a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2Z",
        ),
      ]),
      svg.path([a("d", "m9.5 14.5 5-5")]),
      svg.path([a("d", "m9.5 9.5 5 5")]),
    ],
  )
}


pub fn tickets(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m3.173 8.18 11-5a2 2 0 0 1 2.647.993L18.56 8")]),
      svg.path([a("d", "M6 10V8")]),
      svg.path([a("d", "M6 14v1")]),
      svg.path([a("d", "M6 19v2")]),
      svg.rect([
        a("rx", "2"),
        a("height", "13"),
        a("width", "20"),
        a("y", "8"),
        a("x", "2"),
      ]),
    ],
  )
}


pub fn tickets_plane(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10.5 17h1.227a2 2 0 0 0 1.345-.52L18 12")]),
      svg.path([a("d", "m12 13.5 3.794.506")]),
      svg.path([a("d", "m3.173 8.18 11-5a2 2 0 0 1 2.647.993L18.56 8")]),
      svg.path([a("d", "M6 10V8")]),
      svg.path([a("d", "M6 14v1")]),
      svg.path([a("d", "M6 19v2")]),
      svg.rect([
        a("rx", "2"),
        a("height", "13"),
        a("width", "20"),
        a("y", "8"),
        a("x", "2"),
      ]),
    ],
  )
}


pub fn timer(attributes: List(Attribute(a))) {
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
      svg.line([
        a("y2", "2"),
        a("y1", "2"),
        a("x2", "14"),
        a("x1", "10"),
      ]),
      svg.line([
        a("y2", "11"),
        a("y1", "14"),
        a("x2", "15"),
        a("x1", "12"),
      ]),
      svg.circle([
        a("r", "8"),
        a("cy", "14"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn timer_off(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10 2h4")]),
      svg.path([a("d", "M4.6 11a8 8 0 0 0 1.7 8.7 8 8 0 0 0 8.7 1.7")]),
      svg.path([a("d", "M7.4 7.4a8 8 0 0 1 10.3 1 8 8 0 0 1 .9 10.2")]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([a("d", "M12 12v-2")]),
    ],
  )
}


pub fn timer_reset(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10 2h4")]),
      svg.path([a("d", "M12 14v-4")]),
      svg.path([a("d", "M4 13a8 8 0 0 1 8-7 8 8 0 1 1-5.3 14L4 17.6")]),
      svg.path([a("d", "M9 17H4v5")]),
    ],
  )
}


pub fn toggle_left(attributes: List(Attribute(a))) {
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
      svg.circle([
        a("r", "3"),
        a("cy", "12"),
        a("cx", "9"),
      ]),
      svg.rect([
        a("rx", "7"),
        a("y", "5"),
        a("x", "2"),
        a("height", "14"),
        a("width", "20"),
      ]),
    ],
  )
}


pub fn toggle_right(attributes: List(Attribute(a))) {
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
      svg.circle([
        a("r", "3"),
        a("cy", "12"),
        a("cx", "15"),
      ]),
      svg.rect([
        a("rx", "7"),
        a("y", "5"),
        a("x", "2"),
        a("height", "14"),
        a("width", "20"),
      ]),
    ],
  )
}


pub fn toilet(attributes: List(Attribute(a))) {
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
          "M7 12h13a1 1 0 0 1 1 1 5 5 0 0 1-5 5h-.598a.5.5 0 0 0-.424.765l1.544 2.47a.5.5 0 0 1-.424.765H5.402a.5.5 0 0 1-.424-.765L7 18",
        ),
      ]),
      svg.path([
        a("d", "M8 18a5 5 0 0 1-5-5V4a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v8"),
      ]),
    ],
  )
}


pub fn tool_case(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10 15h4")]),
      svg.path([
        a(
          "d",
          "m14.817 10.995-.971-1.45 1.034-1.232a2 2 0 0 0-2.025-3.238l-1.82.364L9.91 3.885a2 2 0 0 0-3.625.748L6.141 6.55l-1.725.426a2 2 0 0 0-.19 3.756l.657.27",
        ),
      ]),
      svg.path([
        a(
          "d",
          "m18.822 10.995 2.26-5.38a1 1 0 0 0-.557-1.318L16.954 2.9a1 1 0 0 0-1.281.533l-.924 2.122",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M4 12.006A1 1 0 0 1 4.994 11H19a1 1 0 0 1 1 1v7a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2z",
        ),
      ]),
    ],
  )
}


pub fn toolbox(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16 12v4")]),
      svg.path([
        a(
          "d",
          "M16 6a2 2 0 0 1 1.414.586l4 4A2 2 0 0 1 22 12v7a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2v-7a2 2 0 0 1 .586-1.414l4-4A2 2 0 0 1 8 6z",
        ),
      ]),
      svg.path([a("d", "M16 6V4a2 2 0 0 0-2-2h-4a2 2 0 0 0-2 2v2")]),
      svg.path([a("d", "M2 14h20")]),
      svg.path([a("d", "M8 12v4")]),
    ],
  )
}


pub fn tornado(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M21 4H3")]),
      svg.path([a("d", "M18 8H6")]),
      svg.path([a("d", "M19 12H9")]),
      svg.path([a("d", "M16 16h-6")]),
      svg.path([a("d", "M11 20H9")]),
    ],
  )
}


pub fn torus(attributes: List(Attribute(a))) {
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
      svg.ellipse([
        a("ry", "2"),
        a("rx", "3"),
        a("cy", "11"),
        a("cx", "12"),
      ]),
      svg.ellipse([
        a("ry", "8.5"),
        a("rx", "10"),
        a("cy", "12.5"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn touchpad(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M2 14h20")]),
      svg.path([a("d", "M12 20v-6")]),
    ],
  )
}


pub fn touchpad_off(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 20v-6")]),
      svg.path([a("d", "M19.656 14H22")]),
      svg.path([a("d", "M2 14h12")]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([a("d", "M20 20H4a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2")]),
      svg.path([a("d", "M9.656 4H20a2 2 0 0 1 2 2v10.344")]),
    ],
  )
}


pub fn towel_rack(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M22 7h-2")]),
      svg.path([
        a(
          "d",
          "M6.5 3h11A2.5 2.5 0 0 1 20 5.5V20a1 1 0 0 1-1 1h-9a1 1 0 0 1-1-1V5.5a1 1 0 0 0-5 0V17a1 1 0 0 0 1 1h4",
        ),
      ]),
      svg.path([a("d", "M9 7H2")]),
    ],
  )
}


pub fn tower_control(attributes: List(Attribute(a))) {
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
          "M18.2 12.27 20 6H4l1.8 6.27a1 1 0 0 0 .95.73h10.5a1 1 0 0 0 .96-.73Z",
        ),
      ]),
      svg.path([a("d", "M8 13v9")]),
      svg.path([a("d", "M16 22v-9")]),
      svg.path([a("d", "m9 6 1 7")]),
      svg.path([a("d", "m15 6-1 7")]),
      svg.path([a("d", "M12 6V2")]),
      svg.path([a("d", "M13 2h-2")]),
    ],
  )
}


pub fn toy_brick(attributes: List(Attribute(a))) {
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
        a("y", "8"),
        a("x", "3"),
        a("height", "12"),
        a("width", "18"),
      ]),
      svg.path([a("d", "M10 8V5c0-.6-.4-1-1-1H6a1 1 0 0 0-1 1v3")]),
      svg.path([a("d", "M19 8V5c0-.6-.4-1-1-1h-3a1 1 0 0 0-1 1v3")]),
    ],
  )
}


pub fn tractor(attributes: List(Attribute(a))) {
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
          "m10 11 11 .9a1 1 0 0 1 .8 1.1l-.665 4.158a1 1 0 0 1-.988.842H20",
        ),
      ]),
      svg.path([a("d", "M16 18h-5")]),
      svg.path([a("d", "M18 5a1 1 0 0 0-1 1v5.573")]),
      svg.path([a("d", "M3 4h8.129a1 1 0 0 1 .99.863L13 11.246")]),
      svg.path([a("d", "M4 11V4")]),
      svg.path([a("d", "M7 15h.01")]),
      svg.path([a("d", "M8 10.1V4")]),
      svg.circle([
        a("r", "2"),
        a("cy", "18"),
        a("cx", "18"),
      ]),
      svg.circle([
        a("r", "5"),
        a("cy", "15"),
        a("cx", "7"),
      ]),
    ],
  )
}


pub fn traffic_cone(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16.05 10.966a5 2.5 0 0 1-8.1 0")]),
      svg.path([
        a(
          "d",
          "m16.923 14.049 4.48 2.04a1 1 0 0 1 .001 1.831l-8.574 3.9a2 2 0 0 1-1.66 0l-8.574-3.91a1 1 0 0 1 0-1.83l4.484-2.04",
        ),
      ]),
      svg.path([
        a("d", "M16.949 14.14a5 2.5 0 1 1-9.9 0L10.063 3.5a2 2 0 0 1 3.874 0z"),
      ]),
      svg.path([a("d", "M9.194 6.57a5 2.5 0 0 0 5.61 0")]),
    ],
  )
}


pub fn train_front(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M8 3.1V7a4 4 0 0 0 8 0V3.1")]),
      svg.path([a("d", "m9 15-1-1")]),
      svg.path([a("d", "m15 15 1-1")]),
      svg.path([
        a("d", "M9 19c-2.8 0-5-2.2-5-5v-4a8 8 0 0 1 16 0v4c0 2.8-2.2 5-5 5Z"),
      ]),
      svg.path([a("d", "m8 19-2 3")]),
      svg.path([a("d", "m16 19 2 3")]),
    ],
  )
}


pub fn train_front_tunnel(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M2 22V12a10 10 0 1 1 20 0v10")]),
      svg.path([a("d", "M15 6.8v1.4a3 2.8 0 1 1-6 0V6.8")]),
      svg.path([a("d", "M10 15h.01")]),
      svg.path([a("d", "M14 15h.01")]),
      svg.path([
        a("d", "M10 19a4 4 0 0 1-4-4v-3a6 6 0 1 1 12 0v3a4 4 0 0 1-4 4Z"),
      ]),
      svg.path([a("d", "m9 19-2 3")]),
      svg.path([a("d", "m15 19 2 3")]),
    ],
  )
}


pub fn train_track(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M2 17 17 2")]),
      svg.path([a("d", "m2 14 8 8")]),
      svg.path([a("d", "m5 11 8 8")]),
      svg.path([a("d", "m8 8 8 8")]),
      svg.path([a("d", "m11 5 8 8")]),
      svg.path([a("d", "m14 2 8 8")]),
      svg.path([a("d", "M7 22 22 7")]),
    ],
  )
}


pub fn tram_front(attributes: List(Attribute(a))) {
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
        a("y", "3"),
        a("x", "4"),
        a("height", "16"),
        a("width", "16"),
      ]),
      svg.path([a("d", "M4 11h16")]),
      svg.path([a("d", "M12 3v8")]),
      svg.path([a("d", "m8 19-2 3")]),
      svg.path([a("d", "m18 22-2-3")]),
      svg.path([a("d", "M8 15h.01")]),
      svg.path([a("d", "M16 15h.01")]),
    ],
  )
}


pub fn transgender(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 16v6")]),
      svg.path([a("d", "M14 20h-4")]),
      svg.path([a("d", "M18 2h4v4")]),
      svg.path([a("d", "m2 2 7.17 7.17")]),
      svg.path([a("d", "M2 5.355V2h3.357")]),
      svg.path([a("d", "m22 2-7.17 7.17")]),
      svg.path([a("d", "M8 5 5 8")]),
      svg.circle([
        a("r", "4"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn trash(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6")]),
      svg.path([a("d", "M3 6h18")]),
      svg.path([a("d", "M8 6V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2")]),
    ],
  )
}


pub fn trash_2(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10 11v6")]),
      svg.path([a("d", "M14 11v6")]),
      svg.path([a("d", "M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6")]),
      svg.path([a("d", "M3 6h18")]),
      svg.path([a("d", "M8 6V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2")]),
    ],
  )
}


pub fn tree_deciduous(attributes: List(Attribute(a))) {
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
          "M8 19a4 4 0 0 1-2.24-7.32A3.5 3.5 0 0 1 9 6.03V6a3 3 0 1 1 6 0v.04a3.5 3.5 0 0 1 3.24 5.65A4 4 0 0 1 16 19Z",
        ),
      ]),
      svg.path([a("d", "M12 19v3")]),
    ],
  )
}


pub fn tree_palm(attributes: List(Attribute(a))) {
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
        a("d", "M13 8c0-2.76-2.46-5-5.5-5S2 5.24 2 8h2l1-1 1 1h4"),
      ]),
      svg.path([
        a(
          "d",
          "M13 7.14A5.82 5.82 0 0 1 16.5 6c3.04 0 5.5 2.24 5.5 5h-3l-1-1-1 1h-3",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M5.89 9.71c-2.15 2.15-2.3 5.47-.35 7.43l4.24-4.25.7-.7.71-.71 2.12-2.12c-1.95-1.96-5.27-1.8-7.42.35",
        ),
      ]),
      svg.path([
        a("d", "M11 15.5c.5 2.5-.17 4.5-1 6.5h4c2-5.5-.5-12-1-14"),
      ]),
    ],
  )
}


pub fn tree_pine(attributes: List(Attribute(a))) {
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
          "m17 14 3 3.3a1 1 0 0 1-.7 1.7H4.7a1 1 0 0 1-.7-1.7L7 14h-.3a1 1 0 0 1-.7-1.7L9 9h-.2A1 1 0 0 1 8 7.3L12 3l4 4.3a1 1 0 0 1-.8 1.7H15l3 3.3a1 1 0 0 1-.7 1.7H17Z",
        ),
      ]),
      svg.path([a("d", "M12 22v-3")]),
    ],
  )
}


pub fn trees(attributes: List(Attribute(a))) {
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
        a("d", "M10 10v.2A3 3 0 0 1 8.9 16H5a3 3 0 0 1-1-5.8V10a3 3 0 0 1 6 0Z"),
      ]),
      svg.path([a("d", "M7 16v6")]),
      svg.path([a("d", "M13 19v3")]),
      svg.path([
        a(
          "d",
          "M12 19h8.3a1 1 0 0 0 .7-1.7L18 14h.3a1 1 0 0 0 .7-1.7L16 9h.2a1 1 0 0 0 .8-1.7L13 3l-1.4 1.5",
        ),
      ]),
    ],
  )
}


pub fn trending_down(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16 17h6v-6")]),
      svg.path([a("d", "m22 17-8.5-8.5-5 5L2 7")]),
    ],
  )
}


pub fn trending_up(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16 7h6v6")]),
      svg.path([a("d", "m22 7-8.5 8.5-5-5L2 17")]),
    ],
  )
}


pub fn trending_up_down(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M14.828 14.828 21 21")]),
      svg.path([a("d", "M21 16v5h-5")]),
      svg.path([a("d", "m21 3-9 9-4-4-6 6")]),
      svg.path([a("d", "M21 8V3h-5")]),
    ],
  )
}


pub fn triangle(attributes: List(Attribute(a))) {
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
          "M13.73 4a2 2 0 0 0-3.46 0l-8 14A2 2 0 0 0 4 21h16a2 2 0 0 0 1.73-3Z",
        ),
      ]),
    ],
  )
}


pub fn triangle_alert(attributes: List(Attribute(a))) {
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
          "m21.73 18-8-14a2 2 0 0 0-3.48 0l-8 14A2 2 0 0 0 4 21h16a2 2 0 0 0 1.73-3",
        ),
      ]),
      svg.path([a("d", "M12 9v4")]),
      svg.path([a("d", "M12 17h.01")]),
    ],
  )
}


pub fn triangle_dashed(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10.17 4.193a2 2 0 0 1 3.666.013")]),
      svg.path([a("d", "M14 21h2")]),
      svg.path([a("d", "m15.874 7.743 1 1.732")]),
      svg.path([a("d", "m18.849 12.952 1 1.732")]),
      svg.path([a("d", "M21.824 18.18a2 2 0 0 1-1.835 2.824")]),
      svg.path([a("d", "M4.024 21a2 2 0 0 1-1.839-2.839")]),
      svg.path([a("d", "m5.136 12.952-1 1.732")]),
      svg.path([a("d", "M8 21h2")]),
      svg.path([a("d", "m8.102 7.743-1 1.732")]),
    ],
  )
}


pub fn triangle_right(attributes: List(Attribute(a))) {
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
          "M22 18a2 2 0 0 1-2 2H3c-1.1 0-1.3-.6-.4-1.3L20.4 4.3c.9-.7 1.6-.4 1.6.7Z",
        ),
      ]),
    ],
  )
}


pub fn trophy(attributes: List(Attribute(a))) {
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
        a("d", "M10 14.66v1.626a2 2 0 0 1-.976 1.696A5 5 0 0 0 7 21.978"),
      ]),
      svg.path([
        a("d", "M14 14.66v1.626a2 2 0 0 0 .976 1.696A5 5 0 0 1 17 21.978"),
      ]),
      svg.path([a("d", "M18 9h1.5a1 1 0 0 0 0-5H18")]),
      svg.path([a("d", "M4 22h16")]),
      svg.path([
        a("d", "M6 9a6 6 0 0 0 12 0V3a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1z"),
      ]),
      svg.path([a("d", "M6 9H4.5a1 1 0 0 1 0-5H6")]),
    ],
  )
}


pub fn truck(attributes: List(Attribute(a))) {
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
        a("d", "M14 18V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v11a1 1 0 0 0 1 1h2"),
      ]),
      svg.path([a("d", "M15 18H9")]),
      svg.path([
        a(
          "d",
          "M19 18h2a1 1 0 0 0 1-1v-3.65a1 1 0 0 0-.22-.624l-3.48-4.35A1 1 0 0 0 17.52 8H14",
        ),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "18"),
        a("cx", "17"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "18"),
        a("cx", "7"),
      ]),
    ],
  )
}


pub fn truck_electric(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M14 19V7a2 2 0 0 0-2-2H9")]),
      svg.path([a("d", "M15 19H9")]),
      svg.path([
        a(
          "d",
          "M19 19h2a1 1 0 0 0 1-1v-3.65a1 1 0 0 0-.22-.62L18.3 9.38a1 1 0 0 0-.78-.38H14",
        ),
      ]),
      svg.path([a("d", "M2 13v5a1 1 0 0 0 1 1h2")]),
      svg.path([
        a(
          "d",
          "M4 3 2.15 5.15a.495.495 0 0 0 .35.86h2.15a.47.47 0 0 1 .35.86L3 9.02",
        ),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "19"),
        a("cx", "17"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "19"),
        a("cx", "7"),
      ]),
    ],
  )
}


pub fn turkish_lira(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M15 4 5 9")]),
      svg.path([a("d", "m15 8.5-10 5")]),
      svg.path([a("d", "M18 12a9 9 0 0 1-9 9V3")]),
    ],
  )
}


pub fn turntable(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10 12.01h.01")]),
      svg.path([a("d", "M18 8v4a8 8 0 0 1-1.07 4")]),
      svg.circle([
        a("r", "4"),
        a("cy", "12"),
        a("cx", "10"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("height", "16"),
        a("width", "20"),
        a("y", "4"),
        a("x", "2"),
      ]),
    ],
  )
}


pub fn turtle(attributes: List(Attribute(a))) {
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
          "m12 10 2 4v3a1 1 0 0 0 1 1h2a1 1 0 0 0 1-1v-3a8 8 0 1 0-16 0v3a1 1 0 0 0 1 1h2a1 1 0 0 0 1-1v-3l2-4h4Z",
        ),
      ]),
      svg.path([a("d", "M4.82 7.9 8 10")]),
      svg.path([a("d", "M15.18 7.9 12 10")]),
      svg.path([a("d", "M16.93 10H20a2 2 0 0 1 0 4H2")]),
    ],
  )
}


pub fn tv(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m17 2-5 5-5-5")]),
      svg.rect([
        a("rx", "2"),
        a("y", "7"),
        a("x", "2"),
        a("height", "15"),
        a("width", "20"),
      ]),
    ],
  )
}


pub fn tv_minimal(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M7 21h10")]),
      svg.rect([
        a("rx", "2"),
        a("y", "3"),
        a("x", "2"),
        a("height", "14"),
        a("width", "20"),
      ]),
    ],
  )
}


pub fn tv_minimal_play(attributes: List(Attribute(a))) {
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
          "M15.033 9.44a.647.647 0 0 1 0 1.12l-4.065 2.352a.645.645 0 0 1-.968-.56V7.648a.645.645 0 0 1 .967-.56z",
        ),
      ]),
      svg.path([a("d", "M7 21h10")]),
      svg.rect([
        a("rx", "2"),
        a("y", "3"),
        a("x", "2"),
        a("height", "14"),
        a("width", "20"),
      ]),
    ],
  )
}


pub fn type_(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 4v16")]),
      svg.path([a("d", "M4 7V5a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v2")]),
      svg.path([a("d", "M9 20h6")]),
    ],
  )
}


pub fn type_outline(attributes: List(Attribute(a))) {
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
          "M14 16.5a.5.5 0 0 0 .5.5h.5a2 2 0 0 1 0 4H9a2 2 0 0 1 0-4h.5a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5V8a2 2 0 0 1-4 0V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v3a2 2 0 0 1-4 0v-.5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5Z",
        ),
      ]),
    ],
  )
}
