import lustre/attribute.{type Attribute, attribute as a}
import lustre/element/svg

pub fn a_arrow_down(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m14 12 4 4 4-4")]),
      svg.path([a("d", "M18 16V7")]),
      svg.path([a("d", "m2 16 4.039-9.69a.5.5 0 0 1 .923 0L11 16")]),
      svg.path([a("d", "M3.304 13h6.392")]),
    ],
  )
}


pub fn a_arrow_up(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m14 11 4-4 4 4")]),
      svg.path([a("d", "M18 16V7")]),
      svg.path([a("d", "m2 16 4.039-9.69a.5.5 0 0 1 .923 0L11 16")]),
      svg.path([a("d", "M3.304 13h6.392")]),
    ],
  )
}


pub fn a_large_small(attributes: List(Attribute(a))) {
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
        a("d", "m15 16 2.536-7.328a1.02 1.02 1 0 1 1.928 0L22 16"),
      ]),
      svg.path([a("d", "M15.697 14h5.606")]),
      svg.path([a("d", "m2 16 4.039-9.69a.5.5 0 0 1 .923 0L11 16")]),
      svg.path([a("d", "M3.304 13h6.392")]),
    ],
  )
}


pub fn accessibility(attributes: List(Attribute(a))) {
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
        a("r", "1"),
        a("cy", "4"),
        a("cx", "16"),
      ]),
      svg.path([a("d", "m18 19 1-7-6 1")]),
      svg.path([a("d", "m5 8 3-3 5.5 3-2.36 3.5")]),
      svg.path([a("d", "M4.24 14.5a5 5 0 0 0 6.88 6")]),
      svg.path([a("d", "M13.76 17.5a5 5 0 0 0-6.88-6")]),
    ],
  )
}


pub fn activity(attributes: List(Attribute(a))) {
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
          "M22 12h-2.48a2 2 0 0 0-1.93 1.46l-2.35 8.36a.25.25 0 0 1-.48 0L9.24 2.18a.25.25 0 0 0-.48 0l-2.35 8.36A2 2 0 0 1 4.49 12H2",
        ),
      ]),
    ],
  )
}


pub fn air_vent(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M18 17.5a2.5 2.5 0 1 1-4 2.03V12")]),
      svg.path([
        a(
          "d",
          "M6 12H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-2",
        ),
      ]),
      svg.path([a("d", "M6 8h12")]),
      svg.path([a("d", "M6.6 15.572A2 2 0 1 0 10 17v-5")]),
    ],
  )
}


pub fn airplay(attributes: List(Attribute(a))) {
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
          "M5 17H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-1",
        ),
      ]),
      svg.path([a("d", "m12 15 5 6H7Z")]),
    ],
  )
}


pub fn alarm_clock(attributes: List(Attribute(a))) {
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
        a("r", "8"),
        a("cy", "13"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M12 9v4l2 2")]),
      svg.path([a("d", "M5 3 2 6")]),
      svg.path([a("d", "m22 6-3-3")]),
      svg.path([a("d", "M6.38 18.7 4 21")]),
      svg.path([a("d", "M17.64 18.67 20 21")]),
    ],
  )
}


pub fn alarm_clock_check(attributes: List(Attribute(a))) {
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
        a("r", "8"),
        a("cy", "13"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M5 3 2 6")]),
      svg.path([a("d", "m22 6-3-3")]),
      svg.path([a("d", "M6.38 18.7 4 21")]),
      svg.path([a("d", "M17.64 18.67 20 21")]),
      svg.path([a("d", "m9 13 2 2 4-4")]),
    ],
  )
}


pub fn alarm_clock_minus(attributes: List(Attribute(a))) {
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
        a("r", "8"),
        a("cy", "13"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M5 3 2 6")]),
      svg.path([a("d", "m22 6-3-3")]),
      svg.path([a("d", "M6.38 18.7 4 21")]),
      svg.path([a("d", "M17.64 18.67 20 21")]),
      svg.path([a("d", "M9 13h6")]),
    ],
  )
}


pub fn alarm_clock_off(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M6.87 6.87a8 8 0 1 0 11.26 11.26")]),
      svg.path([a("d", "M19.9 14.25a8 8 0 0 0-9.15-9.15")]),
      svg.path([a("d", "m22 6-3-3")]),
      svg.path([a("d", "M6.26 18.67 4 21")]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([a("d", "M4 4 2 6")]),
    ],
  )
}


pub fn alarm_clock_plus(attributes: List(Attribute(a))) {
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
        a("r", "8"),
        a("cy", "13"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M5 3 2 6")]),
      svg.path([a("d", "m22 6-3-3")]),
      svg.path([a("d", "M6.38 18.7 4 21")]),
      svg.path([a("d", "M17.64 18.67 20 21")]),
      svg.path([a("d", "M12 10v6")]),
      svg.path([a("d", "M9 13h6")]),
    ],
  )
}


