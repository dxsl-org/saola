import lustre/attribute.{type Attribute, attribute as a}
import lustre/element/svg

pub fn cable(attributes: List(Attribute(a))) {
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
          "M17 19a1 1 0 0 1-1-1v-2a2 2 0 0 1 2-2h2a2 2 0 0 1 2 2v2a1 1 0 0 1-1 1z",
        ),
      ]),
      svg.path([a("d", "M17 21v-2")]),
      svg.path([a("d", "M19 14V6.5a1 1 0 0 0-7 0v11a1 1 0 0 1-7 0V10")]),
      svg.path([a("d", "M21 21v-2")]),
      svg.path([a("d", "M3 5V3")]),
      svg.path([
        a(
          "d",
          "M4 10a2 2 0 0 1-2-2V6a1 1 0 0 1 1-1h4a1 1 0 0 1 1 1v2a2 2 0 0 1-2 2z",
        ),
      ]),
      svg.path([a("d", "M7 5V3")]),
    ],
  )
}


pub fn cable_car(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10 3h.01")]),
      svg.path([a("d", "M14 2h.01")]),
      svg.path([a("d", "m2 9 20-5")]),
      svg.path([a("d", "M12 12V6.5")]),
      svg.rect([
        a("rx", "3"),
        a("y", "12"),
        a("x", "4"),
        a("height", "10"),
        a("width", "16"),
      ]),
      svg.path([a("d", "M9 12v5")]),
      svg.path([a("d", "M15 12v5")]),
      svg.path([a("d", "M4 17h16")]),
    ],
  )
}


pub fn cake(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M20 21v-8a2 2 0 0 0-2-2H6a2 2 0 0 0-2 2v8")]),
      svg.path([
        a("d", "M4 16s.5-1 2-1 2.5 2 4 2 2.5-2 4-2 2.5 2 4 2 2-1 2-1"),
      ]),
      svg.path([a("d", "M2 21h20")]),
      svg.path([a("d", "M7 8v3")]),
      svg.path([a("d", "M12 8v3")]),
      svg.path([a("d", "M17 8v3")]),
      svg.path([a("d", "M7 4h.01")]),
      svg.path([a("d", "M12 4h.01")]),
      svg.path([a("d", "M17 4h.01")]),
    ],
  )
}


pub fn cake_slice(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16 13H3")]),
      svg.path([a("d", "M16 17H3")]),
      svg.path([
        a(
          "d",
          "m7.2 7.9-3.388 2.5A2 2 0 0 0 3 12.01V20a1 1 0 0 0 1 1h16a1 1 0 0 0 1-1v-8.654c0-2-2.44-6.026-6.44-8.026a1 1 0 0 0-1.082.057L10.4 5.6",
        ),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "7"),
        a("cx", "9"),
      ]),
    ],
  )
}


pub fn calculator(attributes: List(Attribute(a))) {
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
        a("height", "20"),
        a("width", "16"),
      ]),
      svg.line([
        a("y2", "6"),
        a("y1", "6"),
        a("x2", "16"),
        a("x1", "8"),
      ]),
      svg.line([
        a("y2", "18"),
        a("y1", "14"),
        a("x2", "16"),
        a("x1", "16"),
      ]),
      svg.path([a("d", "M16 10h.01")]),
      svg.path([a("d", "M12 10h.01")]),
      svg.path([a("d", "M8 10h.01")]),
      svg.path([a("d", "M12 14h.01")]),
      svg.path([a("d", "M8 14h.01")]),
      svg.path([a("d", "M12 18h.01")]),
      svg.path([a("d", "M8 18h.01")]),
    ],
  )
}


pub fn calendar(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M8 2v4")]),
      svg.path([a("d", "M16 2v4")]),
      svg.rect([
        a("rx", "2"),
        a("y", "4"),
        a("x", "3"),
        a("height", "18"),
        a("width", "18"),
      ]),
      svg.path([a("d", "M3 10h18")]),
    ],
  )
}


pub fn calendar_1(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M11 14h1v4")]),
      svg.path([a("d", "M16 2v4")]),
      svg.path([a("d", "M3 10h18")]),
      svg.path([a("d", "M8 2v4")]),
      svg.rect([
        a("rx", "2"),
        a("height", "18"),
        a("width", "18"),
        a("y", "4"),
        a("x", "3"),
      ]),
    ],
  )
}


pub fn calendar_arrow_down(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m14 18 4 4 4-4")]),
      svg.path([a("d", "M16 2v4")]),
      svg.path([a("d", "M18 14v8")]),
      svg.path([
        a(
          "d",
          "M21 11.354V6a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h7.343",
        ),
      ]),
      svg.path([a("d", "M3 10h18")]),
      svg.path([a("d", "M8 2v4")]),
    ],
  )
}


pub fn calendar_arrow_up(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m14 18 4-4 4 4")]),
      svg.path([a("d", "M16 2v4")]),
      svg.path([a("d", "M18 22v-8")]),
      svg.path([
        a("d", "M21 11.343V6a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h9"),
      ]),
      svg.path([a("d", "M3 10h18")]),
      svg.path([a("d", "M8 2v4")]),
    ],
  )
}


pub fn calendar_check(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M8 2v4")]),
      svg.path([a("d", "M16 2v4")]),
      svg.rect([
        a("rx", "2"),
        a("y", "4"),
        a("x", "3"),
        a("height", "18"),
        a("width", "18"),
      ]),
      svg.path([a("d", "M3 10h18")]),
      svg.path([a("d", "m9 16 2 2 4-4")]),
    ],
  )
}


pub fn calendar_check_2(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M8 2v4")]),
      svg.path([a("d", "M16 2v4")]),
      svg.path([
        a("d", "M21 14V6a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h8"),
      ]),
      svg.path([a("d", "M3 10h18")]),
      svg.path([a("d", "m16 20 2 2 4-4")]),
    ],
  )
}


pub fn calendar_clock(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16 14v2.2l1.6 1")]),
      svg.path([a("d", "M16 2v4")]),
      svg.path([
        a("d", "M21 7.5V6a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h3.5"),
      ]),
      svg.path([a("d", "M3 10h5")]),
      svg.path([a("d", "M8 2v4")]),
      svg.circle([
        a("r", "6"),
        a("cy", "16"),
        a("cx", "16"),
      ]),
    ],
  )
}


pub fn calendar_cog(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m15.228 16.852-.923-.383")]),
      svg.path([a("d", "m15.228 19.148-.923.383")]),
      svg.path([a("d", "M16 2v4")]),
      svg.path([a("d", "m16.47 14.305.382.923")]),
      svg.path([a("d", "m16.852 20.772-.383.924")]),
      svg.path([a("d", "m19.148 15.228.383-.923")]),
      svg.path([a("d", "m19.53 21.696-.382-.924")]),
      svg.path([a("d", "m20.772 16.852.924-.383")]),
      svg.path([a("d", "m20.772 19.148.924.383")]),
      svg.path([
        a("d", "M21 10.592V6a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h6"),
      ]),
      svg.path([a("d", "M3 10h18")]),
      svg.path([a("d", "M8 2v4")]),
      svg.circle([
        a("r", "3"),
        a("cy", "18"),
        a("cx", "18"),
      ]),
    ],
  )
}


pub fn calendar_days(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M8 2v4")]),
      svg.path([a("d", "M16 2v4")]),
      svg.rect([
        a("rx", "2"),
        a("y", "4"),
        a("x", "3"),
        a("height", "18"),
        a("width", "18"),
      ]),
      svg.path([a("d", "M3 10h18")]),
      svg.path([a("d", "M8 14h.01")]),
      svg.path([a("d", "M12 14h.01")]),
      svg.path([a("d", "M16 14h.01")]),
      svg.path([a("d", "M8 18h.01")]),
      svg.path([a("d", "M12 18h.01")]),
      svg.path([a("d", "M16 18h.01")]),
    ],
  )
}


pub fn calendar_fold(attributes: List(Attribute(a))) {
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
          "M3 20a2 2 0 0 0 2 2h10a2.4 2.4 0 0 0 1.706-.706l3.588-3.588A2.4 2.4 0 0 0 21 16V6a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2z",
        ),
      ]),
      svg.path([a("d", "M15 22v-5a1 1 0 0 1 1-1h5")]),
      svg.path([a("d", "M8 2v4")]),
      svg.path([a("d", "M16 2v4")]),
      svg.path([a("d", "M3 10h18")]),
    ],
  )
}


pub fn calendar_heart(attributes: List(Attribute(a))) {
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
          "M12.127 22H5a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2v5.125",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M14.62 18.8A2.25 2.25 0 1 1 18 15.836a2.25 2.25 0 1 1 3.38 2.966l-2.626 2.856a.998.998 0 0 1-1.507 0z",
        ),
      ]),
      svg.path([a("d", "M16 2v4")]),
      svg.path([a("d", "M3 10h18")]),
      svg.path([a("d", "M8 2v4")]),
    ],
  )
}


pub fn calendar_minus(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16 19h6")]),
      svg.path([a("d", "M16 2v4")]),
      svg.path([
        a("d", "M21 15V6a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h8.5"),
      ]),
      svg.path([a("d", "M3 10h18")]),
      svg.path([a("d", "M8 2v4")]),
    ],
  )
}


pub fn calendar_minus_2(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M8 2v4")]),
      svg.path([a("d", "M16 2v4")]),
      svg.rect([
        a("rx", "2"),
        a("y", "4"),
        a("x", "3"),
        a("height", "18"),
        a("width", "18"),
      ]),
      svg.path([a("d", "M3 10h18")]),
      svg.path([a("d", "M10 16h4")]),
    ],
  )
}


pub fn calendar_off(attributes: List(Attribute(a))) {
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
        a("d", "M4.2 4.2A2 2 0 0 0 3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 1.82-1.18"),
      ]),
      svg.path([a("d", "M21 15.5V6a2 2 0 0 0-2-2H9.5")]),
      svg.path([a("d", "M16 2v4")]),
      svg.path([a("d", "M3 10h7")]),
      svg.path([a("d", "M21 10h-5.5")]),
      svg.path([a("d", "m2 2 20 20")]),
    ],
  )
}


pub fn calendar_plus(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16 19h6")]),
      svg.path([a("d", "M16 2v4")]),
      svg.path([a("d", "M19 16v6")]),
      svg.path([
        a(
          "d",
          "M21 12.598V6a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h8.5",
        ),
      ]),
      svg.path([a("d", "M3 10h18")]),
      svg.path([a("d", "M8 2v4")]),
    ],
  )
}


pub fn calendar_plus_2(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M8 2v4")]),
      svg.path([a("d", "M16 2v4")]),
      svg.rect([
        a("rx", "2"),
        a("y", "4"),
        a("x", "3"),
        a("height", "18"),
        a("width", "18"),
      ]),
      svg.path([a("d", "M3 10h18")]),
      svg.path([a("d", "M10 16h4")]),
      svg.path([a("d", "M12 14v4")]),
    ],
  )
}


pub fn calendar_range(attributes: List(Attribute(a))) {
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
        a("x", "3"),
        a("height", "18"),
        a("width", "18"),
      ]),
      svg.path([a("d", "M16 2v4")]),
      svg.path([a("d", "M3 10h18")]),
      svg.path([a("d", "M8 2v4")]),
      svg.path([a("d", "M17 14h-6")]),
      svg.path([a("d", "M13 18H7")]),
      svg.path([a("d", "M7 14h.01")]),
      svg.path([a("d", "M17 18h.01")]),
    ],
  )
}


pub fn calendar_search(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16 2v4")]),
      svg.path([
        a(
          "d",
          "M21 11.75V6a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h7.25",
        ),
      ]),
      svg.path([a("d", "m22 22-1.875-1.875")]),
      svg.path([a("d", "M3 10h18")]),
      svg.path([a("d", "M8 2v4")]),
      svg.circle([
        a("r", "3"),
        a("cy", "18"),
        a("cx", "18"),
      ]),
    ],
  )
}


pub fn calendar_sync(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M11 10v4h4")]),
      svg.path([a("d", "m11 14 1.535-1.605a5 5 0 0 1 8 1.5")]),
      svg.path([a("d", "M16 2v4")]),
      svg.path([a("d", "m21 18-1.535 1.605a5 5 0 0 1-8-1.5")]),
      svg.path([a("d", "M21 22v-4h-4")]),
      svg.path([
        a("d", "M21 8.5V6a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h4.3"),
      ]),
      svg.path([a("d", "M3 10h4")]),
      svg.path([a("d", "M8 2v4")]),
    ],
  )
}


