import lustre/attribute.{type Attribute, attribute as a}
import lustre/element/svg

pub fn dam(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M11 11.31c1.17.56 1.54 1.69 3.5 1.69 2.5 0 2.5-2 5-2 1.3 0 1.9.5 2.5 1",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M11.75 18c.35.5 1.45 1 2.75 1 2.5 0 2.5-2 5-2 1.3 0 1.9.5 2.5 1",
        ),
      ]),
      svg.path([a("d", "M2 10h4")]),
      svg.path([a("d", "M2 14h4")]),
      svg.path([a("d", "M2 18h4")]),
      svg.path([a("d", "M2 6h4")]),
      svg.path([
        a(
          "d",
          "M7 3a1 1 0 0 0-1 1v16a1 1 0 0 0 1 1h4a1 1 0 0 0 1-1L10 4a1 1 0 0 0-1-1z",
        ),
      ]),
    ],
  )
}


pub fn database(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M3 5V19A9 3 0 0 0 21 19V5")]),
      svg.path([a("d", "M3 12A9 3 0 0 0 21 12")]),
    ],
  )
}


pub fn database_backup(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M3 12a9 3 0 0 0 5 2.69")]),
      svg.path([a("d", "M21 9.3V5")]),
      svg.path([a("d", "M3 5v14a9 3 0 0 0 6.47 2.88")]),
      svg.path([a("d", "M12 12v4h4")]),
      svg.path([
        a(
          "d",
          "M13 20a5 5 0 0 0 9-3 4.5 4.5 0 0 0-4.5-4.5c-1.33 0-2.54.54-3.41 1.41L12 16",
        ),
      ]),
    ],
  )
}


pub fn database_search(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M21 11.693V5")]),
      svg.path([a("d", "m22 22-1.875-1.875")]),
      svg.path([a("d", "M3 12a9 3 0 0 0 8.697 2.998")]),
      svg.path([a("d", "M3 5v14a9 3 0 0 0 9.28 2.999")]),
      svg.circle([
        a("r", "3"),
        a("cy", "18"),
        a("cx", "18"),
      ]),
      svg.ellipse([
        a("ry", "3"),
        a("rx", "9"),
        a("cy", "5"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn database_zap(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M3 5V19A9 3 0 0 0 15 21.84")]),
      svg.path([a("d", "M21 5V8")]),
      svg.path([a("d", "M21 12L18 17H22L19 22")]),
      svg.path([a("d", "M3 12A9 3 0 0 0 14.59 14.87")]),
    ],
  )
}


pub fn decimals_arrow_left(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m13 21-3-3 3-3")]),
      svg.path([a("d", "M20 18H10")]),
      svg.path([a("d", "M3 11h.01")]),
      svg.rect([
        a("rx", "2.5"),
        a("height", "8"),
        a("width", "5"),
        a("y", "3"),
        a("x", "6"),
      ]),
    ],
  )
}


pub fn decimals_arrow_right(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 18h10")]),
      svg.path([a("d", "m17 21 3-3-3-3")]),
      svg.path([a("d", "M3 11h.01")]),
      svg.rect([
        a("rx", "2.5"),
        a("height", "8"),
        a("width", "5"),
        a("y", "3"),
        a("x", "15"),
      ]),
      svg.rect([
        a("rx", "2.5"),
        a("height", "8"),
        a("width", "5"),
        a("y", "3"),
        a("x", "6"),
      ]),
    ],
  )
}


pub fn delete(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M10 5a2 2 0 0 0-1.344.519l-6.328 5.74a1 1 0 0 0 0 1.481l6.328 5.741A2 2 0 0 0 10 19h10a2 2 0 0 0 2-2V7a2 2 0 0 0-2-2z",
        ),
      ]),
      svg.path([a("d", "m12 9 6 6")]),
      svg.path([a("d", "m18 9-6 6")]),
    ],
  )
}