pub fn alarm_smoke(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M11 21c0-2.5 2-2.5 2-5")]),
      svg.path([a("d", "M16 21c0-2.5 2-2.5 2-5")]),
      svg.path([
        a("d", "m19 8-.8 3a1.25 1.25 0 0 1-1.2 1H7a1.25 1.25 0 0 1-1.2-1L5 8"),
      ]),
      svg.path([
        a(
          "d",
          "M21 3a1 1 0 0 1 1 1v2a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V4a1 1 0 0 1 1-1z",
        ),
      ]),
      svg.path([a("d", "M6 21c0-2.5 2-2.5 2-5")]),
    ],
  )
}


pub fn album(attributes: List(Attribute(a))) {
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
        a("y", "3"),
        a("x", "3"),
        a("height", "18"),
        a("width", "18"),
      ]),
      svg.polyline([a("points", "11 3 11 11 14 8 17 11 17 3")]),
    ],
  )
}


pub fn align_center_horizontal(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M2 12h20")]),
      svg.path([a("d", "M10 16v4a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2v-4")]),
      svg.path([a("d", "M10 8V4a2 2 0 0 0-2-2H6a2 2 0 0 0-2 2v4")]),
      svg.path([a("d", "M20 16v1a2 2 0 0 1-2 2h-2a2 2 0 0 1-2-2v-1")]),
      svg.path([a("d", "M14 8V7c0-1.1.9-2 2-2h2a2 2 0 0 1 2 2v1")]),
    ],
  )
}


pub fn align_center_vertical(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 2v20")]),
      svg.path([a("d", "M8 10H4a2 2 0 0 1-2-2V6c0-1.1.9-2 2-2h4")]),
      svg.path([a("d", "M16 10h4a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-4")]),
      svg.path([a("d", "M8 20H7a2 2 0 0 1-2-2v-2c0-1.1.9-2 2-2h1")]),
      svg.path([a("d", "M16 14h1a2 2 0 0 1 2 2v2a2 2 0 0 1-2 2h-1")]),
    ],
  )
}


pub fn align_end_horizontal(attributes: List(Attribute(a))) {
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
        a("y", "2"),
        a("x", "4"),
        a("height", "16"),
        a("width", "6"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("y", "9"),
        a("x", "14"),
        a("height", "9"),
        a("width", "6"),
      ]),
      svg.path([a("d", "M22 22H2")]),
    ],
  )
}


pub fn align_end_vertical(attributes: List(Attribute(a))) {
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
        a("height", "6"),
        a("width", "16"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("y", "14"),
        a("x", "9"),
        a("height", "6"),
        a("width", "9"),
      ]),
      svg.path([a("d", "M22 22V2")]),
    ],
  )
}


pub fn align_horizontal_distribute_center(attributes: List(Attribute(a))) {
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
        a("y", "5"),
        a("x", "4"),
        a("height", "14"),
        a("width", "6"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("y", "7"),
        a("x", "14"),
        a("height", "10"),
        a("width", "6"),
      ]),
      svg.path([a("d", "M17 22v-5")]),
      svg.path([a("d", "M17 7V2")]),
      svg.path([a("d", "M7 22v-3")]),
      svg.path([a("d", "M7 5V2")]),
    ],
  )
}


pub fn align_horizontal_distribute_end(attributes: List(Attribute(a))) {
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
        a("y", "5"),
        a("x", "4"),
        a("height", "14"),
        a("width", "6"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("y", "7"),
        a("x", "14"),
        a("height", "10"),
        a("width", "6"),
      ]),
      svg.path([a("d", "M10 2v20")]),
      svg.path([a("d", "M20 2v20")]),
    ],
  )
}


pub fn align_horizontal_distribute_start(attributes: List(Attribute(a))) {
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
        a("y", "5"),
        a("x", "4"),
        a("height", "14"),
        a("width", "6"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("y", "7"),
        a("x", "14"),
        a("height", "10"),
        a("width", "6"),
      ]),
      svg.path([a("d", "M4 2v20")]),
      svg.path([a("d", "M14 2v20")]),
    ],
  )
}


pub fn align_horizontal_justify_center(attributes: List(Attribute(a))) {
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
        a("y", "5"),
        a("x", "2"),
        a("height", "14"),
        a("width", "6"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("y", "7"),
        a("x", "16"),
        a("height", "10"),
        a("width", "6"),
      ]),
      svg.path([a("d", "M12 2v20")]),
    ],
  )
}


pub fn align_horizontal_justify_end(attributes: List(Attribute(a))) {
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
        a("y", "5"),
        a("x", "2"),
        a("height", "14"),
        a("width", "6"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("y", "7"),
        a("x", "12"),
        a("height", "10"),
        a("width", "6"),
      ]),
      svg.path([a("d", "M22 2v20")]),
    ],
  )
}