pub fn calendar_x(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M8 2v4")]),
      svg.path([a("d", "M16 2v4")]),
      svg.rect([
        a("rx", "2"),
        a("y", "4"),
        a("x", "3"),
        a("height", "18"),
        a("width", "18"),
      ]),
      svg.path([a("d", "M3 10h18")]),
      svg.path([a("d", "m14 14-4 4")]),
      svg.path([a("d", "m10 14 4 4")]),
    ],
  )
}


pub fn calendar_x_2(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M8 2v4")]),
      svg.path([a("d", "M16 2v4")]),
      svg.path([
        a("d", "M21 13V6a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h8"),
      ]),
      svg.path([a("d", "M3 10h18")]),
      svg.path([a("d", "m17 22 5-5")]),
      svg.path([a("d", "m17 17 5 5")]),
    ],
  )
}


pub fn calendars(attributes: List(Attribute(a))) {
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
      svg.path([
        a("d", "M15.726 21.01A2 2 0 0 1 14 22H4a2 2 0 0 1-2-2V10a2 2 0 0 1 2-2"),
      ]),
      svg.path([a("d", "M18 2v2")]),
      svg.path([a("d", "M2 13h2")]),
      svg.path([a("d", "M8 8h14")]),
      svg.rect([
        a("rx", "2"),
        a("height", "14"),
        a("width", "14"),
        a("y", "3"),
        a("x", "8"),
      ]),
    ],
  )
}


pub fn camera(attributes: List(Attribute(a))) {
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
          "M13.997 4a2 2 0 0 1 1.76 1.05l.486.9A2 2 0 0 0 18.003 7H20a2 2 0 0 1 2 2v9a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V9a2 2 0 0 1 2-2h1.997a2 2 0 0 0 1.759-1.048l.489-.904A2 2 0 0 1 10.004 4z",
        ),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "13"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn camera_off(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M14.564 14.558a3 3 0 1 1-4.122-4.121")]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([
        a(
          "d",
          "M20 20H4a2 2 0 0 1-2-2V9a2 2 0 0 1 2-2h1.997a2 2 0 0 0 .819-.175",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M9.695 4.024A2 2 0 0 1 10.004 4h3.993a2 2 0 0 1 1.76 1.05l.486.9A2 2 0 0 0 18.003 7H20a2 2 0 0 1 2 2v7.344",
        ),
      ]),
    ],
  )
}


pub fn candy(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10 7v10.9")]),
      svg.path([a("d", "M14 6.1V17")]),
      svg.path([
        a(
          "d",
          "M16 7V3a1 1 0 0 1 1.707-.707 2.5 2.5 0 0 0 2.152.717 1 1 0 0 1 1.131 1.131 2.5 2.5 0 0 0 .717 2.152A1 1 0 0 1 21 8h-4",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M16.536 7.465a5 5 0 0 0-7.072 0l-2 2a5 5 0 0 0 0 7.07 5 5 0 0 0 7.072 0l2-2a5 5 0 0 0 0-7.07",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M8 17v4a1 1 0 0 1-1.707.707 2.5 2.5 0 0 0-2.152-.717 1 1 0 0 1-1.131-1.131 2.5 2.5 0 0 0-.717-2.152A1 1 0 0 1 3 16h4",
        ),
      ]),
    ],
  )
}


pub fn candy_cane(attributes: List(Attribute(a))) {
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
          "M5.7 21a2 2 0 0 1-3.5-2l8.6-14a6 6 0 0 1 10.4 6 2 2 0 1 1-3.464-2 2 2 0 1 0-3.464-2Z",
        ),
      ]),
      svg.path([a("d", "M17.75 7 15 2.1")]),
      svg.path([a("d", "M10.9 4.8 13 9")]),
      svg.path([a("d", "m7.9 9.7 2 4.4")]),
      svg.path([a("d", "M4.9 14.7 7 18.9")]),
    ],
  )
}


pub fn candy_off(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10 10v7.9")]),
      svg.path([a("d", "M11.802 6.145a5 5 0 0 1 6.053 6.053")]),
      svg.path([a("d", "M14 6.1v2.243")]),
      svg.path([
        a(
          "d",
          "m15.5 15.571-.964.964a5 5 0 0 1-7.071 0 5 5 0 0 1 0-7.07l.964-.965",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M16 7V3a1 1 0 0 1 1.707-.707 2.5 2.5 0 0 0 2.152.717 1 1 0 0 1 1.131 1.131 2.5 2.5 0 0 0 .717 2.152A1 1 0 0 1 21 8h-4",
        ),
      ]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([
        a(
          "d",
          "M8 17v4a1 1 0 0 1-1.707.707 2.5 2.5 0 0 0-2.152-.717 1 1 0 0 1-1.131-1.131 2.5 2.5 0 0 0-.717-2.152A1 1 0 0 1 3 16h4",
        ),
      ]),
    ],
  )
}


pub fn cannabis(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 22v-4")]),
      svg.path([
        a(
          "d",
          "M7 12c-1.5 0-4.5 1.5-5 3 3.5 1.5 6 1 6 1-1.5 1.5-2 3.5-2 5 2.5 0 4.5-1.5 6-3 1.5 1.5 3.5 3 6 3 0-1.5-.5-3.5-2-5 0 0 2.5.5 6-1-.5-1.5-3.5-3-5-3 1.5-1 4-4 4-6-2.5 0-5.5 1.5-7 3 0-2.5-.5-5-2-7-1.5 2-2 4.5-2 7-1.5-1.5-4.5-3-7-3 0 2 2.5 5 4 6",
        ),
      ]),
    ],
  )
}


pub fn cannabis_off(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 22v-4c1.5 1.5 3.5 3 6 3 0-1.5-.5-3.5-2-5")]),
      svg.path([
        a(
          "d",
          "M13.988 8.327C13.902 6.054 13.365 3.82 12 2a9.3 9.3 0 0 0-1.445 2.9",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M17.375 11.725C18.882 10.53 21 7.841 21 6c-2.324 0-5.08 1.296-6.662 2.684",
        ),
      ]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([
        a(
          "d",
          "M21.024 15.378A15 15 0 0 0 22 15c-.426-1.279-2.67-2.557-4.25-2.907",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M6.995 6.992C5.714 6.4 4.29 6 3 6c0 2 2.5 5 4 6-1.5 0-4.5 1.5-5 3 3.5 1.5 6 1 6 1-1.5 1.5-2 3.5-2 5 2.5 0 4.5-1.5 6-3",
        ),
      ]),
    ],
  )
}


pub fn captions(attributes: List(Attribute(a))) {
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
        a("y", "5"),
        a("x", "3"),
        a("height", "14"),
        a("width", "18"),
      ]),
      svg.path([a("d", "M7 15h4M15 15h2M7 11h2M13 11h4")]),
    ],
  )
}


pub fn captions_off(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10.5 5H19a2 2 0 0 1 2 2v8.5")]),
      svg.path([a("d", "M17 11h-.5")]),
      svg.path([a("d", "M19 19H5a2 2 0 0 1-2-2V7a2 2 0 0 1 2-2")]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([a("d", "M7 11h4")]),
      svg.path([a("d", "M7 15h2.5")]),
    ],
  )
}


pub fn car(attributes: List(Attribute(a))) {
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
          "M19 17h2c.6 0 1-.4 1-1v-3c0-.9-.7-1.7-1.5-1.9C18.7 10.6 16 10 16 10s-1.3-1.4-2.2-2.3c-.5-.4-1.1-.7-1.8-.7H5c-.6 0-1.1.4-1.4.9l-1.4 2.9A3.7 3.7 0 0 0 2 12v4c0 .6.4 1 1 1h2",
        ),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "17"),
        a("cx", "7"),
      ]),
      svg.path([a("d", "M9 17h6")]),
      svg.circle([
        a("r", "2"),
        a("cy", "17"),
        a("cx", "17"),
      ]),
    ],
  )
}


pub fn car_front(attributes: List(Attribute(a))) {
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
          "m21 8-2 2-1.5-3.7A2 2 0 0 0 15.646 5H8.4a2 2 0 0 0-1.903 1.257L5 10 3 8",
        ),
      ]),
      svg.path([a("d", "M7 14h.01")]),
      svg.path([a("d", "M17 14h.01")]),
      svg.rect([
        a("rx", "2"),
        a("y", "10"),
        a("x", "3"),
        a("height", "8"),
        a("width", "18"),
      ]),
      svg.path([a("d", "M5 18v2")]),
      svg.path([a("d", "M19 18v2")]),
    ],
  )
}


pub fn car_taxi_front(attributes: List(Attribute(a))) {
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
      svg.path([
        a(
          "d",
          "m21 8-2 2-1.5-3.7A2 2 0 0 0 15.646 5H8.4a2 2 0 0 0-1.903 1.257L5 10 3 8",
        ),
      ]),
      svg.path([a("d", "M7 14h.01")]),
      svg.path([a("d", "M17 14h.01")]),
      svg.rect([
        a("rx", "2"),
        a("y", "10"),
        a("x", "3"),
        a("height", "8"),
        a("width", "18"),
      ]),
      svg.path([a("d", "M5 18v2")]),
      svg.path([a("d", "M19 18v2")]),
    ],
  )
}


pub fn caravan(attributes: List(Attribute(a))) {
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
        a("d", "M18 19V9a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v8a2 2 0 0 0 2 2h2"),
      ]),
      svg.path([a("d", "M2 9h3a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1H2")]),
      svg.path([
        a("d", "M22 17v1a1 1 0 0 1-1 1H10v-9a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v9"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "19"),
        a("cx", "8"),
      ]),
    ],
  )
}


pub fn card_sim(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 14v4")]),
      svg.path([
        a(
          "d",
          "M14.172 2a2 2 0 0 1 1.414.586l3.828 3.828A2 2 0 0 1 20 7.828V20a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2z",
        ),
      ]),
      svg.path([a("d", "M8 14h8")]),
      svg.rect([
        a("rx", "1"),
        a("height", "8"),
        a("width", "8"),
        a("y", "10"),
        a("x", "8"),
      ]),
    ],
  )
}


pub fn carrot(attributes: List(Attribute(a))) {
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
          "M2.27 21.7s9.87-3.5 12.73-6.36a4.5 4.5 0 0 0-6.36-6.37C5.77 11.84 2.27 21.7 2.27 21.7zM8.64 14l-2.05-2.04M15.34 15l-2.46-2.46",
        ),
      ]),
      svg.path([
        a("d", "M22 9s-1.33-2-3.5-2C16.86 7 15 9 15 9s1.33 2 3.5 2S22 9 22 9z"),
      ]),
      svg.path([
        a("d", "M15 2s-2 1.33-2 3.5S15 9 15 9s2-1.84 2-3.5C17 3.33 15 2 15 2z"),
      ]),
    ],
  )
}


pub fn case_lower(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10 9v7")]),
      svg.path([a("d", "M14 6v10")]),
      svg.circle([
        a("r", "3.5"),
        a("cy", "12.5"),
        a("cx", "17.5"),
      ]),
      svg.circle([
        a("r", "3.5"),
        a("cy", "12.5"),
        a("cx", "6.5"),
      ]),
    ],
  )
}


pub fn case_sensitive(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m2 16 4.039-9.69a.5.5 0 0 1 .923 0L11 16")]),
      svg.path([a("d", "M22 9v7")]),
      svg.path([a("d", "M3.304 13h6.392")]),
      svg.circle([
        a("r", "3.5"),
        a("cy", "12.5"),
        a("cx", "18.5"),
      ]),
    ],
  )
}


pub fn case_upper(attributes: List(Attribute(a))) {
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
          "M15 11h4.5a1 1 0 0 1 0 5h-4a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h3a1 1 0 0 1 0 5",
        ),
      ]),
      svg.path([a("d", "m2 16 4.039-9.69a.5.5 0 0 1 .923 0L11 16")]),
      svg.path([a("d", "M3.304 13h6.392")]),
    ],
  )
}


pub fn cassette_tape(attributes: List(Attribute(a))) {
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
      svg.circle([
        a("r", "2"),
        a("cy", "10"),
        a("cx", "8"),
      ]),
      svg.path([a("d", "M8 12h8")]),
      svg.circle([
        a("r", "2"),
        a("cy", "10"),
        a("cx", "16"),
      ]),
      svg.path([
        a("d", "m6 20 .7-2.9A1.4 1.4 0 0 1 8.1 16h7.8a1.4 1.4 0 0 1 1.4 1l.7 3"),
      ]),
    ],
  )
}


