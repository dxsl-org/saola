import lustre/attribute.{type Attribute, attribute as a}
import lustre/element/svg

pub fn zap(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M4 14a1 1 0 0 1-.78-1.63l9.9-10.2a.5.5 0 0 1 .86.46l-1.92 6.02A1 1 0 0 0 13 10h7a1 1 0 0 1 .78 1.63l-9.9 10.2a.5.5 0 0 1-.86-.46l1.92-6.02A1 1 0 0 0 11 14z",
        ),
      ]),
    ],
  )
}


pub fn zap_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M10.513 4.856 13.12 2.17a.5.5 0 0 1 .86.46l-1.377 4.317"),
      ]),
      svg.path([a("d", "M15.656 10H20a1 1 0 0 1 .78 1.63l-1.72 1.773")]),
      svg.path([
        a(
          "d",
          "M16.273 16.273 10.88 21.83a.5.5 0 0 1-.86-.46l1.92-6.02A1 1 0 0 0 11 14H4a1 1 0 0 1-.78-1.63l4.507-4.643",
        ),
      ]),
      svg.path([a("d", "m2 2 20 20")]),
    ],
  )
}


pub fn zodiac_aquarius(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "m2 10 2.456-3.684a.7.7 0 0 1 1.106-.013l2.39 3.413a.7.7 0 0 0 1.096-.001l2.402-3.432a.7.7 0 0 1 1.098 0l2.402 3.432a.7.7 0 0 0 1.098 0l2.389-3.413a.7.7 0 0 1 1.106.013L22 10",
        ),
      ]),
      svg.path([
        a(
          "d",
          "m2 18.002 2.456-3.684a.7.7 0 0 1 1.106-.013l2.39 3.413a.7.7 0 0 0 1.097 0l2.402-3.432a.7.7 0 0 1 1.098 0l2.402 3.432a.7.7 0 0 0 1.098 0l2.389-3.413a.7.7 0 0 1 1.106.013L22 18.002",
        ),
      ]),
    ],
  )
}


pub fn zodiac_aries(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 7.5a4.5 4.5 0 1 1 5 4.5")]),
      svg.path([a("d", "M7 12a4.5 4.5 0 1 1 5-4.5V21")]),
    ],
  )
}


pub fn zodiac_cancer(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M21 14.5A9 6.5 0 0 1 5.5 19")]),
      svg.path([a("d", "M3 9.5A9 6.5 0 0 1 18.5 5")]),
      svg.circle([
        a("r", "3.5"),
        a("cy", "14.5"),
        a("cx", "17.5"),
      ]),
      svg.circle([
        a("r", "3.5"),
        a("cy", "9.5"),
        a("cx", "6.5"),
      ]),
    ],
  )
}


pub fn zodiac_capricorn(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M11 21a3 3 0 0 0 3-3V6.5a1 1 0 0 0-7 0")]),
      svg.path([a("d", "M7 19V6a3 3 0 0 0-3-3h0")]),
      svg.circle([
        a("r", "3"),
        a("cy", "17"),
        a("cx", "17"),
      ]),
    ],
  )
}


pub fn zodiac_gemini(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M16 4.525v14.948")]),
      svg.path([a("d", "M20 3A17 17 0 0 1 4 3")]),
      svg.path([a("d", "M4 21a17 17 0 0 1 16 0")]),
      svg.path([a("d", "M8 4.525v14.948")]),
    ],
  )
}


pub fn zodiac_leo(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M10 16c0-4-3-4.5-3-8a5 5 0 0 1 10 0c0 3.466-3 6.196-3 10a3 3 0 0 0 6 0",
        ),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "16"),
        a("cx", "7"),
      ]),
    ],
  )
}


pub fn zodiac_libra(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M3 16h6.857c.162-.012.19-.323.038-.38a6 6 0 1 1 4.212 0c-.153.057-.125.368.038.38H21",
        ),
      ]),
      svg.path([a("d", "M3 20h18")]),
    ],
  )
}


pub fn zodiac_ophiuchus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M3 10A6.06 6.06 0 0 1 12 10 A6.06 6.06 0 0 0 21 10"),
      ]),
      svg.path([a("d", "M6 3v12a6 6 0 0 0 12 0V3")]),
    ],
  )
}


pub fn zodiac_pisces(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M19 21a15 15 0 0 1 0-18")]),
      svg.path([a("d", "M20 12H4")]),
      svg.path([a("d", "M5 3a15 15 0 0 1 0 18")]),
    ],
  )
}


pub fn zodiac_sagittarius(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M15 3h6v6")]),
      svg.path([a("d", "M21 3 3 21")]),
      svg.path([a("d", "m9 9 6 6")]),
    ],
  )
}


pub fn zodiac_scorpio(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M10 19V5.5a1 1 0 0 1 5 0V17a2 2 0 0 0 2 2h5l-3-3"),
      ]),
      svg.path([a("d", "m22 19-3 3")]),
      svg.path([a("d", "M5 19V5.5a1 1 0 0 1 5 0")]),
      svg.path([a("d", "M5 5.5A2.5 2.5 0 0 0 2.5 3")]),
    ],
  )
}


pub fn zodiac_taurus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("cy", "15"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M18 3A6 6 0 0 1 6 3")]),
    ],
  )
}


pub fn zodiac_virgo(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M11 5.5a1 1 0 0 1 5 0V16a5 5 0 0 0 5 5")]),
      svg.path([a("d", "M16 11.5a1 1 0 0 1 5 0V16a5 5 0 0 1-5 5")]),
      svg.path([a("d", "M6 19V6a3 3 0 0 0-3-3h0")]),
      svg.path([a("d", "M6 5.5a1 1 0 0 1 5 0V19")]),
    ],
  )
}


pub fn zoom_in(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("cy", "11"),
        a("cx", "11"),
      ]),
      svg.line([
        a("y2", "16.65"),
        a("y1", "21"),
        a("x2", "16.65"),
        a("x1", "21"),
      ]),
      svg.line([
        a("y2", "14"),
        a("y1", "8"),
        a("x2", "11"),
        a("x1", "11"),
      ]),
      svg.line([
        a("y2", "11"),
        a("y1", "11"),
        a("x2", "14"),
        a("x1", "8"),
      ]),
    ],
  )
}


pub fn zoom_out(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("cy", "11"),
        a("cx", "11"),
      ]),
      svg.line([
        a("y2", "16.65"),
        a("y1", "21"),
        a("x2", "16.65"),
        a("x1", "21"),
      ]),
      svg.line([
        a("y2", "11"),
        a("y1", "11"),
        a("x2", "14"),
        a("x1", "8"),
      ]),
    ],
  )
}