pub fn align_horizontal_justify_start(attributes: List(Attribute(a))) {
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
        a("y", "5"),
        a("x", "6"),
        a("height", "14"),
        a("width", "6"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("y", "7"),
        a("x", "16"),
        a("height", "10"),
        a("width", "6"),
      ]),
      svg.path([a("d", "M2 2v20")]),
    ],
  )
}


pub fn align_horizontal_space_around(attributes: List(Attribute(a))) {
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
        a("y", "7"),
        a("x", "9"),
        a("height", "10"),
        a("width", "6"),
      ]),
      svg.path([a("d", "M4 22V2")]),
      svg.path([a("d", "M20 22V2")]),
    ],
  )
}


pub fn align_horizontal_space_between(attributes: List(Attribute(a))) {
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
        a("y", "5"),
        a("x", "3"),
        a("height", "14"),
        a("width", "6"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("y", "7"),
        a("x", "15"),
        a("height", "10"),
        a("width", "6"),
      ]),
      svg.path([a("d", "M3 2v20")]),
      svg.path([a("d", "M21 2v20")]),
    ],
  )
}


pub fn align_start_horizontal(attributes: List(Attribute(a))) {
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
        a("y", "6"),
        a("x", "4"),
        a("height", "16"),
        a("width", "6"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("y", "6"),
        a("x", "14"),
        a("height", "9"),
        a("width", "6"),
      ]),
      svg.path([a("d", "M22 2H2")]),
    ],
  )
}


pub fn align_start_vertical(attributes: List(Attribute(a))) {
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
        a("y", "14"),
        a("x", "6"),
        a("height", "6"),
        a("width", "9"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("y", "4"),
        a("x", "6"),
        a("height", "6"),
        a("width", "16"),
      ]),
      svg.path([a("d", "M2 2v20")]),
    ],
  )
}


pub fn align_vertical_distribute_center(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M22 17h-3")]),
      svg.path([a("d", "M22 7h-5")]),
      svg.path([a("d", "M5 17H2")]),
      svg.path([a("d", "M7 7H2")]),
      svg.rect([
        a("rx", "2"),
        a("height", "6"),
        a("width", "14"),
        a("y", "14"),
        a("x", "5"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("height", "6"),
        a("width", "10"),
        a("y", "4"),
        a("x", "7"),
      ]),
    ],
  )
}


pub fn align_vertical_distribute_end(attributes: List(Attribute(a))) {
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
        a("y", "14"),
        a("x", "5"),
        a("height", "6"),
        a("width", "14"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("y", "4"),
        a("x", "7"),
        a("height", "6"),
        a("width", "10"),
      ]),
      svg.path([a("d", "M2 20h20")]),
      svg.path([a("d", "M2 10h20")]),
    ],
  )
}


pub fn align_vertical_distribute_start(attributes: List(Attribute(a))) {
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
        a("y", "14"),
        a("x", "5"),
        a("height", "6"),
        a("width", "14"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("y", "4"),
        a("x", "7"),
        a("height", "6"),
        a("width", "10"),
      ]),
      svg.path([a("d", "M2 14h20")]),
      svg.path([a("d", "M2 4h20")]),
    ],
  )
}


pub fn align_vertical_justify_center(attributes: List(Attribute(a))) {
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
        a("y", "16"),
        a("x", "5"),
        a("height", "6"),
        a("width", "14"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("y", "2"),
        a("x", "7"),
        a("height", "6"),
        a("width", "10"),
      ]),
      svg.path([a("d", "M2 12h20")]),
    ],
  )
}


pub fn align_vertical_justify_end(attributes: List(Attribute(a))) {
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
        a("y", "12"),
        a("x", "5"),
        a("height", "6"),
        a("width", "14"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("y", "2"),
        a("x", "7"),
        a("height", "6"),
        a("width", "10"),
      ]),
      svg.path([a("d", "M2 22h20")]),
    ],
  )
}


pub fn align_vertical_justify_start(attributes: List(Attribute(a))) {
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
        a("y", "16"),
        a("x", "5"),
        a("height", "6"),
        a("width", "14"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("y", "6"),
        a("x", "7"),
        a("height", "6"),
        a("width", "10"),
      ]),
      svg.path([a("d", "M2 2h20")]),
    ],
  )
}


pub fn align_vertical_space_around(attributes: List(Attribute(a))) {
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
        a("y", "9"),
        a("x", "7"),
        a("height", "6"),
        a("width", "10"),
      ]),
      svg.path([a("d", "M22 20H2")]),
      svg.path([a("d", "M22 4H2")]),
    ],
  )
}