pub fn dessert(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M10.162 3.167A10 10 0 0 0 2 13a2 2 0 0 0 4 0v-1a2 2 0 0 1 4 0v4a2 2 0 0 0 4 0v-4a2 2 0 0 1 4 0v1a2 2 0 0 0 4-.006 10 10 0 0 0-8.161-9.826",
        ),
      ]),
      svg.path([a("d", "M20.804 14.869a9 9 0 0 1-17.608 0")]),
      svg.circle([
        a("r", "2"),
        a("cy", "4"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn diameter(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("cx", "19"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "5"),
        a("cx", "5"),
      ]),
      svg.path([a("d", "M6.48 3.66a10 10 0 0 1 13.86 13.86")]),
      svg.path([a("d", "m6.41 6.41 11.18 11.18")]),
      svg.path([a("d", "M3.66 6.48a10 10 0 0 0 13.86 13.86")]),
    ],
  )
}


pub fn diamond(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M2.7 10.3a2.41 2.41 0 0 0 0 3.41l7.59 7.59a2.41 2.41 0 0 0 3.41 0l7.59-7.59a2.41 2.41 0 0 0 0-3.41l-7.59-7.59a2.41 2.41 0 0 0-3.41 0Z",
        ),
      ]),
    ],
  )
}


pub fn diamond_minus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M2.7 10.3a2.41 2.41 0 0 0 0 3.41l7.59 7.59a2.41 2.41 0 0 0 3.41 0l7.59-7.59a2.41 2.41 0 0 0 0-3.41L13.7 2.71a2.41 2.41 0 0 0-3.41 0z",
        ),
      ]),
      svg.path([a("d", "M8 12h8")]),
    ],
  )
}


pub fn diamond_percent(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M2.7 10.3a2.41 2.41 0 0 0 0 3.41l7.59 7.59a2.41 2.41 0 0 0 3.41 0l7.59-7.59a2.41 2.41 0 0 0 0-3.41L13.7 2.71a2.41 2.41 0 0 0-3.41 0Z",
        ),
      ]),
      svg.path([a("d", "M9.2 9.2h.01")]),
      svg.path([a("d", "m14.5 9.5-5 5")]),
      svg.path([a("d", "M14.7 14.8h.01")]),
    ],
  )
}


pub fn diamond_plus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 8v8")]),
      svg.path([
        a(
          "d",
          "M2.7 10.3a2.41 2.41 0 0 0 0 3.41l7.59 7.59a2.41 2.41 0 0 0 3.41 0l7.59-7.59a2.41 2.41 0 0 0 0-3.41L13.7 2.71a2.41 2.41 0 0 0-3.41 0z",
        ),
      ]),
      svg.path([a("d", "M8 12h8")]),
    ],
  )
}


pub fn dice_1(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M12 12h.01")]),
    ],
  )
}


pub fn dice_2(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M15 9h.01")]),
      svg.path([a("d", "M9 15h.01")]),
    ],
  )
}


pub fn dice_3(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M16 8h.01")]),
      svg.path([a("d", "M12 12h.01")]),
      svg.path([a("d", "M8 16h.01")]),
    ],
  )
}


pub fn dice_4(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M16 8h.01")]),
      svg.path([a("d", "M8 8h.01")]),
      svg.path([a("d", "M8 16h.01")]),
      svg.path([a("d", "M16 16h.01")]),
    ],
  )
}


pub fn dice_5(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M16 8h.01")]),
      svg.path([a("d", "M8 8h.01")]),
      svg.path([a("d", "M8 16h.01")]),
      svg.path([a("d", "M16 16h.01")]),
      svg.path([a("d", "M12 12h.01")]),
    ],
  )
}


pub fn dice_6(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M16 8h.01")]),
      svg.path([a("d", "M16 12h.01")]),
      svg.path([a("d", "M16 16h.01")]),
      svg.path([a("d", "M8 8h.01")]),
      svg.path([a("d", "M8 12h.01")]),
      svg.path([a("d", "M8 16h.01")]),
    ],
  )
}