pub fn cast(attributes: List(Attribute(a))) {
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
        a("d", "M2 8V6a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2h-6"),
      ]),
      svg.path([a("d", "M2 12a9 9 0 0 1 8 8")]),
      svg.path([a("d", "M2 16a5 5 0 0 1 4 4")]),
      svg.line([
        a("y2", "20"),
        a("y1", "20"),
        a("x2", "2.01"),
        a("x1", "2"),
      ]),
    ],
  )
}


pub fn castle(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10 5V3")]),
      svg.path([a("d", "M14 5V3")]),
      svg.path([a("d", "M15 21v-3a3 3 0 0 0-6 0v3")]),
      svg.path([a("d", "M18 3v8")]),
      svg.path([a("d", "M18 5H6")]),
      svg.path([a("d", "M22 11H2")]),
      svg.path([a("d", "M22 9v10a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V9")]),
      svg.path([a("d", "M6 3v8")]),
    ],
  )
}


pub fn cat(attributes: List(Attribute(a))) {
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
          "M12 5c.67 0 1.35.09 2 .26 1.78-2 5.03-2.84 6.42-2.26 1.4.58-.42 7-.42 7 .57 1.07 1 2.24 1 3.44C21 17.9 16.97 21 12 21s-9-3-9-7.56c0-1.25.5-2.4 1-3.44 0 0-1.89-6.42-.5-7 1.39-.58 4.72.23 6.5 2.23A9.04 9.04 0 0 1 12 5Z",
        ),
      ]),
      svg.path([a("d", "M8 14v.5")]),
      svg.path([a("d", "M16 14v.5")]),
      svg.path([a("d", "M11.25 16.25h1.5L12 17l-.75-.75Z")]),
    ],
  )
}


pub fn cctv(attributes: List(Attribute(a))) {
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
          "M16.75 12h3.632a1 1 0 0 1 .894 1.447l-2.034 4.069a1 1 0 0 1-1.708.134l-2.124-2.97",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M17.106 9.053a1 1 0 0 1 .447 1.341l-3.106 6.211a1 1 0 0 1-1.342.447L3.61 12.3a2.92 2.92 0 0 1-1.3-3.91L3.69 5.6a2.92 2.92 0 0 1 3.92-1.3z",
        ),
      ]),
      svg.path([a("d", "M2 19h3.76a2 2 0 0 0 1.8-1.1L9 15")]),
      svg.path([a("d", "M2 21v-4")]),
      svg.path([a("d", "M7 9h.01")]),
    ],
  )
}


pub fn cctv_off(attributes: List(Attribute(a))) {
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
          "m12.309 6.652 4.797 2.401a1 1 0 0 1 .447 1.341l-.501 1.001.605.605h2.725a1 1 0 0 1 .894 1.447l-.724 1.448",
        ),
      ]),
      svg.path([
        a(
          "d",
          "m15.166 15.166-.719 1.439a1 1 0 0 1-1.342.447L3.61 12.3a2.92 2.92 0 0 1-1.3-3.91L3.69 5.6a2.9 2.9 0 0 1 .873-1.037",
        ),
      ]),
      svg.path([a("d", "M2 19h3.76a2 2 0 0 0 1.8-1.1l1.441-2.902")]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([a("d", "M2 21v-4")]),
      svg.path([a("d", "M7 9h.01")]),
    ],
  )
}


pub fn chart_area(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M3 3v16a2 2 0 0 0 2 2h16")]),
      svg.path([
        a(
          "d",
          "M7 11.207a.5.5 0 0 1 .146-.353l2-2a.5.5 0 0 1 .708 0l3.292 3.292a.5.5 0 0 0 .708 0l4.292-4.292a.5.5 0 0 1 .854.353V16a1 1 0 0 1-1 1H8a1 1 0 0 1-1-1z",
        ),
      ]),
    ],
  )
}


pub fn chart_bar(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M3 3v16a2 2 0 0 0 2 2h16")]),
      svg.path([a("d", "M7 16h8")]),
      svg.path([a("d", "M7 11h12")]),
      svg.path([a("d", "M7 6h3")]),
    ],
  )
}


pub fn chart_bar_big(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M3 3v16a2 2 0 0 0 2 2h16")]),
      svg.rect([
        a("rx", "1"),
        a("height", "4"),
        a("width", "9"),
        a("y", "13"),
        a("x", "7"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("height", "4"),
        a("width", "12"),
        a("y", "5"),
        a("x", "7"),
      ]),
    ],
  )
}


pub fn chart_bar_decreasing(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M3 3v16a2 2 0 0 0 2 2h16")]),
      svg.path([a("d", "M7 11h8")]),
      svg.path([a("d", "M7 16h3")]),
      svg.path([a("d", "M7 6h12")]),
    ],
  )
}


pub fn chart_bar_increasing(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M3 3v16a2 2 0 0 0 2 2h16")]),
      svg.path([a("d", "M7 11h8")]),
      svg.path([a("d", "M7 16h12")]),
      svg.path([a("d", "M7 6h3")]),
    ],
  )
}


pub fn chart_bar_stacked(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M11 13v4")]),
      svg.path([a("d", "M15 5v4")]),
      svg.path([a("d", "M3 3v16a2 2 0 0 0 2 2h16")]),
      svg.rect([
        a("rx", "1"),
        a("height", "4"),
        a("width", "9"),
        a("y", "13"),
        a("x", "7"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("height", "4"),
        a("width", "12"),
        a("y", "5"),
        a("x", "7"),
      ]),
    ],
  )
}


pub fn chart_candlestick(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M9 5v4")]),
      svg.rect([
        a("rx", "1"),
        a("y", "9"),
        a("x", "7"),
        a("height", "6"),
        a("width", "4"),
      ]),
      svg.path([a("d", "M9 15v2")]),
      svg.path([a("d", "M17 3v2")]),
      svg.rect([
        a("rx", "1"),
        a("y", "5"),
        a("x", "15"),
        a("height", "8"),
        a("width", "4"),
      ]),
      svg.path([a("d", "M17 13v3")]),
      svg.path([a("d", "M3 3v16a2 2 0 0 0 2 2h16")]),
    ],
  )
}


pub fn chart_column(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M3 3v16a2 2 0 0 0 2 2h16")]),
      svg.path([a("d", "M18 17V9")]),
      svg.path([a("d", "M13 17V5")]),
      svg.path([a("d", "M8 17v-3")]),
    ],
  )
}


pub fn chart_column_big(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M3 3v16a2 2 0 0 0 2 2h16")]),
      svg.rect([
        a("rx", "1"),
        a("height", "12"),
        a("width", "4"),
        a("y", "5"),
        a("x", "15"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("height", "9"),
        a("width", "4"),
        a("y", "8"),
        a("x", "7"),
      ]),
    ],
  )
}


pub fn chart_column_decreasing(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M13 17V9")]),
      svg.path([a("d", "M18 17v-3")]),
      svg.path([a("d", "M3 3v16a2 2 0 0 0 2 2h16")]),
      svg.path([a("d", "M8 17V5")]),
    ],
  )
}


pub fn chart_column_increasing(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M13 17V9")]),
      svg.path([a("d", "M18 17V5")]),
      svg.path([a("d", "M3 3v16a2 2 0 0 0 2 2h16")]),
      svg.path([a("d", "M8 17v-3")]),
    ],
  )
}


pub fn chart_column_stacked(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M11 13H7")]),
      svg.path([a("d", "M19 9h-4")]),
      svg.path([a("d", "M3 3v16a2 2 0 0 0 2 2h16")]),
      svg.rect([
        a("rx", "1"),
        a("height", "12"),
        a("width", "4"),
        a("y", "5"),
        a("x", "15"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("height", "9"),
        a("width", "4"),
        a("y", "8"),
        a("x", "7"),
      ]),
    ],
  )
}


pub fn chart_gantt(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10 6h8")]),
      svg.path([a("d", "M12 16h6")]),
      svg.path([a("d", "M3 3v16a2 2 0 0 0 2 2h16")]),
      svg.path([a("d", "M8 11h7")]),
    ],
  )
}


pub fn chart_line(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M3 3v16a2 2 0 0 0 2 2h16")]),
      svg.path([a("d", "m19 9-5 5-4-4-3 3")]),
    ],
  )
}


pub fn chart_network(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m13.11 7.664 1.78 2.672")]),
      svg.path([a("d", "m14.162 12.788-3.324 1.424")]),
      svg.path([a("d", "m20 4-6.06 1.515")]),
      svg.path([a("d", "M3 3v16a2 2 0 0 0 2 2h16")]),
      svg.circle([
        a("r", "2"),
        a("cy", "6"),
        a("cx", "12"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "12"),
        a("cx", "16"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "15"),
        a("cx", "9"),
      ]),
    ],
  )
}


pub fn chart_no_axes_column(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M5 21v-6")]),
      svg.path([a("d", "M12 21V3")]),
      svg.path([a("d", "M19 21V9")]),
    ],
  )
}


pub fn chart_no_axes_column_decreasing(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M5 21V3")]),
      svg.path([a("d", "M12 21V9")]),
      svg.path([a("d", "M19 21v-6")]),
    ],
  )
}


pub fn chart_no_axes_column_increasing(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M5 21v-6")]),
      svg.path([a("d", "M12 21V9")]),
      svg.path([a("d", "M19 21V3")]),
    ],
  )
}


pub fn chart_no_axes_combined(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 16v5")]),
      svg.path([a("d", "M16 14v7")]),
      svg.path([a("d", "M20 10v11")]),
      svg.path([
        a(
          "d",
          "m22 3-8.646 8.646a.5.5 0 0 1-.708 0L9.354 8.354a.5.5 0 0 0-.707 0L2 15",
        ),
      ]),
      svg.path([a("d", "M4 18v3")]),
      svg.path([a("d", "M8 14v7")]),
    ],
  )
}


pub fn chart_no_axes_gantt(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M6 5h12")]),
      svg.path([a("d", "M4 12h10")]),
      svg.path([a("d", "M12 19h8")]),
    ],
  )
}


pub fn chart_pie(attributes: List(Attribute(a))) {
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
          "M21 12c.552 0 1.005-.449.95-.998a10 10 0 0 0-8.953-8.951c-.55-.055-.998.398-.998.95v8a1 1 0 0 0 1 1z",
        ),
      ]),
      svg.path([a("d", "M21.21 15.89A10 10 0 1 1 8 2.83")]),
    ],
  )
}


pub fn chart_scatter(attributes: List(Attribute(a))) {
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
        a("fill", "currentColor"),
        a("r", ".5"),
        a("cy", "7.5"),
        a("cx", "7.5"),
      ]),
      svg.circle([
        a("fill", "currentColor"),
        a("r", ".5"),
        a("cy", "5.5"),
        a("cx", "18.5"),
      ]),
      svg.circle([
        a("fill", "currentColor"),
        a("r", ".5"),
        a("cy", "11.5"),
        a("cx", "11.5"),
      ]),
      svg.circle([
        a("fill", "currentColor"),
        a("r", ".5"),
        a("cy", "16.5"),
        a("cx", "7.5"),
      ]),
      svg.circle([
        a("fill", "currentColor"),
        a("r", ".5"),
        a("cy", "14.5"),
        a("cx", "17.5"),
      ]),
      svg.path([a("d", "M3 3v16a2 2 0 0 0 2 2h16")]),
    ],
  )
}


pub fn chart_spline(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M3 3v16a2 2 0 0 0 2 2h16")]),
      svg.path([
        a("d", "M7 16c.5-2 1.5-7 4-7 2 0 2 3 4 3 2.5 0 4.5-5 5-7"),
      ]),
    ],
  )
}


pub fn check(attributes: List(Attribute(a))) {
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
    [svg.path([a("d", "M20 6 9 17l-5-5")])],
  )
}


pub fn check_check(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M18 6 7 17l-5-5")]),
      svg.path([a("d", "m22 10-7.5 7.5L13 16")]),
    ],
  )
}


pub fn check_line(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M20 4L9 15")]),
      svg.path([a("d", "M21 19L3 19")]),
      svg.path([a("d", "M9 15L4 10")]),
    ],
  )
}


pub fn chef_hat(attributes: List(Attribute(a))) {
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
          "M17 21a1 1 0 0 0 1-1v-5.35c0-.457.316-.844.727-1.041a4 4 0 0 0-2.134-7.589 5 5 0 0 0-9.186 0 4 4 0 0 0-2.134 7.588c.411.198.727.585.727 1.041V20a1 1 0 0 0 1 1Z",
        ),
      ]),
      svg.path([a("d", "M6 17h12")]),
    ],
  )
}