pub fn align_vertical_space_between(attributes: List(Attribute(a))) {
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
        a("y", "15"),
        a("x", "5"),
        a("height", "6"),
        a("width", "14"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("y", "3"),
        a("x", "7"),
        a("height", "6"),
        a("width", "10"),
      ]),
      svg.path([a("d", "M2 21h20")]),
      svg.path([a("d", "M2 3h20")]),
    ],
  )
}


pub fn ambulance(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10 10H6")]),
      svg.path([
        a("d", "M14 18V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v11a1 1 0 0 0 1 1h2"),
      ]),
      svg.path([
        a(
          "d",
          "M19 18h2a1 1 0 0 0 1-1v-3.28a1 1 0 0 0-.684-.948l-1.923-.641a1 1 0 0 1-.578-.502l-1.539-3.076A1 1 0 0 0 16.382 8H14",
        ),
      ]),
      svg.path([a("d", "M8 8v4")]),
      svg.path([a("d", "M9 18h6")]),
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


pub fn ampersand(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16 12h3")]),
      svg.path([
        a(
          "d",
          "M17.5 12a8 8 0 0 1-8 8A4.5 4.5 0 0 1 5 15.5c0-6 8-4 8-8.5a3 3 0 1 0-6 0c0 3 2.5 8.5 12 13",
        ),
      ]),
    ],
  )
}


pub fn ampersands(attributes: List(Attribute(a))) {
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
          "M10 17c-5-3-7-7-7-9a2 2 0 0 1 4 0c0 2.5-5 2.5-5 6 0 1.7 1.3 3 3 3 2.8 0 5-2.2 5-5",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M22 17c-5-3-7-7-7-9a2 2 0 0 1 4 0c0 2.5-5 2.5-5 6 0 1.7 1.3 3 3 3 2.8 0 5-2.2 5-5",
        ),
      ]),
    ],
  )
}


pub fn amphora(attributes: List(Attribute(a))) {
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
          "M10 2v5.632c0 .424-.272.795-.653.982A6 6 0 0 0 6 14c.006 4 3 7 5 8",
        ),
      ]),
      svg.path([a("d", "M10 5H8a2 2 0 0 0 0 4h.68")]),
      svg.path([
        a("d", "M14 2v5.632c0 .424.272.795.652.982A6 6 0 0 1 18 14c0 4-3 7-5 8"),
      ]),
      svg.path([a("d", "M14 5h2a2 2 0 0 1 0 4h-.68")]),
      svg.path([a("d", "M18 22H6")]),
      svg.path([a("d", "M9 2h6")]),
    ],
  )
}


pub fn anchor(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 6v16")]),
      svg.path([a("d", "m19 13 2-1a9 9 0 0 1-18 0l2 1")]),
      svg.path([a("d", "M9 11h6")]),
      svg.circle([
        a("r", "2"),
        a("cy", "4"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn angry(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16 16s-1.5-2-4-2-4 2-4 2")]),
      svg.path([a("d", "M7.5 8 10 9")]),
      svg.path([a("d", "m14 9 2.5-1")]),
      svg.path([a("d", "M9 10h.01")]),
      svg.path([a("d", "M15 10h.01")]),
    ],
  )
}


pub fn annoyed(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M8 15h8")]),
      svg.path([a("d", "M8 9h2")]),
      svg.path([a("d", "M14 9h2")]),
    ],
  )
}


pub fn antenna(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M2 12 7 2")]),
      svg.path([a("d", "m7 12 5-10")]),
      svg.path([a("d", "m12 12 5-10")]),
      svg.path([a("d", "m17 12 5-10")]),
      svg.path([a("d", "M4.5 7h15")]),
      svg.path([a("d", "M12 16v6")]),
    ],
  )
}


pub fn anvil(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M7 10H6a4 4 0 0 1-4-4 1 1 0 0 1 1-1h4")]),
      svg.path([
        a(
          "d",
          "M7 5a1 1 0 0 1 1-1h13a1 1 0 0 1 1 1 7 7 0 0 1-7 7H8a1 1 0 0 1-1-1z",
        ),
      ]),
      svg.path([a("d", "M9 12v5")]),
      svg.path([a("d", "M15 12v5")]),
      svg.path([
        a(
          "d",
          "M5 20a3 3 0 0 1 3-3h8a3 3 0 0 1 3 3 1 1 0 0 1-1 1H6a1 1 0 0 1-1-1",
        ),
      ]),
    ],
  )
}


pub fn aperture(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m14.31 8 5.74 9.94")]),
      svg.path([a("d", "M9.69 8h11.48")]),
      svg.path([a("d", "m7.38 12 5.74-9.94")]),
      svg.path([a("d", "M9.69 16 3.95 6.06")]),
      svg.path([a("d", "M14.31 16H2.83")]),
      svg.path([a("d", "m16.62 12-5.74 9.94")]),
    ],
  )
}