pub fn dices(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("y", "10"),
        a("x", "2"),
        a("height", "12"),
        a("width", "12"),
      ]),
      svg.path([
        a(
          "d",
          "m17.92 14 3.5-3.5a2.24 2.24 0 0 0 0-3l-5-4.92a2.24 2.24 0 0 0-3 0L10 6",
        ),
      ]),
      svg.path([a("d", "M6 18h.01")]),
      svg.path([a("d", "M10 14h.01")]),
      svg.path([a("d", "M15 6h.01")]),
      svg.path([a("d", "M18 9h.01")]),
    ],
  )
}


pub fn diff(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 3v14")]),
      svg.path([a("d", "M5 10h14")]),
      svg.path([a("d", "M5 21h14")]),
    ],
  )
}


pub fn disc(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("r", "2"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn disc_2(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("r", "4"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M12 12h.01")]),
    ],
  )
}


pub fn disc_3(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M6 12c0-1.7.7-3.2 1.8-4.2")]),
      svg.circle([
        a("r", "2"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M18 12c0 1.7-.7 3.2-1.8 4.2")]),
    ],
  )
}


pub fn disc_album(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.circle([
        a("r", "5"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M12 12h.01")]),
    ],
  )
}


pub fn divide(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("cy", "6"),
        a("cx", "12"),
      ]),
      svg.line([
        a("y2", "12"),
        a("y1", "12"),
        a("x2", "19"),
        a("x1", "5"),
      ]),
      svg.circle([
        a("r", "1"),
        a("cy", "18"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn dna(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m10 16 1.5 1.5")]),
      svg.path([a("d", "m14 8-1.5-1.5")]),
      svg.path([a("d", "M15 2c-1.798 1.998-2.518 3.995-2.807 5.993")]),
      svg.path([a("d", "m16.5 10.5 1 1")]),
      svg.path([a("d", "m17 6-2.891-2.891")]),
      svg.path([a("d", "M2 15c6.667-6 13.333 0 20-6")]),
      svg.path([a("d", "m20 9 .891.891")]),
      svg.path([a("d", "M3.109 14.109 4 15")]),
      svg.path([a("d", "m6.5 12.5 1 1")]),
      svg.path([a("d", "m7 18 2.891 2.891")]),
      svg.path([a("d", "M9 22c1.798-1.998 2.518-3.995 2.807-5.993")]),
    ],
  )
}


pub fn dna_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M15 2c-1.35 1.5-2.092 3-2.5 4.5L14 8")]),
      svg.path([a("d", "m17 6-2.891-2.891")]),
      svg.path([a("d", "M2 15c3.333-3 6.667-3 10-3")]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([a("d", "m20 9 .891.891")]),
      svg.path([a("d", "M22 9c-1.5 1.35-3 2.092-4.5 2.5l-1-1")]),
      svg.path([a("d", "M3.109 14.109 4 15")]),
      svg.path([a("d", "m6.5 12.5 1 1")]),
      svg.path([a("d", "m7 18 2.891 2.891")]),
      svg.path([a("d", "M9 22c1.35-1.5 2.092-3 2.5-4.5L10 16")]),
    ],
  )
}


pub fn dock(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M2 8h20")]),
      svg.rect([
        a("rx", "2"),
        a("y", "4"),
        a("x", "2"),
        a("height", "16"),
        a("width", "20"),
      ]),
      svg.path([a("d", "M6 16h12")]),
    ],
  )
}


pub fn dog(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M11.25 16.25h1.5L12 17z")]),
      svg.path([a("d", "M16 14v.5")]),
      svg.path([
        a(
          "d",
          "M4.42 11.247A13.152 13.152 0 0 0 4 14.556C4 18.728 7.582 21 12 21s8-2.272 8-6.444a11.702 11.702 0 0 0-.493-3.309",
        ),
      ]),
      svg.path([a("d", "M8 14v.5")]),
      svg.path([
        a(
          "d",
          "M8.5 8.5c-.384 1.05-1.083 2.028-2.344 2.5-1.931.722-3.576-.297-3.656-1-.113-.994 1.177-6.53 4-7 1.923-.321 3.651.845 3.651 2.235A7.497 7.497 0 0 1 14 5.277c0-1.39 1.844-2.598 3.767-2.277 2.823.47 4.113 6.006 4 7-.08.703-1.725 1.722-3.656 1-1.261-.472-1.855-1.45-2.239-2.5",
        ),
      ]),
    ],
  )
}