pub fn cherry(attributes: List(Attribute(a))) {
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
        a("d", "M2 17a5 5 0 0 0 10 0c0-2.76-2.5-5-5-3-2.5-2-5 .24-5 3Z"),
      ]),
      svg.path([
        a("d", "M12 17a5 5 0 0 0 10 0c0-2.76-2.5-5-5-3-2.5-2-5 .24-5 3Z"),
      ]),
      svg.path([
        a("d", "M7 14c3.22-2.91 4.29-8.75 5-12 1.66 2.38 4.94 9 5 12"),
      ]),
      svg.path([
        a("d", "M22 9c-4.29 0-7.14-2.33-10-7 5.71 0 10 4.67 10 7Z"),
      ]),
    ],
  )
}


pub fn chess_bishop(attributes: List(Attribute(a))) {
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
          "M5 20a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v1a1 1 0 0 1-1 1H6a1 1 0 0 1-1-1z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M15 18c1.5-.615 3-2.461 3-4.923C18 8.769 14.5 4.462 12 2 9.5 4.462 6 8.77 6 13.077 6 15.539 7.5 17.385 9 18",
        ),
      ]),
      svg.path([a("d", "m16 7-2.5 2.5")]),
      svg.path([a("d", "M9 2h6")]),
    ],
  )
}


pub fn chess_king(attributes: List(Attribute(a))) {
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
          "M4 20a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v1a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "m6.7 18-1-1C4.35 15.682 3 14.09 3 12a5 5 0 0 1 4.95-5c1.584 0 2.7.455 4.05 1.818C13.35 7.455 14.466 7 16.05 7A5 5 0 0 1 21 12c0 2.082-1.359 3.673-2.7 5l-1 1",
        ),
      ]),
      svg.path([a("d", "M10 4h4")]),
      svg.path([a("d", "M12 2v6.818")]),
    ],
  )
}


pub fn chess_knight(attributes: List(Attribute(a))) {
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
          "M5 20a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v1a1 1 0 0 1-1 1H6a1 1 0 0 1-1-1z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M16.5 18c1-2 2.5-5 2.5-9a7 7 0 0 0-7-7H6.635a1 1 0 0 0-.768 1.64L7 5l-2.32 5.802a2 2 0 0 0 .95 2.526l2.87 1.456",
        ),
      ]),
      svg.path([a("d", "m15 5 1.425-1.425")]),
      svg.path([a("d", "m17 8 1.53-1.53")]),
      svg.path([a("d", "M9.713 12.185 7 18")]),
    ],
  )
}


pub fn chess_pawn(attributes: List(Attribute(a))) {
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
          "M5 20a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v1a1 1 0 0 1-1 1H6a1 1 0 0 1-1-1z",
        ),
      ]),
      svg.path([a("d", "m14.5 10 1.5 8")]),
      svg.path([a("d", "M7 10h10")]),
      svg.path([a("d", "m8 18 1.5-8")]),
      svg.circle([
        a("r", "4"),
        a("cy", "6"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn chess_queen(attributes: List(Attribute(a))) {
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
          "M4 20a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v1a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1z",
        ),
      ]),
      svg.path([
        a("d", "m12.474 5.943 1.567 5.34a1 1 0 0 0 1.75.328l2.616-3.402"),
      ]),
      svg.path([a("d", "m20 9-3 9")]),
      svg.path([
        a("d", "m5.594 8.209 2.615 3.403a1 1 0 0 0 1.75-.329l1.567-5.34"),
      ]),
      svg.path([a("d", "M7 18 4 9")]),
      svg.circle([
        a("r", "2"),
        a("cy", "4"),
        a("cx", "12"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "7"),
        a("cx", "20"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "7"),
        a("cx", "4"),
      ]),
    ],
  )
}


pub fn chess_rook(attributes: List(Attribute(a))) {
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
          "M5 20a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v1a1 1 0 0 1-1 1H6a1 1 0 0 1-1-1z",
        ),
      ]),
      svg.path([a("d", "M10 2v2")]),
      svg.path([a("d", "M14 2v2")]),
      svg.path([a("d", "m17 18-1-9")]),
      svg.path([a("d", "M6 2v5a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2")]),
      svg.path([a("d", "M6 4h12")]),
      svg.path([a("d", "m7 18 1-9")]),
    ],
  )
}


pub fn chevron_down(attributes: List(Attribute(a))) {
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
    [svg.path([a("d", "m6 9 6 6 6-6")])],
  )
}


pub fn chevron_first(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m17 18-6-6 6-6")]),
      svg.path([a("d", "M7 6v12")]),
    ],
  )
}


pub fn chevron_last(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m7 18 6-6-6-6")]),
      svg.path([a("d", "M17 6v12")]),
    ],
  )
}


pub fn chevron_left(attributes: List(Attribute(a))) {
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
    [svg.path([a("d", "m15 18-6-6 6-6")])],
  )
}


pub fn chevron_right(attributes: List(Attribute(a))) {
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
    [svg.path([a("d", "m9 18 6-6-6-6")])],
  )
}


pub fn chevron_up(attributes: List(Attribute(a))) {
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
    [svg.path([a("d", "m18 15-6-6-6 6")])],
  )
}


pub fn chevrons_down(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m7 6 5 5 5-5")]),
      svg.path([a("d", "m7 13 5 5 5-5")]),
    ],
  )
}


pub fn chevrons_down_up(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m7 20 5-5 5 5")]),
      svg.path([a("d", "m7 4 5 5 5-5")]),
    ],
  )
}


pub fn chevrons_left(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m11 17-5-5 5-5")]),
      svg.path([a("d", "m18 17-5-5 5-5")]),
    ],
  )
}


pub fn chevrons_left_right(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m9 7-5 5 5 5")]),
      svg.path([a("d", "m15 7 5 5-5 5")]),
    ],
  )
}


pub fn chevrons_left_right_ellipsis(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 12h.01")]),
      svg.path([a("d", "M16 12h.01")]),
      svg.path([a("d", "m17 7 5 5-5 5")]),
      svg.path([a("d", "m7 7-5 5 5 5")]),
      svg.path([a("d", "M8 12h.01")]),
    ],
  )
}


pub fn chevrons_right(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m6 17 5-5-5-5")]),
      svg.path([a("d", "m13 17 5-5-5-5")]),
    ],
  )
}


pub fn chevrons_right_left(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m20 17-5-5 5-5")]),
      svg.path([a("d", "m4 17 5-5-5-5")]),
    ],
  )
}


pub fn chevrons_up(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m17 11-5-5-5 5")]),
      svg.path([a("d", "m17 18-5-5-5 5")]),
    ],
  )
}


pub fn chevrons_up_down(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m7 15 5 5 5-5")]),
      svg.path([a("d", "m7 9 5-5 5 5")]),
    ],
  )
}


pub fn church(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10 9h4")]),
      svg.path([a("d", "M12 7v5")]),
      svg.path([a("d", "M14 21v-3a2 2 0 0 0-4 0v3")]),
      svg.path([
        a(
          "d",
          "m18 9 3.52 2.147a1 1 0 0 1 .48.854V19a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2v-6.999a1 1 0 0 1 .48-.854L6 9",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M6 21V7a1 1 0 0 1 .376-.782l5-3.999a1 1 0 0 1 1.249.001l5 4A1 1 0 0 1 18 7v14",
        ),
      ]),
    ],
  )
}


pub fn cigarette(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M17 12H3a1 1 0 0 0-1 1v2a1 1 0 0 0 1 1h14")]),
      svg.path([a("d", "M18 8c0-2.5-2-2.5-2-5")]),
      svg.path([a("d", "M21 16a1 1 0 0 0 1-1v-2a1 1 0 0 0-1-1")]),
      svg.path([a("d", "M22 8c0-2.5-2-2.5-2-5")]),
      svg.path([a("d", "M7 12v4")]),
    ],
  )
}


pub fn cigarette_off(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 12H3a1 1 0 0 0-1 1v2a1 1 0 0 0 1 1h13")]),
      svg.path([a("d", "M18 8c0-2.5-2-2.5-2-5")]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([a("d", "M21 12a1 1 0 0 1 1 1v2a1 1 0 0 1-.5.866")]),
      svg.path([a("d", "M22 8c0-2.5-2-2.5-2-5")]),
      svg.path([a("d", "M7 12v4")]),
    ],
  )
}


pub fn circle(attributes: List(Attribute(a))) {
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
    ],
  )
}


pub fn circle_alert(attributes: List(Attribute(a))) {
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
      svg.line([
        a("y2", "12"),
        a("y1", "8"),
        a("x2", "12"),
        a("x1", "12"),
      ]),
      svg.line([
        a("y2", "16"),
        a("y1", "16"),
        a("x2", "12.01"),
        a("x1", "12"),
      ]),
    ],
  )
}


pub fn circle_arrow_down(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 8v8")]),
      svg.path([a("d", "m8 12 4 4 4-4")]),
    ],
  )
}


pub fn circle_arrow_left(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m12 8-4 4 4 4")]),
      svg.path([a("d", "M16 12H8")]),
    ],
  )
}


pub fn circle_arrow_out_down_left(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M2 12a10 10 0 1 1 10 10")]),
      svg.path([a("d", "m2 22 10-10")]),
      svg.path([a("d", "M8 22H2v-6")]),
    ],
  )
}


pub fn circle_arrow_out_down_right(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 22a10 10 0 1 1 10-10")]),
      svg.path([a("d", "M22 22 12 12")]),
      svg.path([a("d", "M22 16v6h-6")]),
    ],
  )
}


pub fn circle_arrow_out_up_left(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M2 8V2h6")]),
      svg.path([a("d", "m2 2 10 10")]),
      svg.path([a("d", "M12 2A10 10 0 1 1 2 12")]),
    ],
  )
}


pub fn circle_arrow_out_up_right(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M22 12A10 10 0 1 1 12 2")]),
      svg.path([a("d", "M22 2 12 12")]),
      svg.path([a("d", "M16 2h6v6")]),
    ],
  )
}


pub fn circle_arrow_right(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m12 16 4-4-4-4")]),
      svg.path([a("d", "M8 12h8")]),
    ],
  )
}


pub fn circle_arrow_up(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m16 12-4-4-4 4")]),
      svg.path([a("d", "M12 16V8")]),
    ],
  )
}


pub fn circle_check(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m9 12 2 2 4-4")]),
    ],
  )
}


pub fn circle_check_big(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M21.801 10A10 10 0 1 1 17 3.335")]),
      svg.path([a("d", "m9 11 3 3L22 4")]),
    ],
  )
}


pub fn circle_chevron_down(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m16 10-4 4-4-4")]),
    ],
  )
}


pub fn circle_chevron_left(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m14 16-4-4 4-4")]),
    ],
  )
}


pub fn circle_chevron_right(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m10 8 4 4-4 4")]),
    ],
  )
}


pub fn circle_chevron_up(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m8 14 4-4 4 4")]),
    ],
  )
}


pub fn circle_dashed(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10.1 2.182a10 10 0 0 1 3.8 0")]),
      svg.path([a("d", "M13.9 21.818a10 10 0 0 1-3.8 0")]),
      svg.path([a("d", "M17.609 3.721a10 10 0 0 1 2.69 2.7")]),
      svg.path([a("d", "M2.182 13.9a10 10 0 0 1 0-3.8")]),
      svg.path([a("d", "M20.279 17.609a10 10 0 0 1-2.7 2.69")]),
      svg.path([a("d", "M21.818 10.1a10 10 0 0 1 0 3.8")]),
      svg.path([a("d", "M3.721 6.391a10 10 0 0 1 2.7-2.69")]),
      svg.path([a("d", "M6.391 20.279a10 10 0 0 1-2.69-2.7")]),
    ],
  )
}


pub fn circle_divide(attributes: List(Attribute(a))) {
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
      svg.line([
        a("y2", "12"),
        a("y1", "12"),
        a("x2", "16"),
        a("x1", "8"),
      ]),
      svg.line([
        a("y2", "16"),
        a("y1", "16"),
        a("x2", "12"),
        a("x1", "12"),
      ]),
      svg.line([
        a("y2", "8"),
        a("y1", "8"),
        a("x2", "12"),
        a("x1", "12"),
      ]),
    ],
  )
}


pub fn circle_dollar_sign(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16 8h-6a2 2 0 1 0 0 4h4a2 2 0 1 1 0 4H8")]),
      svg.path([a("d", "M12 18V6")]),
    ],
  )
}


