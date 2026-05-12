import lustre/attribute.{type Attribute, attribute as a}
import lustre/element/svg

pub fn ice_cream_bowl(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M12 17c5 0 8-2.69 8-6H4c0 3.31 3 6 8 6m-4 4h8m-4-3v3M5.14 11a3.5 3.5 0 1 1 6.71 0",
        ),
      ]),
      svg.path([a("d", "M12.14 11a3.5 3.5 0 1 1 6.71 0")]),
      svg.path([a("d", "M15.5 6.5a3.5 3.5 0 1 0-7 0")]),
    ],
  )
}


pub fn ice_cream_cone(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m7 11 4.08 10.35a1 1 0 0 0 1.84 0L17 11")]),
      svg.path([a("d", "M17 7A5 5 0 0 0 7 7")]),
      svg.path([a("d", "M17 7a2 2 0 0 1 0 4H7a2 2 0 0 1 0-4")]),
    ],
  )
}


pub fn id_card(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M16 10h2")]),
      svg.path([a("d", "M16 14h2")]),
      svg.path([a("d", "M6.17 15a3 3 0 0 1 5.66 0")]),
      svg.circle([
        a("r", "2"),
        a("cy", "11"),
        a("cx", "9"),
      ]),
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


pub fn id_card_lanyard(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M13.5 8h-3")]),
      svg.path([
        a(
          "d",
          "m15 2-1 2h3a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h3",
        ),
      ]),
      svg.path([a("d", "M16.899 22A5 5 0 0 0 7.1 22")]),
      svg.path([a("d", "m9 2 3 6")]),
      svg.circle([
        a("r", "3"),
        a("cy", "15"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn image(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.circle([
        a("r", "2"),
        a("cy", "9"),
        a("cx", "9"),
      ]),
      svg.path([a("d", "m21 15-3.086-3.086a2 2 0 0 0-2.828 0L6 21")]),
    ],
  )
}


pub fn image_down(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M10.3 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2v10l-3.1-3.1a2 2 0 0 0-2.814.014L6 21",
        ),
      ]),
      svg.path([a("d", "m14 19 3 3v-5.5")]),
      svg.path([a("d", "m17 22 3-3")]),
      svg.circle([
        a("r", "2"),
        a("cy", "9"),
        a("cx", "9"),
      ]),
    ],
  )
}


pub fn image_minus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M21 9v10a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h7"),
      ]),
      svg.line([
        a("y2", "5"),
        a("y1", "5"),
        a("x2", "22"),
        a("x1", "16"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "9"),
        a("cx", "9"),
      ]),
      svg.path([a("d", "m21 15-3.086-3.086a2 2 0 0 0-2.828 0L6 21")]),
    ],
  )
}


pub fn image_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("y2", "22"),
        a("y1", "2"),
        a("x2", "22"),
        a("x1", "2"),
      ]),
      svg.path([a("d", "M10.41 10.41a2 2 0 1 1-2.83-2.83")]),
      svg.line([
        a("y2", "21"),
        a("y1", "13.5"),
        a("x2", "6"),
        a("x1", "13.5"),
      ]),
      svg.line([
        a("y2", "15"),
        a("y1", "12"),
        a("x2", "21"),
        a("x1", "18"),
      ]),
      svg.path([
        a(
          "d",
          "M3.59 3.59A1.99 1.99 0 0 0 3 5v14a2 2 0 0 0 2 2h14c.55 0 1.052-.22 1.41-.59",
        ),
      ]),
      svg.path([a("d", "M21 15V5a2 2 0 0 0-2-2H9")]),
    ],
  )
}


pub fn image_play(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M15 15.003a1 1 0 0 1 1.517-.859l4.997 2.997a1 1 0 0 1 0 1.718l-4.997 2.997a1 1 0 0 1-1.517-.86z",
        ),
      ]),
      svg.path([
        a("d", "M21 12.17V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h6"),
      ]),
      svg.path([a("d", "m6 21 5-5")]),
      svg.circle([
        a("r", "2"),
        a("cy", "9"),
        a("cx", "9"),
      ]),
    ],
  )
}