pub fn app_window(attributes: List(Attribute(a))) {
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
        a("height", "16"),
        a("width", "20"),
        a("y", "4"),
        a("x", "2"),
      ]),
      svg.path([a("d", "M10 4v4")]),
      svg.path([a("d", "M2 8h20")]),
      svg.path([a("d", "M6 4v4")]),
    ],
  )
}


pub fn app_window_mac(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M6 8h.01")]),
      svg.path([a("d", "M10 8h.01")]),
      svg.path([a("d", "M14 8h.01")]),
    ],
  )
}


pub fn apple(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 6.528V3a1 1 0 0 1 1-1h0")]),
      svg.path([
        a(
          "d",
          "M18.237 21A15 15 0 0 0 22 11a6 6 0 0 0-10-4.472A6 6 0 0 0 2 11a15.1 15.1 0 0 0 3.763 10 3 3 0 0 0 3.648.648 5.5 5.5 0 0 1 5.178 0A3 3 0 0 0 18.237 21",
        ),
      ]),
    ],
  )
}


pub fn archive(attributes: List(Attribute(a))) {
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
        a("x", "2"),
        a("height", "5"),
        a("width", "20"),
      ]),
      svg.path([a("d", "M4 8v11a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8")]),
      svg.path([a("d", "M10 12h4")]),
    ],
  )
}


pub fn archive_restore(attributes: List(Attribute(a))) {
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
        a("x", "2"),
        a("height", "5"),
        a("width", "20"),
      ]),
      svg.path([a("d", "M4 8v11a2 2 0 0 0 2 2h2")]),
      svg.path([a("d", "M20 8v11a2 2 0 0 1-2 2h-2")]),
      svg.path([a("d", "m9 15 3-3 3 3")]),
      svg.path([a("d", "M12 12v9")]),
    ],
  )
}


pub fn archive_x(attributes: List(Attribute(a))) {
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
        a("x", "2"),
        a("height", "5"),
        a("width", "20"),
      ]),
      svg.path([a("d", "M4 8v11a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8")]),
      svg.path([a("d", "m9.5 17 5-5")]),
      svg.path([a("d", "m9.5 12 5 5")]),
    ],
  )
}


pub fn armchair(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M19 9V6a2 2 0 0 0-2-2H7a2 2 0 0 0-2 2v3")]),
      svg.path([
        a(
          "d",
          "M3 16a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-5a2 2 0 0 0-4 0v1.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V11a2 2 0 0 0-4 0z",
        ),
      ]),
      svg.path([a("d", "M5 18v2")]),
      svg.path([a("d", "M19 18v2")]),
    ],
  )
}


pub fn arrow_big_down(attributes: List(Attribute(a))) {
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
          "M9 5a1 1 0 0 1 1-1h4a1 1 0 0 1 1 1v6a1 1 0 0 0 1 1h3.293a.707.707 0 0 1 .5 1.207l-7.086 7.086a1 1 0 0 1-1.414 0l-7.086-7.086a.707.707 0 0 1 .5-1.207H8a1 1 0 0 0 1-1z",
        ),
      ]),
    ],
  )
}


pub fn arrow_big_down_dash(attributes: List(Attribute(a))) {
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
          "M14 8a1 1 0 0 1 1 1v2a1 1 0 0 0 1 1h3.293a.707.707 0 0 1 .5 1.207l-6.939 6.939a1.207 1.207 0 0 1-1.708 0l-6.94-6.94a.707.707 0 0 1 .5-1.206H8a1 1 0 0 0 1-1V9a1 1 0 0 1 1-1z",
        ),
      ]),
      svg.path([a("d", "M9 4h6")]),
    ],
  )
}


pub fn arrow_big_left(attributes: List(Attribute(a))) {
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
          "M10.793 19.793a.707.707 0 0 0 1.207-.5V16a1 1 0 0 1 1-1h6a1 1 0 0 0 1-1v-4a1 1 0 0 0-1-1h-6a1 1 0 0 1-1-1V4.707a.707.707 0 0 0-1.207-.5l-6.94 6.94a1.207 1.207 0 0 0 0 1.707z",
        ),
      ]),
    ],
  )
}


pub fn arrow_big_left_dash(attributes: List(Attribute(a))) {
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
          "M13 9a1 1 0 0 1-1-1V4.707a.707.707 0 0 0-1.207-.5l-6.94 6.94a1.207 1.207 0 0 0 0 1.707l6.94 6.94a.707.707 0 0 0 1.207-.5V16a1 1 0 0 1 1-1h2a1 1 0 0 0 1-1v-4a1 1 0 0 0-1-1z",
        ),
      ]),
      svg.path([a("d", "M20 9v6")]),
    ],
  )
}