pub fn circle_dot(attributes: List(Attribute(a))) {
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
        a("r", "1"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn circle_dot_dashed(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10.1 2.18a9.93 9.93 0 0 1 3.8 0")]),
      svg.path([a("d", "M17.6 3.71a9.95 9.95 0 0 1 2.69 2.7")]),
      svg.path([a("d", "M21.82 10.1a9.93 9.93 0 0 1 0 3.8")]),
      svg.path([a("d", "M20.29 17.6a9.95 9.95 0 0 1-2.7 2.69")]),
      svg.path([a("d", "M13.9 21.82a9.94 9.94 0 0 1-3.8 0")]),
      svg.path([a("d", "M6.4 20.29a9.95 9.95 0 0 1-2.69-2.7")]),
      svg.path([a("d", "M2.18 13.9a9.93 9.93 0 0 1 0-3.8")]),
      svg.path([a("d", "M3.71 6.4a9.95 9.95 0 0 1 2.7-2.69")]),
      svg.circle([
        a("r", "1"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn circle_ellipsis(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M17 12h.01")]),
      svg.path([a("d", "M12 12h.01")]),
      svg.path([a("d", "M7 12h.01")]),
    ],
  )
}


pub fn circle_equal(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M7 10h10")]),
      svg.path([a("d", "M7 14h10")]),
    ],
  )
}


pub fn circle_fading_arrow_up(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 2a10 10 0 0 1 7.38 16.75")]),
      svg.path([a("d", "m16 12-4-4-4 4")]),
      svg.path([a("d", "M12 16V8")]),
      svg.path([a("d", "M2.5 8.875a10 10 0 0 0-.5 3")]),
      svg.path([a("d", "M2.83 16a10 10 0 0 0 2.43 3.4")]),
      svg.path([a("d", "M4.636 5.235a10 10 0 0 1 .891-.857")]),
      svg.path([a("d", "M8.644 21.42a10 10 0 0 0 7.631-.38")]),
    ],
  )
}


pub fn circle_fading_plus(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 2a10 10 0 0 1 7.38 16.75")]),
      svg.path([a("d", "M12 8v8")]),
      svg.path([a("d", "M16 12H8")]),
      svg.path([a("d", "M2.5 8.875a10 10 0 0 0-.5 3")]),
      svg.path([a("d", "M2.83 16a10 10 0 0 0 2.43 3.4")]),
      svg.path([a("d", "M4.636 5.235a10 10 0 0 1 .891-.857")]),
      svg.path([a("d", "M8.644 21.42a10 10 0 0 0 7.631-.38")]),
    ],
  )
}


pub fn circle_gauge(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M15.6 2.7a10 10 0 1 0 5.7 5.7")]),
      svg.circle([
        a("r", "2"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M13.4 10.6 19 5")]),
    ],
  )
}


pub fn circle_minus(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M8 12h8")]),
    ],
  )
}


pub fn circle_off(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([a("d", "M8.35 2.69A10 10 0 0 1 21.3 15.65")]),
      svg.path([a("d", "M19.08 19.08A10 10 0 1 1 4.92 4.92")]),
    ],
  )
}


pub fn circle_parking(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M9 17V7h4a3 3 0 0 1 0 6H9")]),
    ],
  )
}


pub fn circle_parking_off(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12.656 7H13a3 3 0 0 1 2.984 3.307")]),
      svg.path([a("d", "M13 13H9")]),
      svg.path([a("d", "M19.071 19.071A1 1 0 0 1 4.93 4.93")]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([a("d", "M8.357 2.687a10 10 0 0 1 12.956 12.956")]),
      svg.path([a("d", "M9 17V9")]),
    ],
  )
}


pub fn circle_pause(attributes: List(Attribute(a))) {
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
      svg.line([
        a("y2", "9"),
        a("y1", "15"),
        a("x2", "10"),
        a("x1", "10"),
      ]),
      svg.line([
        a("y2", "9"),
        a("y1", "15"),
        a("x2", "14"),
        a("x1", "14"),
      ]),
    ],
  )
}


pub fn circle_percent(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m15 9-6 6")]),
      svg.path([a("d", "M9 9h.01")]),
      svg.path([a("d", "M15 15h.01")]),
    ],
  )
}


pub fn circle_pile(attributes: List(Attribute(a))) {
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
        a("cy", "19"),
        a("cx", "12"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "5"),
        a("cx", "12"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "12"),
        a("cx", "16"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "19"),
        a("cx", "20"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "19"),
        a("cx", "4"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "12"),
        a("cx", "8"),
      ]),
    ],
  )
}


pub fn circle_play(attributes: List(Attribute(a))) {
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
          "M9 9.003a1 1 0 0 1 1.517-.859l4.997 2.997a1 1 0 0 1 0 1.718l-4.997 2.997A1 1 0 0 1 9 14.996z",
        ),
      ]),
      svg.circle([
        a("r", "10"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn circle_plus(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M8 12h8")]),
      svg.path([a("d", "M12 8v8")]),
    ],
  )
}


pub fn circle_pound_sterling(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10 16V9.5a1 1 0 0 1 5 0")]),
      svg.path([a("d", "M8 12h4")]),
      svg.path([a("d", "M8 16h7")]),
    ],
  )
}


pub fn circle_power(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 7v4")]),
      svg.path([a("d", "M7.998 9.003a5 5 0 1 0 8-.005")]),
    ],
  )
}


pub fn circle_question_mark(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3")]),
      svg.path([a("d", "M12 17h.01")]),
    ],
  )
}


pub fn circle_slash(attributes: List(Attribute(a))) {
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
      svg.line([
        a("y2", "9"),
        a("y1", "15"),
        a("x2", "15"),
        a("x1", "9"),
      ]),
    ],
  )
}


pub fn circle_slash_2(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M22 2 2 22")]),
    ],
  )
}


pub fn circle_small(attributes: List(Attribute(a))) {
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
        a("r", "6"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn circle_star(attributes: List(Attribute(a))) {
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
      svg.path([
        a(
          "d",
          "M11.051 7.616a1 1 0 0 1 1.909.024l.737 1.452a1 1 0 0 0 .737.535l1.634.256a1 1 0 0 1 .588 1.806l-1.172 1.168a1 1 0 0 0-.282.866l.259 1.613a1 1 0 0 1-1.541 1.134l-1.465-.75a1 1 0 0 0-.912 0l-1.465.75a1 1 0 0 1-1.539-1.133l.258-1.613a1 1 0 0 0-.282-.867l-1.156-1.152a1 1 0 0 1 .572-1.822l1.633-.256a1 1 0 0 0 .737-.535z",
        ),
      ]),
    ],
  )
}


pub fn circle_stop(attributes: List(Attribute(a))) {
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
      svg.rect([
        a("rx", "1"),
        a("height", "6"),
        a("width", "6"),
        a("y", "9"),
        a("x", "9"),
      ]),
    ],
  )
}


pub fn circle_user(attributes: List(Attribute(a))) {
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
        a("r", "3"),
        a("cy", "10"),
        a("cx", "12"),
      ]),
      svg.path([
        a("d", "M7 20.662V19a2 2 0 0 1 2-2h6a2 2 0 0 1 2 2v1.662"),
      ]),
    ],
  )
}


pub fn circle_user_round(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M17.925 20.056a6 6 0 0 0-11.851.001")]),
      svg.circle([
        a("r", "4"),
        a("cy", "11"),
        a("cx", "12"),
      ]),
      svg.circle([
        a("r", "10"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn circle_x(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m15 9-6 6")]),
      svg.path([a("d", "m9 9 6 6")]),
    ],
  )
}


pub fn circuit_board(attributes: List(Attribute(a))) {
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
        a("x", "3"),
        a("height", "18"),
        a("width", "18"),
      ]),
      svg.path([a("d", "M11 9h4a2 2 0 0 0 2-2V3")]),
      svg.circle([
        a("r", "2"),
        a("cy", "9"),
        a("cx", "9"),
      ]),
      svg.path([a("d", "M7 21v-4a2 2 0 0 1 2-2h4")]),
      svg.circle([
        a("r", "2"),
        a("cy", "15"),
        a("cx", "15"),
      ]),
    ],
  )
}


pub fn citrus(attributes: List(Attribute(a))) {
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
          "M21.66 17.67a1.08 1.08 0 0 1-.04 1.6A12 12 0 0 1 4.73 2.38a1.1 1.1 0 0 1 1.61-.04z",
        ),
      ]),
      svg.path([a("d", "M19.65 15.66A8 8 0 0 1 8.35 4.34")]),
      svg.path([a("d", "m14 10-5.5 5.5")]),
      svg.path([a("d", "M14 17.85V10H6.15")]),
    ],
  )
}


pub fn clapperboard(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m12.296 3.464 3.02 3.956")]),
      svg.path([
        a(
          "d",
          "M20.2 6 3 11l-.9-2.4c-.3-1.1.3-2.2 1.3-2.5l13.5-4c1.1-.3 2.2.3 2.5 1.3z",
        ),
      ]),
      svg.path([a("d", "M3 11h18v8a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z")]),
      svg.path([a("d", "m6.18 5.276 3.1 3.899")]),
    ],
  )
}


pub fn clipboard(attributes: List(Attribute(a))) {
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
        a("ry", "1"),
        a("rx", "1"),
        a("y", "2"),
        a("x", "8"),
        a("height", "4"),
        a("width", "8"),
      ]),
      svg.path([
        a(
          "d",
          "M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2",
        ),
      ]),
    ],
  )
}


pub fn clipboard_check(attributes: List(Attribute(a))) {
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
        a("ry", "1"),
        a("rx", "1"),
        a("y", "2"),
        a("x", "8"),
        a("height", "4"),
        a("width", "8"),
      ]),
      svg.path([
        a(
          "d",
          "M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2",
        ),
      ]),
      svg.path([a("d", "m9 14 2 2 4-4")]),
    ],
  )
}


pub fn clipboard_clock(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16 14v2.2l1.6 1")]),
      svg.path([a("d", "M16 4h2a2 2 0 0 1 2 2v.832")]),
      svg.path([a("d", "M8 4H6a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h2")]),
      svg.circle([
        a("r", "6"),
        a("cy", "16"),
        a("cx", "16"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("height", "4"),
        a("width", "8"),
        a("y", "2"),
        a("x", "8"),
      ]),
    ],
  )
}


pub fn clipboard_copy(attributes: List(Attribute(a))) {
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
        a("ry", "1"),
        a("rx", "1"),
        a("y", "2"),
        a("x", "8"),
        a("height", "4"),
        a("width", "8"),
      ]),
      svg.path([
        a("d", "M8 4H6a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-2"),
      ]),
      svg.path([a("d", "M16 4h2a2 2 0 0 1 2 2v4")]),
      svg.path([a("d", "M21 14H11")]),
      svg.path([a("d", "m15 10-4 4 4 4")]),
    ],
  )
}


pub fn clipboard_list(attributes: List(Attribute(a))) {
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
        a("ry", "1"),
        a("rx", "1"),
        a("y", "2"),
        a("x", "8"),
        a("height", "4"),
        a("width", "8"),
      ]),
      svg.path([
        a(
          "d",
          "M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2",
        ),
      ]),
      svg.path([a("d", "M12 11h4")]),
      svg.path([a("d", "M12 16h4")]),
      svg.path([a("d", "M8 11h.01")]),
      svg.path([a("d", "M8 16h.01")]),
    ],
  )
}


pub fn clipboard_minus(attributes: List(Attribute(a))) {
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
        a("ry", "1"),
        a("rx", "1"),
        a("y", "2"),
        a("x", "8"),
        a("height", "4"),
        a("width", "8"),
      ]),
      svg.path([
        a(
          "d",
          "M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2",
        ),
      ]),
      svg.path([a("d", "M9 14h6")]),
    ],
  )
}


pub fn clipboard_paste(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M11 14h10")]),
      svg.path([a("d", "M16 4h2a2 2 0 0 1 2 2v1.344")]),
      svg.path([a("d", "m17 18 4-4-4-4")]),
      svg.path([
        a("d", "M8 4H6a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h12a2 2 0 0 0 1.793-1.113"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("height", "4"),
        a("width", "8"),
        a("y", "2"),
        a("x", "8"),
      ]),
    ],
  )
}