pub fn dollar_sign(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("x2", "12"),
        a("x1", "12"),
      ]),
      svg.path([
        a("d", "M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"),
      ]),
    ],
  )
}


pub fn donut(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M20.5 10a2.5 2.5 0 0 1-2.4-3H18a2.95 2.95 0 0 1-2.6-4.4 10 10 0 1 0 6.3 7.1c-.3.2-.8.3-1.2.3",
        ),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn door_closed(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 12h.01")]),
      svg.path([a("d", "M18 20V6a2 2 0 0 0-2-2H8a2 2 0 0 0-2 2v14")]),
      svg.path([a("d", "M2 20h20")]),
    ],
  )
}


pub fn door_closed_locked(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 12h.01")]),
      svg.path([a("d", "M18 9V6a2 2 0 0 0-2-2H8a2 2 0 0 0-2 2v14")]),
      svg.path([a("d", "M2 20h8")]),
      svg.path([a("d", "M20 17v-2a2 2 0 1 0-4 0v2")]),
      svg.rect([
        a("rx", "1"),
        a("height", "5"),
        a("width", "8"),
        a("y", "17"),
        a("x", "14"),
      ]),
    ],
  )
}


pub fn door_open(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M11 20H2")]),
      svg.path([
        a(
          "d",
          "M11 4.562v16.157a1 1 0 0 0 1.242.97L19 20V5.562a2 2 0 0 0-1.515-1.94l-4-1A2 2 0 0 0 11 4.561z",
        ),
      ]),
      svg.path([a("d", "M11 4H8a2 2 0 0 0-2 2v14")]),
      svg.path([a("d", "M14 12h.01")]),
      svg.path([a("d", "M22 20h-3")]),
    ],
  )
}


pub fn dot(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("cy", "12.1"),
        a("cx", "12.1"),
      ]),
    ],
  )
}


pub fn download(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 15V3")]),
      svg.path([a("d", "M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4")]),
      svg.path([a("d", "m7 10 5 5 5-5")]),
    ],
  )
}


pub fn drafting_compass(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m12.99 6.74 1.93 3.44")]),
      svg.path([a("d", "M19.136 12a10 10 0 0 1-14.271 0")]),
      svg.path([a("d", "m21 21-2.16-3.84")]),
      svg.path([a("d", "m3 21 8.02-14.26")]),
      svg.circle([
        a("r", "2"),
        a("cy", "5"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn drama(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 11h.01")]),
      svg.path([a("d", "M14 6h.01")]),
      svg.path([a("d", "M18 6h.01")]),
      svg.path([a("d", "M6.5 13.1h.01")]),
      svg.path([
        a("d", "M22 5c0 9-4 12-6 12s-6-3-6-12c0-2 2-3 6-3s6 1 6 3"),
      ]),
      svg.path([a("d", "M17.4 9.9c-.8.8-2 .8-2.8 0")]),
      svg.path([
        a(
          "d",
          "M10.1 7.1C9 7.2 7.7 7.7 6 8.6c-3.5 2-4.7 3.9-3.7 5.6 4.5 7.8 9.5 8.4 11.2 7.4.9-.5 1.9-2.1 1.9-4.7",
        ),
      ]),
      svg.path([a("d", "M9.1 16.5c.3-1.1 1.4-1.7 2.4-1.4")]),
    ],
  )
}


pub fn drill(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M10 18a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1H5a3 3 0 0 1-3-3 1 1 0 0 1 1-1z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M13 10H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h9a1 1 0 0 1 1 1v6a1 1 0 0 1-1 1l-.81 3.242a1 1 0 0 1-.97.758H8",
        ),
      ]),
      svg.path([a("d", "M14 4h3a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1h-3")]),
      svg.path([a("d", "M18 6h4")]),
      svg.path([a("d", "m5 10-2 8")]),
      svg.path([a("d", "m7 18 2-8")]),
    ],
  )
}