pub fn arrow_big_right(attributes: List(Attribute(a))) {
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
          "M13.207 19.793a.707.707 0 0 1-1.207-.5V16a1 1 0 0 0-1-1H5a1 1 0 0 1-1-1v-4a1 1 0 0 1 1-1h6a1 1 0 0 0 1-1V4.707a.707.707 0 0 1 1.207-.5l6.94 6.94a1.207 1.207 0 0 1 0 1.707z",
        ),
      ]),
    ],
  )
}


pub fn arrow_big_right_dash(attributes: List(Attribute(a))) {
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
          "M11 9a1 1 0 0 0 1-1V4.707a.707.707 0 0 1 1.207-.5l6.94 6.94a1.207 1.207 0 0 1 0 1.707l-6.94 6.94a.707.707 0 0 1-1.207-.5V16a1 1 0 0 0-1-1H9a1 1 0 0 1-1-1v-4a1 1 0 0 1 1-1z",
        ),
      ]),
      svg.path([a("d", "M4 9v6")]),
    ],
  )
}


pub fn arrow_big_up(attributes: List(Attribute(a))) {
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
          "M9 19a1 1 0 0 0 1 1h4a1 1 0 0 0 1-1v-6a1 1 0 0 1 1-1h3.293a.707.707 0 0 0 .5-1.207l-7.086-7.086a1 1 0 0 0-1.414 0l-7.086 7.086a.707.707 0 0 0 .5 1.207H8a1 1 0 0 1 1 1z",
        ),
      ]),
    ],
  )
}


pub fn arrow_big_up_dash(attributes: List(Attribute(a))) {
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
          "M14 16a1 1 0 0 0 1-1v-2a1 1 0 0 1 1-1h3.293a.707.707 0 0 0 .5-1.207l-6.939-6.939a1.207 1.207 0 0 0-1.708 0l-6.94 6.94a.707.707 0 0 0 .5 1.206H8a1 1 0 0 1 1 1v2a1 1 0 0 0 1 1z",
        ),
      ]),
      svg.path([a("d", "M9 20h6")]),
    ],
  )
}


pub fn arrow_down(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 5v14")]),
      svg.path([a("d", "m19 12-7 7-7-7")]),
    ],
  )
}


pub fn arrow_down_0_1(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m3 16 4 4 4-4")]),
      svg.path([a("d", "M7 20V4")]),
      svg.rect([
        a("ry", "2"),
        a("height", "6"),
        a("width", "4"),
        a("y", "4"),
        a("x", "15"),
      ]),
      svg.path([a("d", "M17 20v-6h-2")]),
      svg.path([a("d", "M15 20h4")]),
    ],
  )
}


pub fn arrow_down_1_0(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m3 16 4 4 4-4")]),
      svg.path([a("d", "M7 20V4")]),
      svg.path([a("d", "M17 10V4h-2")]),
      svg.path([a("d", "M15 10h4")]),
      svg.rect([
        a("ry", "2"),
        a("height", "6"),
        a("width", "4"),
        a("y", "14"),
        a("x", "15"),
      ]),
    ],
  )
}


pub fn arrow_down_a_z(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m3 16 4 4 4-4")]),
      svg.path([a("d", "M7 20V4")]),
      svg.path([a("d", "M20 8h-5")]),
      svg.path([a("d", "M15 10V6.5a2.5 2.5 0 0 1 5 0V10")]),
      svg.path([a("d", "M15 14h5l-5 6h5")]),
    ],
  )
}


pub fn arrow_down_from_line(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M19 3H5")]),
      svg.path([a("d", "M12 21V7")]),
      svg.path([a("d", "m6 15 6 6 6-6")]),
    ],
  )
}


pub fn arrow_down_left(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M17 7 7 17")]),
      svg.path([a("d", "M17 17H7V7")]),
    ],
  )
}


pub fn arrow_down_narrow_wide(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m3 16 4 4 4-4")]),
      svg.path([a("d", "M7 20V4")]),
      svg.path([a("d", "M11 4h4")]),
      svg.path([a("d", "M11 8h7")]),
      svg.path([a("d", "M11 12h10")]),
    ],
  )
}


pub fn arrow_down_right(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m7 7 10 10")]),
      svg.path([a("d", "M17 7v10H7")]),
    ],
  )
}


pub fn arrow_down_to_dot(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 2v14")]),
      svg.path([a("d", "m19 9-7 7-7-7")]),
      svg.circle([
        a("r", "1"),
        a("cy", "21"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn arrow_down_to_line(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 17V3")]),
      svg.path([a("d", "m6 11 6 6 6-6")]),
      svg.path([a("d", "M19 21H5")]),
    ],
  )
}


pub fn arrow_down_up(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m3 16 4 4 4-4")]),
      svg.path([a("d", "M7 20V4")]),
      svg.path([a("d", "m21 8-4-4-4 4")]),
      svg.path([a("d", "M17 4v16")]),
    ],
  )
}