pub fn clipboard_pen(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16 4h2a2 2 0 0 1 2 2v2")]),
      svg.path([
        a(
          "d",
          "M21.34 15.664a1 1 0 1 0-3.004-3.004l-5.01 5.012a2 2 0 0 0-.506.854l-.837 2.87a.5.5 0 0 0 .62.62l2.87-.837a2 2 0 0 0 .854-.506z",
        ),
      ]),
      svg.path([a("d", "M8 22H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2")]),
      svg.rect([
        a("rx", "1"),
        a("height", "4"),
        a("width", "8"),
        a("y", "2"),
        a("x", "8"),
      ]),
    ],
  )
}


pub fn clipboard_pen_line(attributes: List(Attribute(a))) {
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
        a("y", "2"),
        a("x", "8"),
        a("height", "4"),
        a("width", "8"),
      ]),
      svg.path([
        a("d", "M8 4H6a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-.5"),
      ]),
      svg.path([a("d", "M16 4h2a2 2 0 0 1 1.73 1")]),
      svg.path([a("d", "M8 18h1")]),
      svg.path([
        a(
          "d",
          "M21.378 12.626a1 1 0 0 0-3.004-3.004l-4.01 4.012a2 2 0 0 0-.506.854l-.837 2.87a.5.5 0 0 0 .62.62l2.87-.837a2 2 0 0 0 .854-.506z",
        ),
      ]),
    ],
  )
}


pub fn clipboard_plus(attributes: List(Attribute(a))) {
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
        a("ry", "1"),
        a("rx", "1"),
        a("y", "2"),
        a("x", "8"),
        a("height", "4"),
        a("width", "8"),
      ]),
      svg.path([
        a(
          "d",
          "M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2",
        ),
      ]),
      svg.path([a("d", "M9 14h6")]),
      svg.path([a("d", "M12 17v-6")]),
    ],
  )
}


pub fn clipboard_type(attributes: List(Attribute(a))) {
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
        a("ry", "1"),
        a("rx", "1"),
        a("y", "2"),
        a("x", "8"),
        a("height", "4"),
        a("width", "8"),
      ]),
      svg.path([
        a(
          "d",
          "M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2",
        ),
      ]),
      svg.path([a("d", "M9 12v-1h6v1")]),
      svg.path([a("d", "M11 17h2")]),
      svg.path([a("d", "M12 11v6")]),
    ],
  )
}


pub fn clipboard_x(attributes: List(Attribute(a))) {
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
        a("ry", "1"),
        a("rx", "1"),
        a("y", "2"),
        a("x", "8"),
        a("height", "4"),
        a("width", "8"),
      ]),
      svg.path([
        a(
          "d",
          "M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2",
        ),
      ]),
      svg.path([a("d", "m15 11-6 6")]),
      svg.path([a("d", "m9 11 6 6")]),
    ],
  )
}


pub fn clock(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 6v6l4 2")]),
    ],
  )
}


pub fn clock_1(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 6v6l2-4")]),
    ],
  )
}


pub fn clock_10(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 6v6l-4-2")]),
    ],
  )
}


pub fn clock_11(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 6v6l-2-4")]),
    ],
  )
}


pub fn clock_12(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 6v6")]),
    ],
  )
}


pub fn clock_2(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 6v6l4-2")]),
    ],
  )
}


pub fn clock_3(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 6v6h4")]),
    ],
  )
}


pub fn clock_4(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 6v6l4 2")]),
    ],
  )
}


pub fn clock_5(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 6v6l2 4")]),
    ],
  )
}


pub fn clock_6(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 6v10")]),
    ],
  )
}


pub fn clock_7(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 6v6l-2 4")]),
    ],
  )
}


pub fn clock_8(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 6v6l-4 2")]),
    ],
  )
}


pub fn clock_9(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 6v6H8")]),
    ],
  )
}


pub fn clock_alert(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 6v6l4 2")]),
      svg.path([a("d", "M20 12v5")]),
      svg.path([a("d", "M20 21h.01")]),
      svg.path([a("d", "M21.25 8.2A10 10 0 1 0 16 21.16")]),
    ],
  )
}


pub fn clock_arrow_down(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 6v6l2 1")]),
      svg.path([a("d", "M12.337 21.994a10 10 0 1 1 9.588-8.767")]),
      svg.path([a("d", "m14 18 4 4 4-4")]),
      svg.path([a("d", "M18 14v8")]),
    ],
  )
}


pub fn clock_arrow_up(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 6v6l1.56.78")]),
      svg.path([a("d", "M13.227 21.925a10 10 0 1 1 8.767-9.588")]),
      svg.path([a("d", "m14 18 4-4 4 4")]),
      svg.path([a("d", "M18 22v-8")]),
    ],
  )
}


pub fn clock_check(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 6v6l4 2")]),
      svg.path([a("d", "M22 12a10 10 0 1 0-11 9.95")]),
      svg.path([a("d", "m22 16-5.5 5.5L14 19")]),
    ],
  )
}


pub fn clock_fading(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 2a10 10 0 0 1 7.38 16.75")]),
      svg.path([a("d", "M12 6v6l4 2")]),
      svg.path([a("d", "M2.5 8.875a10 10 0 0 0-.5 3")]),
      svg.path([a("d", "M2.83 16a10 10 0 0 0 2.43 3.4")]),
      svg.path([a("d", "M4.636 5.235a10 10 0 0 1 .891-.857")]),
      svg.path([a("d", "M8.644 21.42a10 10 0 0 0 7.631-.38")]),
    ],
  )
}


pub fn clock_plus(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 6v6l3.644 1.822")]),
      svg.path([a("d", "M16 19h6")]),
      svg.path([a("d", "M19 16v6")]),
      svg.path([a("d", "M21.92 13.267a10 10 0 1 0-8.653 8.653")]),
    ],
  )
}


pub fn closed_caption(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10 9.17a3 3 0 1 0 0 5.66")]),
      svg.path([a("d", "M17 9.17a3 3 0 1 0 0 5.66")]),
      svg.rect([
        a("rx", "2"),
        a("height", "14"),
        a("width", "20"),
        a("y", "5"),
        a("x", "2"),
      ]),
    ],
  )
}


pub fn cloud(attributes: List(Attribute(a))) {
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
        a("d", "M17.5 19H9a7 7 0 1 1 6.71-9h1.79a4.5 4.5 0 1 1 0 9Z"),
      ]),
    ],
  )
}


pub fn cloud_alert(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 12v4")]),
      svg.path([a("d", "M12 20h.01")]),
      svg.path([
        a("d", "M8.128 16.949A7 7 0 1 1 15.71 8h1.79a1 1 0 0 1 0 9h-1.642"),
      ]),
    ],
  )
}


pub fn cloud_backup(attributes: List(Attribute(a))) {
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
        a("d", "M21 15.251A4.5 4.5 0 0 0 17.5 8h-1.79A7 7 0 1 0 3 13.607"),
      ]),
      svg.path([a("d", "M7 11v4h4")]),
      svg.path([
        a(
          "d",
          "M8 19a5 5 0 0 0 9-3 4.5 4.5 0 0 0-4.5-4.5 4.82 4.82 0 0 0-3.41 1.41L7 15",
        ),
      ]),
    ],
  )
}


pub fn cloud_check(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m17 15-5.5 5.5L9 18")]),
      svg.path([
        a("d", "M5.516 16.07A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 3.501 7.327"),
      ]),
    ],
  )
}


pub fn cloud_cog(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m10.852 19.772-.383.924")]),
      svg.path([a("d", "m13.148 14.228.383-.923")]),
      svg.path([
        a("d", "M13.148 19.772a3 3 0 1 0-2.296-5.544l-.383-.923"),
      ]),
      svg.path([a("d", "m13.53 20.696-.382-.924a3 3 0 1 1-2.296-5.544")]),
      svg.path([a("d", "m14.772 15.852.923-.383")]),
      svg.path([a("d", "m14.772 18.148.923.383")]),
      svg.path([
        a(
          "d",
          "M4.2 15.1a7 7 0 1 1 9.93-9.858A7 7 0 0 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.2",
        ),
      ]),
      svg.path([a("d", "m9.228 15.852-.923-.383")]),
      svg.path([a("d", "m9.228 18.148-.923.383")]),
    ],
  )
}


pub fn cloud_download(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 13v8l-4-4")]),
      svg.path([a("d", "m12 21 4-4")]),
      svg.path([
        a("d", "M4.393 15.269A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.436 8.284"),
      ]),
    ],
  )
}


pub fn cloud_drizzle(attributes: List(Attribute(a))) {
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
        a("d", "M4 14.899A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.242"),
      ]),
      svg.path([a("d", "M8 19v1")]),
      svg.path([a("d", "M8 14v1")]),
      svg.path([a("d", "M16 19v1")]),
      svg.path([a("d", "M16 14v1")]),
      svg.path([a("d", "M12 21v1")]),
      svg.path([a("d", "M12 16v1")]),
    ],
  )
}


pub fn cloud_fog(attributes: List(Attribute(a))) {
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
        a("d", "M4 14.899A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.242"),
      ]),
      svg.path([a("d", "M16 17H7")]),
      svg.path([a("d", "M17 21H9")]),
    ],
  )
}


pub fn cloud_hail(attributes: List(Attribute(a))) {
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
        a("d", "M4 14.899A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.242"),
      ]),
      svg.path([a("d", "M16 14v2")]),
      svg.path([a("d", "M8 14v2")]),
      svg.path([a("d", "M16 20h.01")]),
      svg.path([a("d", "M8 20h.01")]),
      svg.path([a("d", "M12 16v2")]),
      svg.path([a("d", "M12 22h.01")]),
    ],
  )
}


pub fn cloud_lightning(attributes: List(Attribute(a))) {
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
        a("d", "M6 16.326A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 .5 8.973"),
      ]),
      svg.path([a("d", "m13 12-3 5h4l-3 5")]),
    ],
  )
}


pub fn cloud_moon(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M13 16a3 3 0 0 1 0 6H7a5 5 0 1 1 4.9-6z")]),
      svg.path([
        a(
          "d",
          "M18.376 14.512a6 6 0 0 0 3.461-4.127c.148-.625-.659-.97-1.248-.714a4 4 0 0 1-5.259-5.26c.255-.589-.09-1.395-.716-1.248a6 6 0 0 0-4.594 5.36",
        ),
      ]),
    ],
  )
}


pub fn cloud_moon_rain(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M11 20v2")]),
      svg.path([
        a(
          "d",
          "M18.376 14.512a6 6 0 0 0 3.461-4.127c.148-.625-.659-.97-1.248-.714a4 4 0 0 1-5.259-5.26c.255-.589-.09-1.395-.716-1.248a6 6 0 0 0-4.594 5.36",
        ),
      ]),
      svg.path([a("d", "M3 20a5 5 0 1 1 8.9-4H13a3 3 0 0 1 2 5.24")]),
      svg.path([a("d", "M7 19v2")]),
    ],
  )
}


pub fn cloud_off(attributes: List(Attribute(a))) {
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
        a("d", "M10.94 5.274A7 7 0 0 1 15.71 10h1.79a4.5 4.5 0 0 1 4.222 6.057"),
      ]),
      svg.path([
        a("d", "M18.796 18.81A4.5 4.5 0 0 1 17.5 19H9A7 7 0 0 1 5.79 5.78"),
      ]),
      svg.path([a("d", "m2 2 20 20")]),
    ],
  )
}


pub fn cloud_rain(attributes: List(Attribute(a))) {
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
        a("d", "M4 14.899A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.242"),
      ]),
      svg.path([a("d", "M16 14v6")]),
      svg.path([a("d", "M8 14v6")]),
      svg.path([a("d", "M12 16v6")]),
    ],
  )
}


pub fn cloud_rain_wind(attributes: List(Attribute(a))) {
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
        a("d", "M4 14.899A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.242"),
      ]),
      svg.path([a("d", "m9.2 22 3-7")]),
      svg.path([a("d", "m9 13-3 7")]),
      svg.path([a("d", "m17 13-3 7")]),
    ],
  )
}


pub fn cloud_snow(attributes: List(Attribute(a))) {
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
        a("d", "M4 14.899A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.242"),
      ]),
      svg.path([a("d", "M8 15h.01")]),
      svg.path([a("d", "M8 19h.01")]),
      svg.path([a("d", "M12 17h.01")]),
      svg.path([a("d", "M12 21h.01")]),
      svg.path([a("d", "M16 15h.01")]),
      svg.path([a("d", "M16 19h.01")]),
    ],
  )
}


pub fn cloud_sun(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m4.93 4.93 1.41 1.41")]),
      svg.path([a("d", "M20 12h2")]),
      svg.path([a("d", "m19.07 4.93-1.41 1.41")]),
      svg.path([a("d", "M15.947 12.65a4 4 0 0 0-5.925-4.128")]),
      svg.path([a("d", "M13 22H7a5 5 0 1 1 4.9-6H13a3 3 0 0 1 0 6Z")]),
    ],
  )
}