pub fn drone(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 10 7 7")]),
      svg.path([a("d", "m10 14-3 3")]),
      svg.path([a("d", "m14 10 3-3")]),
      svg.path([a("d", "m14 14 3 3")]),
      svg.path([a("d", "M14.205 4.139a4 4 0 1 1 5.439 5.863")]),
      svg.path([a("d", "M19.637 14a4 4 0 1 1-5.432 5.868")]),
      svg.path([a("d", "M4.367 10a4 4 0 1 1 5.438-5.862")]),
      svg.path([a("d", "M9.795 19.862a4 4 0 1 1-5.429-5.873")]),
      svg.rect([
        a("rx", "1"),
        a("height", "8"),
        a("width", "4"),
        a("y", "8"),
        a("x", "10"),
      ]),
    ],
  )
}


pub fn droplet(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M12 22a7 7 0 0 0 7-7c0-2-1-3.9-3-5.5s-3.5-4-4-6.5c-.5 2.5-2 4.9-4 6.5C6 11.1 5 13 5 15a7 7 0 0 0 7 7z",
        ),
      ]),
    ],
  )
}


pub fn droplet_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M18.715 13.186C18.29 11.858 17.384 10.607 16 9.5c-2-1.6-3.5-4-4-6.5a10.7 10.7 0 0 1-.884 2.586",
        ),
      ]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([
        a(
          "d",
          "M8.795 8.797A11 11 0 0 1 8 9.5C6 11.1 5 13 5 15a7 7 0 0 0 13.222 3.208",
        ),
      ]),
    ],
  )
}


pub fn droplets(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M7 16.3c2.2 0 4-1.83 4-4.05 0-1.16-.57-2.26-1.71-3.19S7.29 6.75 7 5.3c-.29 1.45-1.14 2.84-2.29 3.76S3 11.1 3 12.25c0 2.22 1.8 4.05 4 4.05z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M12.56 6.6A10.97 10.97 0 0 0 14 3.02c.5 2.5 2 4.9 4 6.5s3 3.5 3 5.5a6.98 6.98 0 0 1-11.91 4.97",
        ),
      ]),
    ],
  )
}


pub fn drum(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m2 2 8 8")]),
      svg.path([a("d", "m22 2-8 8")]),
      svg.ellipse([
        a("ry", "5"),
        a("rx", "10"),
        a("cy", "9"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M7 13.4v7.9")]),
      svg.path([a("d", "M12 14v8")]),
      svg.path([a("d", "M17 13.4v7.9")]),
      svg.path([a("d", "M2 9v8a10 5 0 0 0 20 0V9")]),
    ],
  )
}


pub fn drumstick(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M15.4 15.63a7.875 6 135 1 1 6.23-6.23 4.5 3.43 135 0 0-6.23 6.23",
        ),
      ]),
      svg.path([
        a(
          "d",
          "m8.29 12.71-2.6 2.6a2.5 2.5 0 1 0-1.65 4.65A2.5 2.5 0 1 0 8.7 18.3l2.59-2.59",
        ),
      ]),
    ],
  )
}


pub fn dumbbell(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M17.596 12.768a2 2 0 1 0 2.829-2.829l-1.768-1.767a2 2 0 0 0 2.828-2.829l-2.828-2.828a2 2 0 0 0-2.829 2.828l-1.767-1.768a2 2 0 1 0-2.829 2.829z",
        ),
      ]),
      svg.path([a("d", "m2.5 21.5 1.4-1.4")]),
      svg.path([a("d", "m20.1 3.9 1.4-1.4")]),
      svg.path([
        a(
          "d",
          "M5.343 21.485a2 2 0 1 0 2.829-2.828l1.767 1.768a2 2 0 1 0 2.829-2.829l-6.364-6.364a2 2 0 1 0-2.829 2.829l1.768 1.767a2 2 0 0 0-2.828 2.829z",
        ),
      ]),
      svg.path([a("d", "m9.6 14.4 4.8-4.8")]),
    ],
  )
}