pub fn arrow_down_wide_narrow(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m3 16 4 4 4-4")]),
      svg.path([a("d", "M7 20V4")]),
      svg.path([a("d", "M11 4h10")]),
      svg.path([a("d", "M11 8h7")]),
      svg.path([a("d", "M11 12h4")]),
    ],
  )
}


pub fn arrow_down_z_a(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m3 16 4 4 4-4")]),
      svg.path([a("d", "M7 4v16")]),
      svg.path([a("d", "M15 4h5l-5 6h5")]),
      svg.path([a("d", "M15 20v-3.5a2.5 2.5 0 0 1 5 0V20")]),
      svg.path([a("d", "M20 18h-5")]),
    ],
  )
}


pub fn arrow_left(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m12 19-7-7 7-7")]),
      svg.path([a("d", "M19 12H5")]),
    ],
  )
}


pub fn arrow_left_from_line(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m9 6-6 6 6 6")]),
      svg.path([a("d", "M3 12h14")]),
      svg.path([a("d", "M21 19V5")]),
    ],
  )
}


pub fn arrow_left_right(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M8 3 4 7l4 4")]),
      svg.path([a("d", "M4 7h16")]),
      svg.path([a("d", "m16 21 4-4-4-4")]),
      svg.path([a("d", "M20 17H4")]),
    ],
  )
}


pub fn arrow_left_to_line(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M3 19V5")]),
      svg.path([a("d", "m13 6-6 6 6 6")]),
      svg.path([a("d", "M7 12h14")]),
    ],
  )
}


pub fn arrow_right(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M5 12h14")]),
      svg.path([a("d", "m12 5 7 7-7 7")]),
    ],
  )
}


pub fn arrow_right_from_line(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M3 5v14")]),
      svg.path([a("d", "M21 12H7")]),
      svg.path([a("d", "m15 18 6-6-6-6")]),
    ],
  )
}


pub fn arrow_right_left(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m16 3 4 4-4 4")]),
      svg.path([a("d", "M20 7H4")]),
      svg.path([a("d", "m8 21-4-4 4-4")]),
      svg.path([a("d", "M4 17h16")]),
    ],
  )
}


pub fn arrow_right_to_line(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M17 12H3")]),
      svg.path([a("d", "m11 18 6-6-6-6")]),
      svg.path([a("d", "M21 5v14")]),
    ],
  )
}


pub fn arrow_up(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m5 12 7-7 7 7")]),
      svg.path([a("d", "M12 19V5")]),
    ],
  )
}


pub fn arrow_up_0_1(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m3 8 4-4 4 4")]),
      svg.path([a("d", "M7 4v16")]),
      svg.rect([
        a("ry", "2"),
        a("height", "6"),
        a("width", "4"),
        a("y", "4"),
        a("x", "15"),
      ]),
      svg.path([a("d", "M17 20v-6h-2")]),
      svg.path([a("d", "M15 20h4")]),
    ],
  )
}


pub fn arrow_up_1_0(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m3 8 4-4 4 4")]),
      svg.path([a("d", "M7 4v16")]),
      svg.path([a("d", "M17 10V4h-2")]),
      svg.path([a("d", "M15 10h4")]),
      svg.rect([
        a("ry", "2"),
        a("height", "6"),
        a("width", "4"),
        a("y", "14"),
        a("x", "15"),
      ]),
    ],
  )
}


pub fn arrow_up_a_z(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m3 8 4-4 4 4")]),
      svg.path([a("d", "M7 4v16")]),
      svg.path([a("d", "M20 8h-5")]),
      svg.path([a("d", "M15 10V6.5a2.5 2.5 0 0 1 5 0V10")]),
      svg.path([a("d", "M15 14h5l-5 6h5")]),
    ],
  )
}


pub fn arrow_up_down(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m21 16-4 4-4-4")]),
      svg.path([a("d", "M17 20V4")]),
      svg.path([a("d", "m3 8 4-4 4 4")]),
      svg.path([a("d", "M7 4v16")]),
    ],
  )
}


pub fn arrow_up_from_dot(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m5 9 7-7 7 7")]),
      svg.path([a("d", "M12 16V2")]),
      svg.circle([
        a("r", "1"),
        a("cy", "21"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn arrow_up_from_line(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m18 9-6-6-6 6")]),
      svg.path([a("d", "M12 3v14")]),
      svg.path([a("d", "M5 21h14")]),
    ],
  )
}


pub fn arrow_up_left(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M7 17V7h10")]),
      svg.path([a("d", "M17 17 7 7")]),
    ],
  )
}