pub fn cloud_sun_rain(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m4.93 4.93 1.41 1.41")]),
      svg.path([a("d", "M20 12h2")]),
      svg.path([a("d", "m19.07 4.93-1.41 1.41")]),
      svg.path([a("d", "M15.947 12.65a4 4 0 0 0-5.925-4.128")]),
      svg.path([a("d", "M3 20a5 5 0 1 1 8.9-4H13a3 3 0 0 1 2 5.24")]),
      svg.path([a("d", "M11 20v2")]),
      svg.path([a("d", "M7 19v2")]),
    ],
  )
}


pub fn cloud_sync(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m17 18-1.535 1.605a5 5 0 0 1-8-1.5")]),
      svg.path([a("d", "M17 22v-4h-4")]),
      svg.path([
        a(
          "d",
          "M20.996 15.251A4.5 4.5 0 0 0 17.495 8h-1.79a7 7 0 1 0-12.709 5.607",
        ),
      ]),
      svg.path([a("d", "M7 10v4h4")]),
      svg.path([a("d", "m7 14 1.535-1.605a5 5 0 0 1 8 1.5")]),
    ],
  )
}


pub fn cloud_upload(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 13v8")]),
      svg.path([
        a("d", "M4 14.899A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.242"),
      ]),
      svg.path([a("d", "m8 17 4-4 4 4")]),
    ],
  )
}


pub fn cloudy(attributes: List(Attribute(a))) {
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
        a("d", "M17.5 12a1 1 0 1 1 0 9H9.006a7 7 0 1 1 6.702-9z"),
      ]),
      svg.path([
        a("d", "M21.832 9A3 3 0 0 0 19 7h-2.207a5.5 5.5 0 0 0-10.72.61"),
      ]),
    ],
  )
}


pub fn clover(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16.17 7.83 2 22")]),
      svg.path([
        a(
          "d",
          "M4.02 12a2.827 2.827 0 1 1 3.81-4.17A2.827 2.827 0 1 1 12 4.02a2.827 2.827 0 1 1 4.17 3.81A2.827 2.827 0 1 1 19.98 12a2.827 2.827 0 1 1-3.81 4.17A2.827 2.827 0 1 1 12 19.98a2.827 2.827 0 1 1-4.17-3.81A1 1 0 1 1 4 12",
        ),
      ]),
      svg.path([a("d", "m7.83 7.83 8.34 8.34")]),
    ],
  )
}


pub fn club(attributes: List(Attribute(a))) {
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
          "M17.28 9.05a5.5 5.5 0 1 0-10.56 0A5.5 5.5 0 1 0 12 17.66a5.5 5.5 0 1 0 5.28-8.6Z",
        ),
      ]),
      svg.path([a("d", "M12 17.66L12 22")]),
    ],
  )
}


pub fn code(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m16 18 6-6-6-6")]),
      svg.path([a("d", "m8 6-6 6 6 6")]),
    ],
  )
}


pub fn code_xml(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m18 16 4-4-4-4")]),
      svg.path([a("d", "m6 8-4 4 4 4")]),
      svg.path([a("d", "m14.5 4-5 16")]),
    ],
  )
}


pub fn coffee(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10 2v2")]),
      svg.path([a("d", "M14 2v2")]),
      svg.path([
        a(
          "d",
          "M16 8a1 1 0 0 1 1 1v8a4 4 0 0 1-4 4H7a4 4 0 0 1-4-4V9a1 1 0 0 1 1-1h14a4 4 0 1 1 0 8h-1",
        ),
      ]),
      svg.path([a("d", "M6 2v2")]),
    ],
  )
}


pub fn cog(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M11 10.27 7 3.34")]),
      svg.path([a("d", "m11 13.73-4 6.93")]),
      svg.path([a("d", "M12 22v-2")]),
      svg.path([a("d", "M12 2v2")]),
      svg.path([a("d", "M14 12h8")]),
      svg.path([a("d", "m17 20.66-1-1.73")]),
      svg.path([a("d", "m17 3.34-1 1.73")]),
      svg.path([a("d", "M2 12h2")]),
      svg.path([a("d", "m20.66 17-1.73-1")]),
      svg.path([a("d", "m20.66 7-1.73 1")]),
      svg.path([a("d", "m3.34 17 1.73-1")]),
      svg.path([a("d", "m3.34 7 1.73 1")]),
      svg.circle([
        a("r", "2"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
      svg.circle([
        a("r", "8"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn coins(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M13.744 17.736a6 6 0 1 1-7.48-7.48")]),
      svg.path([a("d", "M15 6h1v4")]),
      svg.path([a("d", "m6.134 14.768.866-.5 2 3.464")]),
      svg.circle([
        a("r", "6"),
        a("cy", "8"),
        a("cx", "16"),
      ]),
    ],
  )
}


pub fn columns_2(attributes: List(Attribute(a))) {
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
        a("x", "3"),
        a("height", "18"),
        a("width", "18"),
      ]),
      svg.path([a("d", "M12 3v18")]),
    ],
  )
}


pub fn columns_3(attributes: List(Attribute(a))) {
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
        a("x", "3"),
        a("height", "18"),
        a("width", "18"),
      ]),
      svg.path([a("d", "M9 3v18")]),
      svg.path([a("d", "M15 3v18")]),
    ],
  )
}


pub fn columns_3_cog(attributes: List(Attribute(a))) {
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
        a("d", "M10.5 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2v5.5"),
      ]),
      svg.path([a("d", "m14.3 19.6 1-.4")]),
      svg.path([a("d", "M15 3v7.5")]),
      svg.path([a("d", "m15.2 16.9-.9-.3")]),
      svg.path([a("d", "m16.6 21.7.3-.9")]),
      svg.path([a("d", "m16.8 15.3-.4-1")]),
      svg.path([a("d", "m19.1 15.2.3-.9")]),
      svg.path([a("d", "m19.6 21.7-.4-1")]),
      svg.path([a("d", "m20.7 16.8 1-.4")]),
      svg.path([a("d", "m21.7 19.4-.9-.3")]),
      svg.path([a("d", "M9 3v18")]),
      svg.circle([
        a("r", "3"),
        a("cy", "18"),
        a("cx", "18"),
      ]),
    ],
  )
}


pub fn columns_4(attributes: List(Attribute(a))) {
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
        a("x", "3"),
        a("height", "18"),
        a("width", "18"),
      ]),
      svg.path([a("d", "M7.5 3v18")]),
      svg.path([a("d", "M12 3v18")]),
      svg.path([a("d", "M16.5 3v18")]),
    ],
  )
}


pub fn combine(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M14 3a1 1 0 0 1 1 1v5a1 1 0 0 1-1 1")]),
      svg.path([a("d", "M19 3a1 1 0 0 1 1 1v5a1 1 0 0 1-1 1")]),
      svg.path([a("d", "m7 15 3 3")]),
      svg.path([a("d", "m7 21 3-3H5a2 2 0 0 1-2-2v-2")]),
      svg.rect([
        a("rx", "1"),
        a("height", "7"),
        a("width", "7"),
        a("y", "14"),
        a("x", "14"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("height", "7"),
        a("width", "7"),
        a("y", "3"),
        a("x", "3"),
      ]),
    ],
  )
}


pub fn command(attributes: List(Attribute(a))) {
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
          "M15 6v12a3 3 0 1 0 3-3H6a3 3 0 1 0 3 3V6a3 3 0 1 0-3 3h12a3 3 0 1 0-3-3",
        ),
      ]),
    ],
  )
}


pub fn compass(attributes: List(Attribute(a))) {
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
      svg.path([
        a(
          "d",
          "m16.24 7.76-1.804 5.411a2 2 0 0 1-1.265 1.265L7.76 16.24l1.804-5.411a2 2 0 0 1 1.265-1.265z",
        ),
      ]),
    ],
  )
}


pub fn component(attributes: List(Attribute(a))) {
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
          "M15.536 11.293a1 1 0 0 0 0 1.414l2.376 2.377a1 1 0 0 0 1.414 0l2.377-2.377a1 1 0 0 0 0-1.414l-2.377-2.377a1 1 0 0 0-1.414 0z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M2.297 11.293a1 1 0 0 0 0 1.414l2.377 2.377a1 1 0 0 0 1.414 0l2.377-2.377a1 1 0 0 0 0-1.414L6.088 8.916a1 1 0 0 0-1.414 0z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M8.916 17.912a1 1 0 0 0 0 1.415l2.377 2.376a1 1 0 0 0 1.414 0l2.377-2.376a1 1 0 0 0 0-1.415l-2.377-2.376a1 1 0 0 0-1.414 0z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M8.916 4.674a1 1 0 0 0 0 1.414l2.377 2.376a1 1 0 0 0 1.414 0l2.377-2.376a1 1 0 0 0 0-1.414l-2.377-2.377a1 1 0 0 0-1.414 0z",
        ),
      ]),
    ],
  )
}


pub fn computer(attributes: List(Attribute(a))) {
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
        a("x", "5"),
        a("height", "8"),
        a("width", "14"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("y", "14"),
        a("x", "2"),
        a("height", "8"),
        a("width", "20"),
      ]),
      svg.path([a("d", "M6 18h2")]),
      svg.path([a("d", "M12 18h6")]),
    ],
  )
}


pub fn concierge_bell(attributes: List(Attribute(a))) {
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
          "M3 20a1 1 0 0 1-1-1v-1a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v1a1 1 0 0 1-1 1Z",
        ),
      ]),
      svg.path([a("d", "M20 16a8 8 0 1 0-16 0")]),
      svg.path([a("d", "M12 4v4")]),
      svg.path([a("d", "M10 4h4")]),
    ],
  )
}


pub fn cone(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m20.9 18.55-8-15.98a1 1 0 0 0-1.8 0l-8 15.98")]),
      svg.ellipse([
        a("ry", "3"),
        a("rx", "9"),
        a("cy", "19"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn construction(attributes: List(Attribute(a))) {
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
        a("height", "8"),
        a("width", "20"),
        a("y", "6"),
        a("x", "2"),
      ]),
      svg.path([a("d", "M17 14v7")]),
      svg.path([a("d", "M7 14v7")]),
      svg.path([a("d", "M17 3v3")]),
      svg.path([a("d", "M7 3v3")]),
      svg.path([a("d", "M10 14 2.3 6.3")]),
      svg.path([a("d", "m14 6 7.7 7.7")]),
      svg.path([a("d", "m8 6 8 8")]),
    ],
  )
}


pub fn contact(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16 2v2")]),
      svg.path([a("d", "M7 22v-2a2 2 0 0 1 2-2h6a2 2 0 0 1 2 2v2")]),
      svg.path([a("d", "M8 2v2")]),
      svg.circle([
        a("r", "3"),
        a("cy", "11"),
        a("cx", "12"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("height", "18"),
        a("width", "18"),
        a("y", "4"),
        a("x", "3"),
      ]),
    ],
  )
}


pub fn contact_round(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16 2v2")]),
      svg.path([a("d", "M17.915 22a6 6 0 0 0-12 0")]),
      svg.path([a("d", "M8 2v2")]),
      svg.circle([
        a("r", "4"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("height", "18"),
        a("width", "18"),
        a("y", "4"),
        a("x", "3"),
      ]),
    ],
  )
}


pub fn container(attributes: List(Attribute(a))) {
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
          "M22 7.7c0-.6-.4-1.2-.8-1.5l-6.3-3.9a1.72 1.72 0 0 0-1.7 0l-10.3 6c-.5.2-.9.8-.9 1.4v6.6c0 .5.4 1.2.8 1.5l6.3 3.9a1.72 1.72 0 0 0 1.7 0l10.3-6c.5-.3.9-1 .9-1.5Z",
        ),
      ]),
      svg.path([a("d", "M10 21.9V14L2.1 9.1")]),
      svg.path([a("d", "m10 14 11.9-6.9")]),
      svg.path([a("d", "M14 19.8v-8.1")]),
      svg.path([a("d", "M18 17.5V9.4")]),
    ],
  )
}


pub fn contrast(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 18a6 6 0 0 0 0-12v12z")]),
    ],
  )
}