pub fn image_plus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M16 5h6")]),
      svg.path([a("d", "M19 2v6")]),
      svg.path([
        a("d", "M21 11.5V19a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h7.5"),
      ]),
      svg.path([a("d", "m21 15-3.086-3.086a2 2 0 0 0-2.828 0L6 21")]),
      svg.circle([
        a("r", "2"),
        a("cy", "9"),
        a("cx", "9"),
      ]),
    ],
  )
}


pub fn image_up(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M10.3 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2v10l-3.1-3.1a2 2 0 0 0-2.814.014L6 21",
        ),
      ]),
      svg.path([a("d", "m14 19.5 3-3 3 3")]),
      svg.path([a("d", "M17 22v-5.5")]),
      svg.circle([
        a("r", "2"),
        a("cy", "9"),
        a("cx", "9"),
      ]),
    ],
  )
}


pub fn image_upscale(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M16 3h5v5")]),
      svg.path([a("d", "M17 21h2a2 2 0 0 0 2-2")]),
      svg.path([a("d", "M21 12v3")]),
      svg.path([a("d", "m21 3-5 5")]),
      svg.path([a("d", "M3 7V5a2 2 0 0 1 2-2")]),
      svg.path([
        a("d", "m5 21 4.144-4.144a1.21 1.21 0 0 1 1.712 0L13 19"),
      ]),
      svg.path([a("d", "M9 3h3")]),
      svg.rect([
        a("rx", "1"),
        a("height", "10"),
        a("width", "10"),
        a("y", "11"),
        a("x", "3"),
      ]),
    ],
  )
}


pub fn images(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "m22 11-1.296-1.296a2.4 2.4 0 0 0-3.408 0L11 16"),
      ]),
      svg.path([
        a("d", "M4 8a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2"),
      ]),
      svg.circle([
        a("fill", "currentColor"),
        a("r", "1"),
        a("cy", "7"),
        a("cx", "13"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("height", "14"),
        a("width", "14"),
        a("y", "2"),
        a("x", "8"),
      ]),
    ],
  )
}


pub fn import_(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 3v12")]),
      svg.path([a("d", "m8 11 4 4 4-4")]),
      svg.path([
        a(
          "d",
          "M8 5H4a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V7a2 2 0 0 0-2-2h-4",
        ),
      ]),
    ],
  )
}


pub fn inbox(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.polyline([a("points", "22 12 16 12 14 15 10 15 8 12 2 12")]),
      svg.path([
        a(
          "d",
          "M5.45 5.11 2 12v6a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-6l-3.45-6.89A2 2 0 0 0 16.76 4H7.24a2 2 0 0 0-1.79 1.11z",
        ),
      ]),
    ],
  )
}


pub fn indian_rupee(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M6 3h12")]),
      svg.path([a("d", "M6 8h12")]),
      svg.path([a("d", "m6 13 8.5 8")]),
      svg.path([a("d", "M6 13h3")]),
      svg.path([a("d", "M9 13c6.667 0 6.667-10 0-10")]),
    ],
  )
}


pub fn infinity(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M6 16c5 0 7-8 12-8a4 4 0 0 1 0 8c-5 0-7-8-12-8a4 4 0 1 0 0 8"),
      ]),
    ],
  )
}


pub fn info(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M12 16v-4")]),
      svg.path([a("d", "M12 8h.01")]),
    ],
  )
}


pub fn inspection_panel(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M7 7h.01")]),
      svg.path([a("d", "M17 7h.01")]),
      svg.path([a("d", "M7 17h.01")]),
      svg.path([a("d", "M17 17h.01")]),
    ],
  )
}


pub fn italic(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("y2", "4"),
        a("y1", "4"),
        a("x2", "10"),
        a("x1", "19"),
      ]),
      svg.line([
        a("y2", "20"),
        a("y1", "20"),
        a("x2", "5"),
        a("x1", "14"),
      ]),
      svg.line([
        a("y2", "20"),
        a("y1", "4"),
        a("x2", "9"),
        a("x1", "15"),
      ]),
    ],
  )
}


pub fn iteration_ccw(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m16 14 4 4-4 4")]),
      svg.path([a("d", "M20 10a8 8 0 1 0-8 8h8")]),
    ],
  )
}


pub fn iteration_cw(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M4 10a8 8 0 1 1 8 8H4")]),
      svg.path([a("d", "m8 22-4-4 4-4")]),
    ],
  )
}