pub fn arrow_up_narrow_wide(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m3 8 4-4 4 4")]),
      svg.path([a("d", "M7 4v16")]),
      svg.path([a("d", "M11 12h4")]),
      svg.path([a("d", "M11 16h7")]),
      svg.path([a("d", "M11 20h10")]),
    ],
  )
}


pub fn arrow_up_right(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M7 7h10v10")]),
      svg.path([a("d", "M7 17 17 7")]),
    ],
  )
}


pub fn arrow_up_to_line(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M5 3h14")]),
      svg.path([a("d", "m18 13-6-6-6 6")]),
      svg.path([a("d", "M12 7v14")]),
    ],
  )
}


pub fn arrow_up_wide_narrow(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m3 8 4-4 4 4")]),
      svg.path([a("d", "M7 4v16")]),
      svg.path([a("d", "M11 12h10")]),
      svg.path([a("d", "M11 16h7")]),
      svg.path([a("d", "M11 20h4")]),
    ],
  )
}


pub fn arrow_up_z_a(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m3 8 4-4 4 4")]),
      svg.path([a("d", "M7 4v16")]),
      svg.path([a("d", "M15 4h5l-5 6h5")]),
      svg.path([a("d", "M15 20v-3.5a2.5 2.5 0 0 1 5 0V20")]),
      svg.path([a("d", "M20 18h-5")]),
    ],
  )
}


pub fn arrows_up_from_line(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m4 6 3-3 3 3")]),
      svg.path([a("d", "M7 17V3")]),
      svg.path([a("d", "m14 6 3-3 3 3")]),
      svg.path([a("d", "M17 17V3")]),
      svg.path([a("d", "M4 21h16")]),
    ],
  )
}


pub fn asterisk(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 6v12")]),
      svg.path([a("d", "M17.196 9 6.804 15")]),
      svg.path([a("d", "m6.804 9 10.392 6")]),
    ],
  )
}


pub fn at_sign(attributes: List(Attribute(a))) {
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
        a("r", "4"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M16 8v5a3 3 0 0 0 6 0v-1a10 10 0 1 0-4 8")]),
    ],
  )
}


pub fn atom(attributes: List(Attribute(a))) {
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
        a("r", "1"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
      svg.path([
        a(
          "d",
          "M20.2 20.2c2.04-2.03.02-7.36-4.5-11.9-4.54-4.52-9.87-6.54-11.9-4.5-2.04 2.03-.02 7.36 4.5 11.9 4.54 4.52 9.87 6.54 11.9 4.5Z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M15.7 15.7c4.52-4.54 6.54-9.87 4.5-11.9-2.03-2.04-7.36-.02-11.9 4.5-4.52 4.54-6.54 9.87-4.5 11.9 2.03 2.04 7.36.02 11.9-4.5Z",
        ),
      ]),
    ],
  )
}


pub fn audio_lines(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M2 10v3")]),
      svg.path([a("d", "M6 6v11")]),
      svg.path([a("d", "M10 3v18")]),
      svg.path([a("d", "M14 8v7")]),
      svg.path([a("d", "M18 5v13")]),
      svg.path([a("d", "M22 10v3")]),
    ],
  )
}


pub fn audio_waveform(attributes: List(Attribute(a))) {
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
          "M2 13a2 2 0 0 0 2-2V7a2 2 0 0 1 4 0v13a2 2 0 0 0 4 0V4a2 2 0 0 1 4 0v13a2 2 0 0 0 4 0v-4a2 2 0 0 1 2-2",
        ),
      ]),
    ],
  )
}


pub fn award(attributes: List(Attribute(a))) {
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
          "m15.477 12.89 1.515 8.526a.5.5 0 0 1-.81.47l-3.58-2.687a1 1 0 0 0-1.197 0l-3.586 2.686a.5.5 0 0 1-.81-.469l1.514-8.526",
        ),
      ]),
      svg.circle([
        a("r", "6"),
        a("cy", "8"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn axe(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m14 12-8.381 8.38a1 1 0 0 1-3.001-3L11 9")]),
      svg.path([
        a(
          "d",
          "M15 15.5a.5.5 0 0 0 .5.5A6.5 6.5 0 0 0 22 9.5a.5.5 0 0 0-.5-.5h-1.672a2 2 0 0 1-1.414-.586l-5.062-5.062a1.205 1.205 0 0 0-1.704 0L9.352 5.648a1.205 1.205 0 0 0 0 1.704l5.062 5.062A2 2 0 0 1 15 13.828z",
        ),
      ]),
    ],
  )
}


pub fn axis_3d(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M13.5 10.5 15 9")]),
      svg.path([a("d", "M4 4v15a1 1 0 0 0 1 1h15")]),
      svg.path([a("d", "M4.293 19.707 6 18")]),
      svg.path([a("d", "m9 15 1.5-1.5")]),
    ],
  )
}