pub fn cookie(attributes: List(Attribute(a))) {
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
        a("d", "M12 2a10 10 0 1 0 10 10 4 4 0 0 1-5-5 4 4 0 0 1-5-5"),
      ]),
      svg.path([a("d", "M8.5 8.5v.01")]),
      svg.path([a("d", "M16 15.5v.01")]),
      svg.path([a("d", "M12 12v.01")]),
      svg.path([a("d", "M11 17v.01")]),
      svg.path([a("d", "M7 14v.01")]),
    ],
  )
}


pub fn cooking_pot(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M20 12v8a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2v-8")]),
      svg.path([a("d", "m4 8 16-4")]),
      svg.path([
        a(
          "d",
          "m8.86 6.78-.45-1.81a2 2 0 0 1 1.45-2.43l1.94-.48a2 2 0 0 1 2.43 1.46l.45 1.8",
        ),
      ]),
    ],
  )
}


pub fn copy(attributes: List(Attribute(a))) {
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
        a("y", "8"),
        a("x", "8"),
        a("height", "14"),
        a("width", "14"),
      ]),
      svg.path([
        a("d", "M4 16c-1.1 0-2-.9-2-2V4c0-1.1.9-2 2-2h10c1.1 0 2 .9 2 2"),
      ]),
    ],
  )
}


pub fn copy_check(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m12 15 2 2 4-4")]),
      svg.rect([
        a("ry", "2"),
        a("rx", "2"),
        a("y", "8"),
        a("x", "8"),
        a("height", "14"),
        a("width", "14"),
      ]),
      svg.path([
        a("d", "M4 16c-1.1 0-2-.9-2-2V4c0-1.1.9-2 2-2h10c1.1 0 2 .9 2 2"),
      ]),
    ],
  )
}


pub fn copy_minus(attributes: List(Attribute(a))) {
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
        a("y2", "15"),
        a("y1", "15"),
        a("x2", "18"),
        a("x1", "12"),
      ]),
      svg.rect([
        a("ry", "2"),
        a("rx", "2"),
        a("y", "8"),
        a("x", "8"),
        a("height", "14"),
        a("width", "14"),
      ]),
      svg.path([
        a("d", "M4 16c-1.1 0-2-.9-2-2V4c0-1.1.9-2 2-2h10c1.1 0 2 .9 2 2"),
      ]),
    ],
  )
}


pub fn copy_plus(attributes: List(Attribute(a))) {
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
        a("y2", "18"),
        a("y1", "12"),
        a("x2", "15"),
        a("x1", "15"),
      ]),
      svg.line([
        a("y2", "15"),
        a("y1", "15"),
        a("x2", "18"),
        a("x1", "12"),
      ]),
      svg.rect([
        a("ry", "2"),
        a("rx", "2"),
        a("y", "8"),
        a("x", "8"),
        a("height", "14"),
        a("width", "14"),
      ]),
      svg.path([
        a("d", "M4 16c-1.1 0-2-.9-2-2V4c0-1.1.9-2 2-2h10c1.1 0 2 .9 2 2"),
      ]),
    ],
  )
}


pub fn copy_slash(attributes: List(Attribute(a))) {
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
        a("y2", "12"),
        a("y1", "18"),
        a("x2", "18"),
        a("x1", "12"),
      ]),
      svg.rect([
        a("ry", "2"),
        a("rx", "2"),
        a("y", "8"),
        a("x", "8"),
        a("height", "14"),
        a("width", "14"),
      ]),
      svg.path([
        a("d", "M4 16c-1.1 0-2-.9-2-2V4c0-1.1.9-2 2-2h10c1.1 0 2 .9 2 2"),
      ]),
    ],
  )
}


pub fn copy_x(attributes: List(Attribute(a))) {
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
        a("y2", "18"),
        a("y1", "12"),
        a("x2", "18"),
        a("x1", "12"),
      ]),
      svg.line([
        a("y2", "12"),
        a("y1", "18"),
        a("x2", "18"),
        a("x1", "12"),
      ]),
      svg.rect([
        a("ry", "2"),
        a("rx", "2"),
        a("y", "8"),
        a("x", "8"),
        a("height", "14"),
        a("width", "14"),
      ]),
      svg.path([
        a("d", "M4 16c-1.1 0-2-.9-2-2V4c0-1.1.9-2 2-2h10c1.1 0 2 .9 2 2"),
      ]),
    ],
  )
}


pub fn copyleft(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M9.17 14.83a4 4 0 1 0 0-5.66")]),
    ],
  )
}


pub fn copyright(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M14.83 14.83a4 4 0 1 1 0-5.66")]),
    ],
  )
}


pub fn corner_down_left(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M20 4v7a4 4 0 0 1-4 4H4")]),
      svg.path([a("d", "m9 10-5 5 5 5")]),
    ],
  )
}


pub fn corner_down_right(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m15 10 5 5-5 5")]),
      svg.path([a("d", "M4 4v7a4 4 0 0 0 4 4h12")]),
    ],
  )
}


pub fn corner_left_down(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m14 15-5 5-5-5")]),
      svg.path([a("d", "M20 4h-7a4 4 0 0 0-4 4v12")]),
    ],
  )
}


pub fn corner_left_up(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M14 9 9 4 4 9")]),
      svg.path([a("d", "M20 20h-7a4 4 0 0 1-4-4V4")]),
    ],
  )
}


pub fn corner_right_down(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m10 15 5 5 5-5")]),
      svg.path([a("d", "M4 4h7a4 4 0 0 1 4 4v12")]),
    ],
  )
}


pub fn corner_right_up(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m10 9 5-5 5 5")]),
      svg.path([a("d", "M4 20h7a4 4 0 0 0 4-4V4")]),
    ],
  )
}


pub fn corner_up_left(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M20 20v-7a4 4 0 0 0-4-4H4")]),
      svg.path([a("d", "M9 14 4 9l5-5")]),
    ],
  )
}


pub fn corner_up_right(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m15 14 5-5-5-5")]),
      svg.path([a("d", "M4 20v-7a4 4 0 0 1 4-4h12")]),
    ],
  )
}


pub fn cpu(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 20v2")]),
      svg.path([a("d", "M12 2v2")]),
      svg.path([a("d", "M17 20v2")]),
      svg.path([a("d", "M17 2v2")]),
      svg.path([a("d", "M2 12h2")]),
      svg.path([a("d", "M2 17h2")]),
      svg.path([a("d", "M2 7h2")]),
      svg.path([a("d", "M20 12h2")]),
      svg.path([a("d", "M20 17h2")]),
      svg.path([a("d", "M20 7h2")]),
      svg.path([a("d", "M7 20v2")]),
      svg.path([a("d", "M7 2v2")]),
      svg.rect([
        a("rx", "2"),
        a("height", "16"),
        a("width", "16"),
        a("y", "4"),
        a("x", "4"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("height", "8"),
        a("width", "8"),
        a("y", "8"),
        a("x", "8"),
      ]),
    ],
  )
}


pub fn creative_commons(attributes: List(Attribute(a))) {
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
      svg.path([
        a(
          "d",
          "M10 9.3a2.8 2.8 0 0 0-3.5 1 3.1 3.1 0 0 0 0 3.4 2.7 2.7 0 0 0 3.5 1",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M17 9.3a2.8 2.8 0 0 0-3.5 1 3.1 3.1 0 0 0 0 3.4 2.7 2.7 0 0 0 3.5 1",
        ),
      ]),
    ],
  )
}


pub fn credit_card(attributes: List(Attribute(a))) {
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
        a("width", "20"),
      ]),
      svg.line([
        a("y2", "10"),
        a("y1", "10"),
        a("x2", "22"),
        a("x1", "2"),
      ]),
    ],
  )
}


pub fn croissant(attributes: List(Attribute(a))) {
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
        a("d", "M10.2 18H4.774a1.5 1.5 0 0 1-1.352-.97 11 11 0 0 1 .132-6.487"),
      ]),
      svg.path([
        a("d", "M18 10.2V4.774a1.5 1.5 0 0 0-.97-1.352 11 11 0 0 0-6.486.132"),
      ]),
      svg.path([
        a("d", "M18 5a4 3 0 0 1 4 3 2 2 0 0 1-2 2 10 10 0 0 0-5.139 1.42"),
      ]),
      svg.path([
        a("d", "M5 18a3 4 0 0 0 3 4 2 2 0 0 0 2-2 10 10 0 0 1 1.42-5.14"),
      ]),
      svg.path([
        a(
          "d",
          "M8.709 2.554a10 10 0 0 0-6.155 6.155 1.5 1.5 0 0 0 .676 1.626l9.807 5.42a2 2 0 0 0 2.718-2.718l-5.42-9.807a1.5 1.5 0 0 0-1.626-.676",
        ),
      ]),
    ],
  )
}


pub fn crop(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M6 2v14a2 2 0 0 0 2 2h14")]),
      svg.path([a("d", "M18 22V8a2 2 0 0 0-2-2H2")]),
    ],
  )
}


pub fn cross(attributes: List(Attribute(a))) {
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
          "M4 9a2 2 0 0 0-2 2v2a2 2 0 0 0 2 2h4a1 1 0 0 1 1 1v4a2 2 0 0 0 2 2h2a2 2 0 0 0 2-2v-4a1 1 0 0 1 1-1h4a2 2 0 0 0 2-2v-2a2 2 0 0 0-2-2h-4a1 1 0 0 1-1-1V4a2 2 0 0 0-2-2h-2a2 2 0 0 0-2 2v4a1 1 0 0 1-1 1z",
        ),
      ]),
    ],
  )
}


pub fn crosshair(attributes: List(Attribute(a))) {
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
      svg.line([
        a("y2", "12"),
        a("y1", "12"),
        a("x2", "18"),
        a("x1", "22"),
      ]),
      svg.line([
        a("y2", "12"),
        a("y1", "12"),
        a("x2", "2"),
        a("x1", "6"),
      ]),
      svg.line([
        a("y2", "2"),
        a("y1", "6"),
        a("x2", "12"),
        a("x1", "12"),
      ]),
      svg.line([
        a("y2", "18"),
        a("y1", "22"),
        a("x2", "12"),
        a("x1", "12"),
      ]),
    ],
  )
}


pub fn crown(attributes: List(Attribute(a))) {
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
          "M11.562 3.266a.5.5 0 0 1 .876 0L15.39 8.87a1 1 0 0 0 1.516.294L21.183 5.5a.5.5 0 0 1 .798.519l-2.834 10.246a1 1 0 0 1-.956.734H5.81a1 1 0 0 1-.957-.734L2.02 6.02a.5.5 0 0 1 .798-.519l4.276 3.664a1 1 0 0 0 1.516-.294z",
        ),
      ]),
      svg.path([a("d", "M5 21h14")]),
    ],
  )
}


pub fn cuboid(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10 22v-8")]),
      svg.path([a("d", "M2.336 8.89 10 14l11.715-7.029")]),
      svg.path([
        a(
          "d",
          "M22 14a2 2 0 0 1-.971 1.715l-10 6a2 2 0 0 1-2.138-.05l-6-4A2 2 0 0 1 2 16v-6a2 2 0 0 1 .971-1.715l10-6a2 2 0 0 1 2.138.05l6 4A2 2 0 0 1 22 8z",
        ),
      ]),
    ],
  )
}


pub fn cup_soda(attributes: List(Attribute(a))) {
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
        a("d", "m6 8 1.75 12.28a2 2 0 0 0 2 1.72h4.54a2 2 0 0 0 2-1.72L18 8"),
      ]),
      svg.path([a("d", "M5 8h14")]),
      svg.path([a("d", "M7 15a6.47 6.47 0 0 1 5 0 6.47 6.47 0 0 0 5 0")]),
      svg.path([a("d", "m12 8 1-6h2")]),
    ],
  )
}


pub fn currency(attributes: List(Attribute(a))) {
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
        a("cy", "12"),
        a("cx", "12"),
      ]),
      svg.line([
        a("y2", "6"),
        a("y1", "3"),
        a("x2", "6"),
        a("x1", "3"),
      ]),
      svg.line([
        a("y2", "6"),
        a("y1", "3"),
        a("x2", "18"),
        a("x1", "21"),
      ]),
      svg.line([
        a("y2", "18"),
        a("y1", "21"),
        a("x2", "6"),
        a("x1", "3"),
      ]),
      svg.line([
        a("y2", "18"),
        a("y1", "21"),
        a("x2", "18"),
        a("x1", "21"),
      ]),
    ],
  )
}


pub fn cylinder(attributes: List(Attribute(a))) {
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
        a("ry", "3"),
        a("rx", "9"),
        a("cy", "5"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M3 5v14a9 3 0 0 0 18 0V5")]),
    ],
  )
}
