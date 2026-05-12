import lustre/attribute.{type Attribute, attribute as a}
import lustre/element/svg

pub fn sailboat(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 2v15")]),
      svg.path([
        a(
          "d",
          "M7 22a4 4 0 0 1-4-4 1 1 0 0 1 1-1h16a1 1 0 0 1 1 1 4 4 0 0 1-4 4z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M9.159 2.46a1 1 0 0 1 1.521-.193l9.977 8.98A1 1 0 0 1 20 13H4a1 1 0 0 1-.824-1.567z",
        ),
      ]),
    ],
  )
}


pub fn salad(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M12 21a9 9 0 0 0 9-9H3a9 9 0 0 0 9 9Z")]),
      svg.path([
        a(
          "d",
          "M11.38 12a2.4 2.4 0 0 1-.4-4.77 2.4 2.4 0 0 1 3.2-2.77 2.4 2.4 0 0 1 3.47-.63 2.4 2.4 0 0 1 3.37 3.37 2.4 2.4 0 0 1-1.1 3.7 2.51 2.51 0 0 1 .03 1.1",
        ),
      ]),
      svg.path([a("d", "m13 12 4-4")]),
      svg.path([
        a("d", "M10.9 7.25A3.99 3.99 0 0 0 4 10c0 .73.2 1.41.54 2"),
      ]),
    ],
  )
}


pub fn sandwich(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "m2.37 11.223 8.372-6.777a2 2 0 0 1 2.516 0l8.371 6.777"),
      ]),
      svg.path([a("d", "M21 15a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1h-5.25")]),
      svg.path([a("d", "M3 15a1 1 0 0 0-1 1v2a1 1 0 0 0 1 1h9")]),
      svg.path([a("d", "m6.67 15 6.13 4.6a2 2 0 0 0 2.8-.4l3.15-4.2")]),
      svg.rect([
        a("rx", "1"),
        a("y", "11"),
        a("x", "2"),
        a("height", "4"),
        a("width", "20"),
      ]),
    ],
  )
}


pub fn satellite(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "m13.5 6.5-3.148-3.148a1.205 1.205 0 0 0-1.704 0L6.352 5.648a1.205 1.205 0 0 0 0 1.704L9.5 10.5",
        ),
      ]),
      svg.path([a("d", "M16.5 7.5 19 5")]),
      svg.path([
        a(
          "d",
          "m17.5 10.5 3.148 3.148a1.205 1.205 0 0 1 0 1.704l-2.296 2.296a1.205 1.205 0 0 1-1.704 0L13.5 14.5",
        ),
      ]),
      svg.path([a("d", "M9 21a6 6 0 0 0-6-6")]),
      svg.path([
        a(
          "d",
          "M9.352 10.648a1.205 1.205 0 0 0 0 1.704l2.296 2.296a1.205 1.205 0 0 0 1.704 0l4.296-4.296a1.205 1.205 0 0 0 0-1.704l-2.296-2.296a1.205 1.205 0 0 0-1.704 0z",
        ),
      ]),
    ],
  )
}


pub fn satellite_dish(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M4 10a7.31 7.31 0 0 0 10 10Z")]),
      svg.path([a("d", "m9 15 3-3")]),
      svg.path([a("d", "M17 13a6 6 0 0 0-6-6")]),
      svg.path([a("d", "M21 13A10 10 0 0 0 11 3")]),
    ],
  )
}


pub fn saudi_riyal(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m20 19.5-5.5 1.2")]),
      svg.path([a("d", "M14.5 4v11.22a1 1 0 0 0 1.242.97L20 15.2")]),
      svg.path([a("d", "m2.978 19.351 5.549-1.363A2 2 0 0 0 10 16V2")]),
      svg.path([a("d", "M20 10 4 13.5")]),
    ],
  )
}


pub fn save(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M15.2 3a2 2 0 0 1 1.4.6l3.8 3.8a2 2 0 0 1 .6 1.4V19a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2z",
        ),
      ]),
      svg.path([a("d", "M17 21v-7a1 1 0 0 0-1-1H8a1 1 0 0 0-1 1v7")]),
      svg.path([a("d", "M7 3v4a1 1 0 0 0 1 1h7")]),
    ],
  )
}


pub fn save_all(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 2v3a1 1 0 0 0 1 1h5")]),
      svg.path([a("d", "M18 18v-6a1 1 0 0 0-1-1h-6a1 1 0 0 0-1 1v6")]),
      svg.path([a("d", "M18 22H4a2 2 0 0 1-2-2V6")]),
      svg.path([
        a(
          "d",
          "M8 18a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h9.172a2 2 0 0 1 1.414.586l2.828 2.828A2 2 0 0 1 22 6.828V16a2 2 0 0 1-2.01 2z",
        ),
      ]),
    ],
  )
}


pub fn save_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M13 13H8a1 1 0 0 0-1 1v7")]),
      svg.path([a("d", "M14 8h1")]),
      svg.path([a("d", "M17 21v-4")]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([
        a(
          "d",
          "M20.41 20.41A2 2 0 0 1 19 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 .59-1.41",
        ),
      ]),
      svg.path([a("d", "M29.5 11.5s5 5 4 5")]),
      svg.path([
        a("d", "M9 3h6.2a2 2 0 0 1 1.4.6l3.8 3.8a2 2 0 0 1 .6 1.4V15"),
      ]),
    ],
  )
}


pub fn scale(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "m19 8 3 8a5 5 0 0 1-6 0zV7")]),
      svg.path([a("d", "M3 7h1a17 17 0 0 0 8-2 17 17 0 0 0 8 2h1")]),
      svg.path([a("d", "m5 8 3 8a5 5 0 0 1-6 0zV7")]),
      svg.path([a("d", "M7 21h10")]),
    ],
  )
}


pub fn scale_3d(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M5 7v11a1 1 0 0 0 1 1h11")]),
      svg.path([a("d", "M5.293 18.707 11 13")]),
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
    ],
  )
}


pub fn scaling(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M12 3H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"),
      ]),
      svg.path([a("d", "M14 15H9v-5")]),
      svg.path([a("d", "M16 3h5v5")]),
      svg.path([a("d", "M21 3 9 15")]),
    ],
  )
}


pub fn scan(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M3 7V5a2 2 0 0 1 2-2h2")]),
      svg.path([a("d", "M17 3h2a2 2 0 0 1 2 2v2")]),
      svg.path([a("d", "M21 17v2a2 2 0 0 1-2 2h-2")]),
      svg.path([a("d", "M7 21H5a2 2 0 0 1-2-2v-2")]),
    ],
  )
}


pub fn scan_barcode(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M3 7V5a2 2 0 0 1 2-2h2")]),
      svg.path([a("d", "M17 3h2a2 2 0 0 1 2 2v2")]),
      svg.path([a("d", "M21 17v2a2 2 0 0 1-2 2h-2")]),
      svg.path([a("d", "M7 21H5a2 2 0 0 1-2-2v-2")]),
      svg.path([a("d", "M8 7v10")]),
      svg.path([a("d", "M12 7v10")]),
      svg.path([a("d", "M17 7v10")]),
    ],
  )
}


pub fn scan_eye(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M3 7V5a2 2 0 0 1 2-2h2")]),
      svg.path([a("d", "M17 3h2a2 2 0 0 1 2 2v2")]),
      svg.path([a("d", "M21 17v2a2 2 0 0 1-2 2h-2")]),
      svg.path([a("d", "M7 21H5a2 2 0 0 1-2-2v-2")]),
      svg.circle([
        a("r", "1"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
      svg.path([
        a(
          "d",
          "M18.944 12.33a1 1 0 0 0 0-.66 7.5 7.5 0 0 0-13.888 0 1 1 0 0 0 0 .66 7.5 7.5 0 0 0 13.888 0",
        ),
      ]),
    ],
  )
}


pub fn scan_face(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M3 7V5a2 2 0 0 1 2-2h2")]),
      svg.path([a("d", "M17 3h2a2 2 0 0 1 2 2v2")]),
      svg.path([a("d", "M21 17v2a2 2 0 0 1-2 2h-2")]),
      svg.path([a("d", "M7 21H5a2 2 0 0 1-2-2v-2")]),
      svg.path([a("d", "M8 14s1.5 2 4 2 4-2 4-2")]),
      svg.path([a("d", "M9 9h.01")]),
      svg.path([a("d", "M15 9h.01")]),
    ],
  )
}


pub fn scan_heart(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M17 3h2a2 2 0 0 1 2 2v2")]),
      svg.path([a("d", "M21 17v2a2 2 0 0 1-2 2h-2")]),
      svg.path([a("d", "M3 7V5a2 2 0 0 1 2-2h2")]),
      svg.path([a("d", "M7 21H5a2 2 0 0 1-2-2v-2")]),
      svg.path([
        a(
          "d",
          "M7.828 13.07A3 3 0 0 1 12 8.764a3 3 0 0 1 4.172 4.306l-3.447 3.62a1 1 0 0 1-1.449 0z",
        ),
      ]),
    ],
  )
}


pub fn scan_line(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M3 7V5a2 2 0 0 1 2-2h2")]),
      svg.path([a("d", "M17 3h2a2 2 0 0 1 2 2v2")]),
      svg.path([a("d", "M21 17v2a2 2 0 0 1-2 2h-2")]),
      svg.path([a("d", "M7 21H5a2 2 0 0 1-2-2v-2")]),
      svg.path([a("d", "M7 12h10")]),
    ],
  )
}


pub fn scan_qr_code(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M17 12v4a1 1 0 0 1-1 1h-4")]),
      svg.path([a("d", "M17 3h2a2 2 0 0 1 2 2v2")]),
      svg.path([a("d", "M17 8V7")]),
      svg.path([a("d", "M21 17v2a2 2 0 0 1-2 2h-2")]),
      svg.path([a("d", "M3 7V5a2 2 0 0 1 2-2h2")]),
      svg.path([a("d", "M7 17h.01")]),
      svg.path([a("d", "M7 21H5a2 2 0 0 1-2-2v-2")]),
      svg.rect([
        a("rx", "1"),
        a("height", "5"),
        a("width", "5"),
        a("y", "7"),
        a("x", "7"),
      ]),
    ],
  )
}


pub fn scan_search(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M3 7V5a2 2 0 0 1 2-2h2")]),
      svg.path([a("d", "M17 3h2a2 2 0 0 1 2 2v2")]),
      svg.path([a("d", "M21 17v2a2 2 0 0 1-2 2h-2")]),
      svg.path([a("d", "M7 21H5a2 2 0 0 1-2-2v-2")]),
      svg.circle([
        a("r", "3"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "m16 16-1.9-1.9")]),
    ],
  )
}


pub fn scan_text(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M3 7V5a2 2 0 0 1 2-2h2")]),
      svg.path([a("d", "M17 3h2a2 2 0 0 1 2 2v2")]),
      svg.path([a("d", "M21 17v2a2 2 0 0 1-2 2h-2")]),
      svg.path([a("d", "M7 21H5a2 2 0 0 1-2-2v-2")]),
      svg.path([a("d", "M7 8h8")]),
      svg.path([a("d", "M7 12h10")]),
      svg.path([a("d", "M7 16h6")]),
    ],
  )
}


pub fn school(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M14 21v-3a2 2 0 0 0-4 0v3")]),
      svg.path([a("d", "M18 4.933V21")]),
      svg.path([a("d", "m4 6 7.106-3.79a2 2 0 0 1 1.788 0L20 6")]),
      svg.path([
        a(
          "d",
          "m6 11-3.52 2.147a1 1 0 0 0-.48.854V19a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-5a1 1 0 0 0-.48-.853L18 11",
        ),
      ]),
      svg.path([a("d", "M6 4.933V21")]),
      svg.circle([
        a("r", "2"),
        a("cy", "9"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn scissors(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("cy", "6"),
        a("cx", "6"),
      ]),
      svg.path([a("d", "M8.12 8.12 12 12")]),
      svg.path([a("d", "M20 4 8.12 15.88")]),
      svg.circle([
        a("r", "3"),
        a("cy", "18"),
        a("cx", "6"),
      ]),
      svg.path([a("d", "M14.8 14.8 20 20")]),
    ],
  )
}


pub fn scissors_line_dashed(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M5.42 9.42 8 12")]),
      svg.circle([
        a("r", "2"),
        a("cy", "8"),
        a("cx", "4"),
      ]),
      svg.path([a("d", "m14 6-8.58 8.58")]),
      svg.circle([
        a("r", "2"),
        a("cy", "16"),
        a("cx", "4"),
      ]),
      svg.path([a("d", "M10.8 14.8 14 18")]),
      svg.path([a("d", "M16 12h-2")]),
      svg.path([a("d", "M22 12h-2")]),
    ],
  )
}


pub fn scooter(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M21 4h-3.5l2 11.05")]),
      svg.path([
        a(
          "d",
          "M6.95 17h5.142c.523 0 .95-.406 1.063-.916a6.5 6.5 0 0 1 5.345-5.009",
        ),
      ]),
      svg.circle([
        a("r", "2.5"),
        a("cy", "17.5"),
        a("cx", "19.5"),
      ]),
      svg.circle([
        a("r", "2.5"),
        a("cy", "17.5"),
        a("cx", "4.5"),
      ]),
    ],
  )
}


pub fn screen_share(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M13 3H4a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-3"),
      ]),
      svg.path([a("d", "M8 21h8")]),
      svg.path([a("d", "M12 17v4")]),
      svg.path([a("d", "m17 8 5-5")]),
      svg.path([a("d", "M17 3h5v5")]),
    ],
  )
}


pub fn screen_share_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M13 3H4a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-3"),
      ]),
      svg.path([a("d", "M8 21h8")]),
      svg.path([a("d", "M12 17v4")]),
      svg.path([a("d", "m22 3-5 5")]),
      svg.path([a("d", "m17 3 5 5")]),
    ],
  )
}


pub fn scroll(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M19 17V5a2 2 0 0 0-2-2H4")]),
      svg.path([
        a(
          "d",
          "M8 21h12a2 2 0 0 0 2-2v-1a1 1 0 0 0-1-1H11a1 1 0 0 0-1 1v1a2 2 0 1 1-4 0V5a2 2 0 1 0-4 0v2a1 1 0 0 0 1 1h3",
        ),
      ]),
    ],
  )
}


pub fn scroll_text(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M15 12h-5")]),
      svg.path([a("d", "M15 8h-5")]),
      svg.path([a("d", "M19 17V5a2 2 0 0 0-2-2H4")]),
      svg.path([
        a(
          "d",
          "M8 21h12a2 2 0 0 0 2-2v-1a1 1 0 0 0-1-1H11a1 1 0 0 0-1 1v1a2 2 0 1 1-4 0V5a2 2 0 1 0-4 0v2a1 1 0 0 0 1 1h3",
        ),
      ]),
    ],
  )
}


pub fn search(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m21 21-4.34-4.34")]),
      svg.circle([
        a("r", "8"),
        a("cy", "11"),
        a("cx", "11"),
      ]),
    ],
  )
}


pub fn search_alert(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "m21 21-4.3-4.3")]),
      svg.path([a("d", "M11 7v4")]),
      svg.path([a("d", "M11 15h.01")]),
    ],
  )
}


pub fn search_check(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m8 11 2 2 4-4")]),
      svg.circle([
        a("r", "8"),
        a("cy", "11"),
        a("cx", "11"),
      ]),
      svg.path([a("d", "m21 21-4.3-4.3")]),
    ],
  )
}


pub fn search_code(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m13 13.5 2-2.5-2-2.5")]),
      svg.path([a("d", "m21 21-4.3-4.3")]),
      svg.path([a("d", "M9 8.5 7 11l2 2.5")]),
      svg.circle([
        a("r", "8"),
        a("cy", "11"),
        a("cx", "11"),
      ]),
    ],
  )
}


pub fn search_slash(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m13.5 8.5-5 5")]),
      svg.circle([
        a("r", "8"),
        a("cy", "11"),
        a("cx", "11"),
      ]),
      svg.path([a("d", "m21 21-4.3-4.3")]),
    ],
  )
}


pub fn search_x(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m13.5 8.5-5 5")]),
      svg.path([a("d", "m8.5 8.5 5 5")]),
      svg.circle([
        a("r", "8"),
        a("cy", "11"),
        a("cx", "11"),
      ]),
      svg.path([a("d", "m21 21-4.3-4.3")]),
    ],
  )
}


pub fn section(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M16 5a4 3 0 0 0-8 0c0 4 8 3 8 7a4 3 0 0 1-8 0")]),
      svg.path([a("d", "M8 19a4 3 0 0 0 8 0c0-4-8-3-8-7a4 3 0 0 1 8 0")]),
    ],
  )
}


pub fn send(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M14.536 21.686a.5.5 0 0 0 .937-.024l6.5-19a.496.496 0 0 0-.635-.635l-19 6.5a.5.5 0 0 0-.024.937l7.93 3.18a2 2 0 0 1 1.112 1.11z",
        ),
      ]),
      svg.path([a("d", "m21.854 2.147-10.94 10.939")]),
    ],
  )
}


pub fn send_horizontal(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M3.714 3.048a.498.498 0 0 0-.683.627l2.843 7.627a2 2 0 0 1 0 1.396l-2.842 7.627a.498.498 0 0 0 .682.627l18-8.5a.5.5 0 0 0 0-.904z",
        ),
      ]),
      svg.path([a("d", "M6 12h16")]),
    ],
  )
}


pub fn send_to_back(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("height", "8"),
        a("width", "8"),
        a("y", "14"),
        a("x", "14"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("height", "8"),
        a("width", "8"),
        a("y", "2"),
        a("x", "2"),
      ]),
      svg.path([a("d", "M7 14v1a2 2 0 0 0 2 2h1")]),
      svg.path([a("d", "M14 7h1a2 2 0 0 1 2 2v1")]),
    ],
  )
}


pub fn separator_horizontal(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m16 16-4 4-4-4")]),
      svg.path([a("d", "M3 12h18")]),
      svg.path([a("d", "m8 8 4-4 4 4")]),
    ],
  )
}


pub fn separator_vertical(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "m16 16 4-4-4-4")]),
      svg.path([a("d", "m8 8-4 4 4 4")]),
    ],
  )
}


pub fn server(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("x", "2"),
        a("height", "8"),
        a("width", "20"),
      ]),
      svg.rect([
        a("ry", "2"),
        a("rx", "2"),
        a("y", "14"),
        a("x", "2"),
        a("height", "8"),
        a("width", "20"),
      ]),
      svg.line([
        a("y2", "6"),
        a("y1", "6"),
        a("x2", "6.01"),
        a("x1", "6"),
      ]),
      svg.line([
        a("y2", "18"),
        a("y1", "18"),
        a("x2", "6.01"),
        a("x1", "6"),
      ]),
    ],
  )
}


pub fn server_cog(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m10.852 14.772-.383.923")]),
      svg.path([
        a("d", "M13.148 14.772a3 3 0 1 0-2.296-5.544l-.383-.923"),
      ]),
      svg.path([a("d", "m13.148 9.228.383-.923")]),
      svg.path([a("d", "m13.53 15.696-.382-.924a3 3 0 1 1-2.296-5.544")]),
      svg.path([a("d", "m14.772 10.852.923-.383")]),
      svg.path([a("d", "m14.772 13.148.923.383")]),
      svg.path([
        a(
          "d",
          "M4.5 10H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v4a2 2 0 0 1-2 2h-.5",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M4.5 14H4a2 2 0 0 0-2 2v4a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-4a2 2 0 0 0-2-2h-.5",
        ),
      ]),
      svg.path([a("d", "M6 18h.01")]),
      svg.path([a("d", "M6 6h.01")]),
      svg.path([a("d", "m9.228 10.852-.923-.383")]),
      svg.path([a("d", "m9.228 13.148-.923.383")]),
    ],
  )
}


pub fn server_crash(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M6 10H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v4a2 2 0 0 1-2 2h-2",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M6 14H4a2 2 0 0 0-2 2v4a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-4a2 2 0 0 0-2-2h-2",
        ),
      ]),
      svg.path([a("d", "M6 6h.01")]),
      svg.path([a("d", "M6 18h.01")]),
      svg.path([a("d", "m13 6-4 6h6l-4 6")]),
    ],
  )
}


pub fn server_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M7 2h13a2 2 0 0 1 2 2v4a2 2 0 0 1-2 2h-5")]),
      svg.path([
        a("d", "M10 10 2.5 2.5C2 2 2 2.5 2 5v3a2 2 0 0 0 2 2h6z"),
      ]),
      svg.path([a("d", "M22 17v-1a2 2 0 0 0-2-2h-1")]),
      svg.path([
        a("d", "M4 14a2 2 0 0 0-2 2v4a2 2 0 0 0 2 2h16.5l1-.5.5.5-8-8H4z"),
      ]),
      svg.path([a("d", "M6 18h.01")]),
      svg.path([a("d", "m2 2 20 20")]),
    ],
  )
}


pub fn settings(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M9.671 4.136a2.34 2.34 0 0 1 4.659 0 2.34 2.34 0 0 0 3.319 1.915 2.34 2.34 0 0 1 2.33 4.033 2.34 2.34 0 0 0 0 3.831 2.34 2.34 0 0 1-2.33 4.033 2.34 2.34 0 0 0-3.319 1.915 2.34 2.34 0 0 1-4.659 0 2.34 2.34 0 0 0-3.32-1.915 2.34 2.34 0 0 1-2.33-4.033 2.34 2.34 0 0 0 0-3.831A2.34 2.34 0 0 1 6.35 6.051a2.34 2.34 0 0 0 3.319-1.915",
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


pub fn settings_2(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M14 17H5")]),
      svg.path([a("d", "M19 7h-9")]),
      svg.circle([
        a("r", "3"),
        a("cy", "17"),
        a("cx", "17"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "7"),
        a("cx", "7"),
      ]),
    ],
  )
}


pub fn shapes(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M8.3 10a.7.7 0 0 1-.626-1.079L11.4 3a.7.7 0 0 1 1.198-.043L16.3 8.9a.7.7 0 0 1-.572 1.1Z",
        ),
      ]),
      svg.rect([
        a("rx", "1"),
        a("height", "7"),
        a("width", "7"),
        a("y", "14"),
        a("x", "3"),
      ]),
      svg.circle([
        a("r", "3.5"),
        a("cy", "17.5"),
        a("cx", "17.5"),
      ]),
    ],
  )
}


pub fn share(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 2v13")]),
      svg.path([a("d", "m16 6-4-4-4 4")]),
      svg.path([a("d", "M4 12v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-8")]),
    ],
  )
}


pub fn share_2(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("cy", "5"),
        a("cx", "18"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "12"),
        a("cx", "6"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "19"),
        a("cx", "18"),
      ]),
      svg.line([
        a("y2", "17.49"),
        a("y1", "13.51"),
        a("x2", "15.42"),
        a("x1", "8.59"),
      ]),
      svg.line([
        a("y2", "10.49"),
        a("y1", "6.51"),
        a("x2", "8.59"),
        a("x1", "15.41"),
      ]),
    ],
  )
}


pub fn sheet(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.line([
        a("y2", "9"),
        a("y1", "9"),
        a("x2", "21"),
        a("x1", "3"),
      ]),
      svg.line([
        a("y2", "15"),
        a("y1", "15"),
        a("x2", "21"),
        a("x1", "3"),
      ]),
      svg.line([
        a("y2", "21"),
        a("y1", "9"),
        a("x2", "9"),
        a("x1", "9"),
      ]),
      svg.line([
        a("y2", "21"),
        a("y1", "9"),
        a("x2", "15"),
        a("x1", "15"),
      ]),
    ],
  )
}


pub fn shell(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M14 11a2 2 0 1 1-4 0 4 4 0 0 1 8 0 6 6 0 0 1-12 0 8 8 0 0 1 16 0 10 10 0 1 1-20 0 11.93 11.93 0 0 1 2.42-7.22 2 2 0 1 1 3.16 2.44",
        ),
      ]),
    ],
  )
}


pub fn shelving_unit(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 12V9a1 1 0 0 0-1-1H9a1 1 0 0 0-1 1v3")]),
      svg.path([a("d", "M16 20v-3a1 1 0 0 0-1-1h-2a1 1 0 0 0-1 1v3")]),
      svg.path([a("d", "M20 22V2")]),
      svg.path([a("d", "M4 12h16")]),
      svg.path([a("d", "M4 20h16")]),
      svg.path([a("d", "M4 2v20")]),
      svg.path([a("d", "M4 4h16")]),
    ],
  )
}


pub fn shield(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M20 13c0 5-3.5 7.5-7.66 8.95a1 1 0 0 1-.67-.01C7.5 20.5 4 18 4 13V6a1 1 0 0 1 1-1c2 0 4.5-1.2 6.24-2.72a1.17 1.17 0 0 1 1.52 0C14.51 3.81 17 5 19 5a1 1 0 0 1 1 1z",
        ),
      ]),
    ],
  )
}


pub fn shield_alert(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M20 13c0 5-3.5 7.5-7.66 8.95a1 1 0 0 1-.67-.01C7.5 20.5 4 18 4 13V6a1 1 0 0 1 1-1c2 0 4.5-1.2 6.24-2.72a1.17 1.17 0 0 1 1.52 0C14.51 3.81 17 5 19 5a1 1 0 0 1 1 1z",
        ),
      ]),
      svg.path([a("d", "M12 8v4")]),
      svg.path([a("d", "M12 16h.01")]),
    ],
  )
}


pub fn shield_ban(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M20 13c0 5-3.5 7.5-7.66 8.95a1 1 0 0 1-.67-.01C7.5 20.5 4 18 4 13V6a1 1 0 0 1 1-1c2 0 4.5-1.2 6.24-2.72a1.17 1.17 0 0 1 1.52 0C14.51 3.81 17 5 19 5a1 1 0 0 1 1 1z",
        ),
      ]),
      svg.path([a("d", "m4.243 5.21 14.39 12.472")]),
    ],
  )
}


pub fn shield_check(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M20 13c0 5-3.5 7.5-7.66 8.95a1 1 0 0 1-.67-.01C7.5 20.5 4 18 4 13V6a1 1 0 0 1 1-1c2 0 4.5-1.2 6.24-2.72a1.17 1.17 0 0 1 1.52 0C14.51 3.81 17 5 19 5a1 1 0 0 1 1 1z",
        ),
      ]),
      svg.path([a("d", "m9 12 2 2 4-4")]),
    ],
  )
}


pub fn shield_cog(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m10.929 14.467-.383.924")]),
      svg.path([a("d", "M10.929 8.923 10.546 8")]),
      svg.path([a("d", "M13.225 8.923 13.608 8")]),
      svg.path([a("d", "m13.607 15.391-.382-.924")]),
      svg.path([a("d", "m14.849 10.547.923-.383")]),
      svg.path([a("d", "m14.849 12.843.923.383")]),
      svg.path([
        a(
          "d",
          "M20 13c0 5-3.5 7.5-7.66 8.95a1 1 0 0 1-.67-.01C7.5 20.5 4 18 4 13V6a1 1 0 0 1 1-1c2 0 4.5-1.2 6.24-2.72a1.17 1.17 0 0 1 1.52 0C14.51 3.81 17 5 19 5a1 1 0 0 1 1 1z",
        ),
      ]),
      svg.path([a("d", "m9.305 10.547-.923-.383")]),
      svg.path([a("d", "m9.305 12.843-.923.383")]),
      svg.circle([
        a("r", "3"),
        a("cy", "11.695"),
        a("cx", "12.077"),
      ]),
    ],
  )
}


pub fn shield_cog_corner(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M11 22c-3.806-1.45-7-3.966-7-9V6a1 1 0 0 1 1-1c2 0 4.5-1.2 6.24-2.72a1.17 1.17 0 0 1 1.52 0C14.51 3.81 17 5 19 5a1 1 0 0 1 1 1v4",
        ),
      ]),
      svg.path([a("d", "M14.923 16.547 14 16.164")]),
      svg.path([a("d", "m14.923 18.843-.923.383")]),
      svg.path([a("d", "M16.547 14.923 16.164 14")]),
      svg.path([a("d", "m16.547 20.467-.383.924")]),
      svg.path([a("d", "m18.843 14.923.383-.923")]),
      svg.path([a("d", "m19.225 21.391-.382-.924")]),
      svg.path([a("d", "m20.467 16.547.923-.383")]),
      svg.path([a("d", "m20.467 18.843.923.383")]),
      svg.circle([
        a("r", "3"),
        a("cy", "17.695"),
        a("cx", "17.695"),
      ]),
    ],
  )
}


pub fn shield_ellipsis(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M20 13c0 5-3.5 7.5-7.66 8.95a1 1 0 0 1-.67-.01C7.5 20.5 4 18 4 13V6a1 1 0 0 1 1-1c2 0 4.5-1.2 6.24-2.72a1.17 1.17 0 0 1 1.52 0C14.51 3.81 17 5 19 5a1 1 0 0 1 1 1z",
        ),
      ]),
      svg.path([a("d", "M8 12h.01")]),
      svg.path([a("d", "M12 12h.01")]),
      svg.path([a("d", "M16 12h.01")]),
    ],
  )
}


pub fn shield_half(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M20 13c0 5-3.5 7.5-7.66 8.95a1 1 0 0 1-.67-.01C7.5 20.5 4 18 4 13V6a1 1 0 0 1 1-1c2 0 4.5-1.2 6.24-2.72a1.17 1.17 0 0 1 1.52 0C14.51 3.81 17 5 19 5a1 1 0 0 1 1 1z",
        ),
      ]),
      svg.path([a("d", "M12 22V2")]),
    ],
  )
}


pub fn shield_minus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M20 13c0 5-3.5 7.5-7.66 8.95a1 1 0 0 1-.67-.01C7.5 20.5 4 18 4 13V6a1 1 0 0 1 1-1c2 0 4.5-1.2 6.24-2.72a1.17 1.17 0 0 1 1.52 0C14.51 3.81 17 5 19 5a1 1 0 0 1 1 1z",
        ),
      ]),
      svg.path([a("d", "M9 12h6")]),
    ],
  )
}


pub fn shield_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([
        a(
          "d",
          "M5 5a1 1 0 0 0-1 1v7c0 5 3.5 7.5 7.67 8.94a1 1 0 0 0 .67.01c2.35-.82 4.48-1.97 5.9-3.71",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M9.309 3.652A12.252 12.252 0 0 0 11.24 2.28a1.17 1.17 0 0 1 1.52 0C14.51 3.81 17 5 19 5a1 1 0 0 1 1 1v7a9.784 9.784 0 0 1-.08 1.264",
        ),
      ]),
    ],
  )
}


pub fn shield_plus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M20 13c0 5-3.5 7.5-7.66 8.95a1 1 0 0 1-.67-.01C7.5 20.5 4 18 4 13V6a1 1 0 0 1 1-1c2 0 4.5-1.2 6.24-2.72a1.17 1.17 0 0 1 1.52 0C14.51 3.81 17 5 19 5a1 1 0 0 1 1 1z",
        ),
      ]),
      svg.path([a("d", "M9 12h6")]),
      svg.path([a("d", "M12 9v6")]),
    ],
  )
}


pub fn shield_question_mark(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M20 13c0 5-3.5 7.5-7.66 8.95a1 1 0 0 1-.67-.01C7.5 20.5 4 18 4 13V6a1 1 0 0 1 1-1c2 0 4.5-1.2 6.24-2.72a1.17 1.17 0 0 1 1.52 0C14.51 3.81 17 5 19 5a1 1 0 0 1 1 1z",
        ),
      ]),
      svg.path([a("d", "M9.1 9a3 3 0 0 1 5.82 1c0 2-3 3-3 3")]),
      svg.path([a("d", "M12 17h.01")]),
    ],
  )
}


pub fn shield_user(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M20 13c0 5-3.5 7.5-7.66 8.95a1 1 0 0 1-.67-.01C7.5 20.5 4 18 4 13V6a1 1 0 0 1 1-1c2 0 4.5-1.2 6.24-2.72a1.17 1.17 0 0 1 1.52 0C14.51 3.81 17 5 19 5a1 1 0 0 1 1 1z",
        ),
      ]),
      svg.path([a("d", "M6.376 18.91a6 6 0 0 1 11.249.003")]),
      svg.circle([
        a("r", "4"),
        a("cy", "11"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn shield_x(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M20 13c0 5-3.5 7.5-7.66 8.95a1 1 0 0 1-.67-.01C7.5 20.5 4 18 4 13V6a1 1 0 0 1 1-1c2 0 4.5-1.2 6.24-2.72a1.17 1.17 0 0 1 1.52 0C14.51 3.81 17 5 19 5a1 1 0 0 1 1 1z",
        ),
      ]),
      svg.path([a("d", "m14.5 9.5-5 5")]),
      svg.path([a("d", "m9.5 9.5 5 5")]),
    ],
  )
}


pub fn ship(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 10.189V14")]),
      svg.path([a("d", "M12 2v3")]),
      svg.path([a("d", "M19 13V7a2 2 0 0 0-2-2H7a2 2 0 0 0-2 2v6")]),
      svg.path([
        a(
          "d",
          "M19.38 20A11.6 11.6 0 0 0 21 14l-8.188-3.639a2 2 0 0 0-1.624 0L3 14a11.6 11.6 0 0 0 2.81 7.76",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M2 21c.6.5 1.2 1 2.5 1 2.5 0 2.5-2 5-2 1.3 0 1.9.5 2.5 1s1.2 1 2.5 1c2.5 0 2.5-2 5-2 1.3 0 1.9.5 2.5 1",
        ),
      ]),
    ],
  )
}


pub fn ship_wheel(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M12 2v7.5")]),
      svg.path([a("d", "m19 5-5.23 5.23")]),
      svg.path([a("d", "M22 12h-7.5")]),
      svg.path([a("d", "m19 19-5.23-5.23")]),
      svg.path([a("d", "M12 14.5V22")]),
      svg.path([a("d", "M10.23 13.77 5 19")]),
      svg.path([a("d", "M9.5 12H2")]),
      svg.path([a("d", "M10.23 10.23 5 5")]),
      svg.circle([
        a("r", "2.5"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn shirt(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M20.38 3.46 16 2a4 4 0 0 1-8 0L3.62 3.46a2 2 0 0 0-1.34 2.23l.58 3.47a1 1 0 0 0 .99.84H6v10c0 1.1.9 2 2 2h8a2 2 0 0 0 2-2V10h2.15a1 1 0 0 0 .99-.84l.58-3.47a2 2 0 0 0-1.34-2.23z",
        ),
      ]),
    ],
  )
}


pub fn shopping_bag(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M16 10a4 4 0 0 1-8 0")]),
      svg.path([a("d", "M3.103 6.034h17.794")]),
      svg.path([
        a(
          "d",
          "M3.4 5.467a2 2 0 0 0-.4 1.2V20a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6.667a2 2 0 0 0-.4-1.2l-2-2.667A2 2 0 0 0 17 2H7a2 2 0 0 0-1.6.8z",
        ),
      ]),
    ],
  )
}


pub fn shopping_basket(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m15 11-1 9")]),
      svg.path([a("d", "m19 11-4-7")]),
      svg.path([a("d", "M2 11h20")]),
      svg.path([
        a("d", "m3.5 11 1.6 7.4a2 2 0 0 0 2 1.6h9.8a2 2 0 0 0 2-1.6l1.7-7.4"),
      ]),
      svg.path([a("d", "M4.5 15.5h15")]),
      svg.path([a("d", "m5 11 4-7")]),
      svg.path([a("d", "m9 11 1 9")]),
    ],
  )
}


pub fn shopping_cart(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("cy", "21"),
        a("cx", "8"),
      ]),
      svg.circle([
        a("r", "1"),
        a("cy", "21"),
        a("cx", "19"),
      ]),
      svg.path([
        a(
          "d",
          "M2.05 2.05h2l2.66 12.42a2 2 0 0 0 2 1.58h9.78a2 2 0 0 0 1.95-1.57l1.65-7.43H5.12",
        ),
      ]),
    ],
  )
}


pub fn shovel(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M21.56 4.56a1.5 1.5 0 0 1 0 2.122l-.47.47a3 3 0 0 1-4.212-.03 3 3 0 0 1 0-4.243l.44-.44a1.5 1.5 0 0 1 2.121 0z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M3 22a1 1 0 0 1-1-1v-3.586a1 1 0 0 1 .293-.707l3.355-3.355a1.205 1.205 0 0 1 1.704 0l3.296 3.296a1.205 1.205 0 0 1 0 1.704l-3.355 3.355a1 1 0 0 1-.707.293z",
        ),
      ]),
      svg.path([a("d", "m9 15 7.879-7.878")]),
    ],
  )
}


pub fn shower_head(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m4 4 2.5 2.5")]),
      svg.path([a("d", "M13.5 6.5a4.95 4.95 0 0 0-7 7")]),
      svg.path([a("d", "M15 5 5 15")]),
      svg.path([a("d", "M14 17v.01")]),
      svg.path([a("d", "M10 16v.01")]),
      svg.path([a("d", "M13 13v.01")]),
      svg.path([a("d", "M16 10v.01")]),
      svg.path([a("d", "M11 20v.01")]),
      svg.path([a("d", "M17 14v.01")]),
      svg.path([a("d", "M20 11v.01")]),
    ],
  )
}


pub fn shredder(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M4 13V4a2 2 0 0 1 2-2h8a2.4 2.4 0 0 1 1.706.706l3.588 3.588A2.4 2.4 0 0 1 20 8v5",
        ),
      ]),
      svg.path([a("d", "M14 2v5a1 1 0 0 0 1 1h5")]),
      svg.path([a("d", "M10 22v-5")]),
      svg.path([a("d", "M14 19v-2")]),
      svg.path([a("d", "M18 20v-3")]),
      svg.path([a("d", "M2 13h20")]),
      svg.path([a("d", "M6 20v-3")]),
    ],
  )
}


pub fn shrimp(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M11 12h.01")]),
      svg.path([a("d", "M13 22c.5-.5 1.12-1 2.5-1-1.38 0-2-.5-2.5-1")]),
      svg.path([
        a(
          "d",
          "M14 2a3.28 3.28 0 0 1-3.227 1.798l-6.17-.561A2.387 2.387 0 1 0 4.387 8H15.5a1 1 0 0 1 0 13 1 1 0 0 0 0-5H12a7 7 0 0 1-7-7V8",
        ),
      ]),
      svg.path([a("d", "M14 8a8.5 8.5 0 0 1 0 8")]),
      svg.path([a("d", "M16 16c2 0 4.5-4 4-6")]),
    ],
  )
}


pub fn shrink(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m15 15 6 6m-6-6v4.8m0-4.8h4.8")]),
      svg.path([a("d", "M9 19.8V15m0 0H4.2M9 15l-6 6")]),
      svg.path([a("d", "M15 4.2V9m0 0h4.8M15 9l6-6")]),
      svg.path([a("d", "M9 4.2V9m0 0H4.2M9 9 3 3")]),
    ],
  )
}


pub fn shrub(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 22v-5.172a2 2 0 0 0-.586-1.414L9.5 13.5")]),
      svg.path([a("d", "M14.5 14.5 12 17")]),
      svg.path([
        a("d", "M17 8.8A6 6 0 0 1 13.8 20H10A6.5 6.5 0 0 1 7 8a5 5 0 0 1 10 0z"),
      ]),
    ],
  )
}


pub fn shuffle(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m18 14 4 4-4 4")]),
      svg.path([a("d", "m18 2 4 4-4 4")]),
      svg.path([
        a("d", "M2 18h1.973a4 4 0 0 0 3.3-1.7l5.454-8.6a4 4 0 0 1 3.3-1.7H22"),
      ]),
      svg.path([a("d", "M2 6h1.972a4 4 0 0 1 3.6 2.2")]),
      svg.path([a("d", "M22 18h-6.041a4 4 0 0 1-3.3-1.8l-.359-.45")]),
    ],
  )
}


pub fn sigma(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M18 7V5a1 1 0 0 0-1-1H6.5a.5.5 0 0 0-.4.8l4.5 6a2 2 0 0 1 0 2.4l-4.5 6a.5.5 0 0 0 .4.8H17a1 1 0 0 0 1-1v-2",
        ),
      ]),
    ],
  )
}


pub fn signal(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M2 20h.01")]),
      svg.path([a("d", "M7 20v-4")]),
      svg.path([a("d", "M12 20v-8")]),
      svg.path([a("d", "M17 20V8")]),
      svg.path([a("d", "M22 4v16")]),
    ],
  )
}


pub fn signal_high(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M2 20h.01")]),
      svg.path([a("d", "M7 20v-4")]),
      svg.path([a("d", "M12 20v-8")]),
      svg.path([a("d", "M17 20V8")]),
    ],
  )
}


pub fn signal_low(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M2 20h.01")]),
      svg.path([a("d", "M7 20v-4")]),
    ],
  )
}


pub fn signal_medium(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M2 20h.01")]),
      svg.path([a("d", "M7 20v-4")]),
      svg.path([a("d", "M12 20v-8")]),
    ],
  )
}


pub fn signal_zero(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [svg.path([a("d", "M2 20h.01")])],
  )
}


pub fn signature(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "m21 17-2.156-1.868A.5.5 0 0 0 18 15.5v.5a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1c0-2.545-3.991-3.97-8.5-4a1 1 0 0 0 0 5c4.153 0 4.745-11.295 5.708-13.5a2.5 2.5 0 1 1 3.31 3.284",
        ),
      ]),
      svg.path([a("d", "M3 21h18")]),
    ],
  )
}


pub fn signpost(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M12 3v3")]),
      svg.path([
        a(
          "d",
          "M2.354 10.354a1.207 1.207 0 0 1 0-1.708l2.06-2.06A2 2 0 0 1 5.828 6h12.344a2 2 0 0 1 1.414.586l2.06 2.06a1.207 1.207 0 0 1 0 1.708l-2.06 2.06a2 2 0 0 1-1.414.586H5.828a2 2 0 0 1-1.414-.586z",
        ),
      ]),
    ],
  )
}


pub fn signpost_big(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 9H4L2 7l2-2h6")]),
      svg.path([a("d", "M14 5h6l2 2-2 2h-6")]),
      svg.path([a("d", "M10 22V4a2 2 0 1 1 4 0v18")]),
      svg.path([a("d", "M8 22h8")]),
    ],
  )
}


pub fn siren(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M7 18v-6a5 5 0 1 1 10 0v6")]),
      svg.path([
        a(
          "d",
          "M5 21a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-1a2 2 0 0 0-2-2H7a2 2 0 0 0-2 2z",
        ),
      ]),
      svg.path([a("d", "M21 12h1")]),
      svg.path([a("d", "M18.5 4.5 18 5")]),
      svg.path([a("d", "M2 12h1")]),
      svg.path([a("d", "M12 2v1")]),
      svg.path([a("d", "m4.929 4.929.707.707")]),
      svg.path([a("d", "M12 12v6")]),
    ],
  )
}


pub fn skip_back(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M17.971 4.285A2 2 0 0 1 21 6v12a2 2 0 0 1-3.029 1.715l-9.997-5.998a2 2 0 0 1-.003-3.432z",
        ),
      ]),
      svg.path([a("d", "M3 20V4")]),
    ],
  )
}


pub fn skip_forward(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M21 4v16")]),
      svg.path([
        a(
          "d",
          "M6.029 4.285A2 2 0 0 0 3 6v12a2 2 0 0 0 3.029 1.715l9.997-5.998a2 2 0 0 0 .003-3.432z",
        ),
      ]),
    ],
  )
}


pub fn skull(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m12.5 17-.5-1-.5 1h1z")]),
      svg.path([
        a(
          "d",
          "M15 22a1 1 0 0 0 1-1v-1a2 2 0 0 0 1.56-3.25 8 8 0 1 0-11.12 0A2 2 0 0 0 8 20v1a1 1 0 0 0 1 1z",
        ),
      ]),
      svg.circle([
        a("r", "1"),
        a("cy", "12"),
        a("cx", "15"),
      ]),
      svg.circle([
        a("r", "1"),
        a("cy", "12"),
        a("cx", "9"),
      ]),
    ],
  )
}


pub fn slash(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [svg.path([a("d", "M22 2 2 22")])],
  )
}


pub fn slice(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M11 16.586V19a1 1 0 0 1-1 1H2L18.37 3.63a1 1 0 1 1 3 3l-9.663 9.663a1 1 0 0 1-1.414 0L8 14",
        ),
      ]),
    ],
  )
}


pub fn sliders_horizontal(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 5H3")]),
      svg.path([a("d", "M12 19H3")]),
      svg.path([a("d", "M14 3v4")]),
      svg.path([a("d", "M16 17v4")]),
      svg.path([a("d", "M21 12h-9")]),
      svg.path([a("d", "M21 19h-5")]),
      svg.path([a("d", "M21 5h-7")]),
      svg.path([a("d", "M8 10v4")]),
      svg.path([a("d", "M8 12H3")]),
    ],
  )
}


pub fn sliders_vertical(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 8h4")]),
      svg.path([a("d", "M12 21v-9")]),
      svg.path([a("d", "M12 8V3")]),
      svg.path([a("d", "M17 16h4")]),
      svg.path([a("d", "M19 12V3")]),
      svg.path([a("d", "M19 21v-5")]),
      svg.path([a("d", "M3 14h4")]),
      svg.path([a("d", "M5 10V3")]),
      svg.path([a("d", "M5 21v-7")]),
    ],
  )
}


pub fn smartphone(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("x", "5"),
        a("height", "20"),
        a("width", "14"),
      ]),
      svg.path([a("d", "M12 18h.01")]),
    ],
  )
}


pub fn smartphone_charging(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("x", "5"),
        a("height", "20"),
        a("width", "14"),
      ]),
      svg.path([a("d", "M12.667 8 10 12h4l-2.667 4")]),
    ],
  )
}


pub fn smartphone_nfc(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("y", "6"),
        a("x", "2"),
        a("height", "12"),
        a("width", "7"),
      ]),
      svg.path([a("d", "M13 8.32a7.43 7.43 0 0 1 0 7.36")]),
      svg.path([a("d", "M16.46 6.21a11.76 11.76 0 0 1 0 11.58")]),
      svg.path([a("d", "M19.91 4.1a15.91 15.91 0 0 1 .01 15.8")]),
    ],
  )
}


pub fn smile(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M8 14s1.5 2 4 2 4-2 4-2")]),
      svg.line([
        a("y2", "9"),
        a("y1", "9"),
        a("x2", "9.01"),
        a("x1", "9"),
      ]),
      svg.line([
        a("y2", "9"),
        a("y1", "9"),
        a("x2", "15.01"),
        a("x1", "15"),
      ]),
    ],
  )
}


pub fn smile_plus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M22 11v1a10 10 0 1 1-9-10")]),
      svg.path([a("d", "M8 14s1.5 2 4 2 4-2 4-2")]),
      svg.line([
        a("y2", "9"),
        a("y1", "9"),
        a("x2", "9.01"),
        a("x1", "9"),
      ]),
      svg.line([
        a("y2", "9"),
        a("y1", "9"),
        a("x2", "15.01"),
        a("x1", "15"),
      ]),
      svg.path([a("d", "M16 5h6")]),
      svg.path([a("d", "M19 2v6")]),
    ],
  )
}


pub fn snail(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M2 13a6 6 0 1 0 12 0 4 4 0 1 0-8 0 2 2 0 0 0 4 0"),
      ]),
      svg.circle([
        a("r", "8"),
        a("cy", "13"),
        a("cx", "10"),
      ]),
      svg.path([a("d", "M2 21h12c4.4 0 8-3.6 8-8V7a2 2 0 1 0-4 0v6")]),
      svg.path([a("d", "M18 3 19.1 5.2")]),
      svg.path([a("d", "M22 3 20.9 5.2")]),
    ],
  )
}


pub fn snowflake(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "m14 20 1.25-2.5L18 18")]),
      svg.path([a("d", "m14 4 1.25 2.5L18 6")]),
      svg.path([a("d", "m17 21-3-6h-4")]),
      svg.path([a("d", "m17 3-3 6 1.5 3")]),
      svg.path([a("d", "M2 12h6.5L10 9")]),
      svg.path([a("d", "m20 10-1.5 2 1.5 2")]),
      svg.path([a("d", "M22 12h-6.5L14 15")]),
      svg.path([a("d", "m4 10 1.5 2L4 14")]),
      svg.path([a("d", "m7 21 3-6-1.5-3")]),
      svg.path([a("d", "m7 3 3 6h4")]),
    ],
  )
}


pub fn soap_dispenser_droplet(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10.5 2v4")]),
      svg.path([a("d", "M14 2H7a2 2 0 0 0-2 2")]),
      svg.path([
        a(
          "d",
          "M19.29 14.76A6.67 6.67 0 0 1 17 11a6.6 6.6 0 0 1-2.29 3.76c-1.15.92-1.71 2.04-1.71 3.19 0 2.22 1.8 4.05 4 4.05s4-1.83 4-4.05c0-1.16-.57-2.26-1.71-3.19",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M9.607 21H6a2 2 0 0 1-2-2v-7a2 2 0 0 1 2-2h7V7a1 1 0 0 0-1-1H9a1 1 0 0 0-1 1v3",
        ),
      ]),
    ],
  )
}


pub fn sofa(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M20 9V6a2 2 0 0 0-2-2H6a2 2 0 0 0-2 2v3")]),
      svg.path([
        a(
          "d",
          "M2 16a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-5a2 2 0 0 0-4 0v1.5a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5V11a2 2 0 0 0-4 0z",
        ),
      ]),
      svg.path([a("d", "M4 18v2")]),
      svg.path([a("d", "M20 18v2")]),
      svg.path([a("d", "M12 4v9")]),
    ],
  )
}


pub fn solar_panel(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M11 2h2")]),
      svg.path([a("d", "m14.28 14-4.56 8")]),
      svg.path([a("d", "m21 22-1.558-4H4.558")]),
      svg.path([a("d", "M3 10v2")]),
      svg.path([
        a(
          "d",
          "M6.245 15.04A2 2 0 0 1 8 14h12a1 1 0 0 1 .864 1.505l-3.11 5.457A2 2 0 0 1 16 22H4a1 1 0 0 1-.863-1.506z",
        ),
      ]),
      svg.path([a("d", "M7 2a4 4 0 0 1-4 4")]),
      svg.path([a("d", "m8.66 7.66 1.41 1.41")]),
    ],
  )
}


pub fn soup(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 21a9 9 0 0 0 9-9H3a9 9 0 0 0 9 9Z")]),
      svg.path([a("d", "M7 21h10")]),
      svg.path([a("d", "M19.5 12 22 6")]),
      svg.path([
        a(
          "d",
          "M16.25 3c.27.1.8.53.75 1.36-.06.83-.93 1.2-1 2.02-.05.78.34 1.24.73 1.62",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M11.25 3c.27.1.8.53.74 1.36-.05.83-.93 1.2-.98 2.02-.06.78.33 1.24.72 1.62",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M6.25 3c.27.1.8.53.75 1.36-.06.83-.93 1.2-1 2.02-.05.78.34 1.24.74 1.62",
        ),
      ]),
    ],
  )
}


pub fn space(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [svg.path([a("d", "M22 17v1c0 .5-.5 1-1 1H3c-.5 0-1-.5-1-1v-1")])],
  )
}


pub fn spade(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 18v4")]),
      svg.path([
        a(
          "d",
          "M2 14.499a5.5 5.5 0 0 0 9.591 3.675.6.6 0 0 1 .818.001A5.5 5.5 0 0 0 22 14.5c0-2.29-1.5-4-3-5.5l-5.492-5.312a2 2 0 0 0-3-.02L5 8.999c-1.5 1.5-3 3.2-3 5.5",
        ),
      ]),
    ],
  )
}


pub fn sparkle(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M11.017 2.814a1 1 0 0 1 1.966 0l1.051 5.558a2 2 0 0 0 1.594 1.594l5.558 1.051a1 1 0 0 1 0 1.966l-5.558 1.051a2 2 0 0 0-1.594 1.594l-1.051 5.558a1 1 0 0 1-1.966 0l-1.051-5.558a2 2 0 0 0-1.594-1.594l-5.558-1.051a1 1 0 0 1 0-1.966l5.558-1.051a2 2 0 0 0 1.594-1.594z",
        ),
      ]),
    ],
  )
}


pub fn sparkles(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M11.017 2.814a1 1 0 0 1 1.966 0l1.051 5.558a2 2 0 0 0 1.594 1.594l5.558 1.051a1 1 0 0 1 0 1.966l-5.558 1.051a2 2 0 0 0-1.594 1.594l-1.051 5.558a1 1 0 0 1-1.966 0l-1.051-5.558a2 2 0 0 0-1.594-1.594l-5.558-1.051a1 1 0 0 1 0-1.966l5.558-1.051a2 2 0 0 0 1.594-1.594z",
        ),
      ]),
      svg.path([a("d", "M20 2v4")]),
      svg.path([a("d", "M22 4h-4")]),
      svg.circle([
        a("r", "2"),
        a("cy", "20"),
        a("cx", "4"),
      ]),
    ],
  )
}


pub fn speaker(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M12 6h.01")]),
      svg.circle([
        a("r", "4"),
        a("cy", "14"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M12 14h.01")]),
    ],
  )
}


pub fn speech(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M8.8 20v-4.1l1.9.2a2.3 2.3 0 0 0 2.164-2.1V8.3A5.37 5.37 0 0 0 2 8.25c0 2.8.656 3.054 1 4.55a5.77 5.77 0 0 1 .029 2.758L2 20",
        ),
      ]),
      svg.path([a("d", "M19.8 17.8a7.5 7.5 0 0 0 .003-10.603")]),
      svg.path([a("d", "M17 15a3.5 3.5 0 0 0-.025-4.975")]),
    ],
  )
}


pub fn spell_check(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m6 16 6-12 6 12")]),
      svg.path([a("d", "M8 12h8")]),
      svg.path([a("d", "m16 20 2 2 4-4")]),
    ],
  )
}


pub fn spell_check_2(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m6 16 6-12 6 12")]),
      svg.path([a("d", "M8 12h8")]),
      svg.path([
        a(
          "d",
          "M4 21c1.1 0 1.1-1 2.3-1s1.1 1 2.3 1c1.1 0 1.1-1 2.3-1 1.1 0 1.1 1 2.3 1 1.1 0 1.1-1 2.3-1 1.1 0 1.1 1 2.3 1 1.1 0 1.1-1 2.3-1",
        ),
      ]),
    ],
  )
}


pub fn spline(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("cy", "5"),
        a("cx", "19"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "19"),
        a("cx", "5"),
      ]),
      svg.path([a("d", "M5 17A12 12 0 0 1 17 5")]),
    ],
  )
}


pub fn spline_pointer(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M12.034 12.681a.498.498 0 0 1 .647-.647l9 3.5a.5.5 0 0 1-.033.943l-3.444 1.068a1 1 0 0 0-.66.66l-1.067 3.443a.5.5 0 0 1-.943.033z",
        ),
      ]),
      svg.path([a("d", "M5 17A12 12 0 0 1 17 5")]),
      svg.circle([
        a("r", "2"),
        a("cy", "5"),
        a("cx", "19"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "19"),
        a("cx", "5"),
      ]),
    ],
  )
}


pub fn split(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M8 3H3v5")]),
      svg.path([a("d", "M12 22v-8.3a4 4 0 0 0-1.172-2.872L3 3")]),
      svg.path([a("d", "m15 9 6-6")]),
    ],
  )
}


pub fn spool(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M17 13.44 4.442 17.082A2 2 0 0 0 4.982 21H19a2 2 0 0 0 .558-3.921l-1.115-.32A2 2 0 0 1 17 14.837V7.66",
        ),
      ]),
      svg.path([
        a(
          "d",
          "m7 10.56 12.558-3.642A2 2 0 0 0 19.018 3H5a2 2 0 0 0-.558 3.921l1.115.32A2 2 0 0 1 7 9.163v7.178",
        ),
      ]),
    ],
  )
}


pub fn sport_shoe(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m15 10.42 4.8-5.07")]),
      svg.path([a("d", "M19 18h3")]),
      svg.path([
        a(
          "d",
          "M9.5 22 21.414 9.415A2 2 0 0 0 21.2 6.4l-5.61-4.208A1 1 0 0 0 14 3v2a2 2 0 0 1-1.394 1.906L8.677 8.053A1 1 0 0 0 8 9c-.155 6.393-2.082 9-4 9a2 2 0 0 0 0 4h14",
        ),
      ]),
    ],
  )
}


pub fn spotlight(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M15.295 19.562 16 22")]),
      svg.path([a("d", "m17 16 3.758 2.098")]),
      svg.path([a("d", "m19 12.5 3.026-.598")]),
      svg.path([
        a(
          "d",
          "M7.61 6.3a3 3 0 0 0-3.92 1.3l-1.38 2.79a3 3 0 0 0 1.3 3.91l6.89 3.597a1 1 0 0 0 1.342-.447l3.106-6.211a1 1 0 0 0-.447-1.341z",
        ),
      ]),
      svg.path([a("d", "M8 9V2")]),
    ],
  )
}


pub fn spray_can(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M3 3h.01")]),
      svg.path([a("d", "M7 5h.01")]),
      svg.path([a("d", "M11 7h.01")]),
      svg.path([a("d", "M3 7h.01")]),
      svg.path([a("d", "M7 9h.01")]),
      svg.path([a("d", "M3 11h.01")]),
      svg.rect([
        a("y", "5"),
        a("x", "15"),
        a("height", "4"),
        a("width", "4"),
      ]),
      svg.path([
        a("d", "m19 9 2 2v10c0 .6-.4 1-1 1h-6c-.6 0-1-.4-1-1V11l2-2"),
      ]),
      svg.path([a("d", "m13 14 8-2")]),
      svg.path([a("d", "m13 19 8-2")]),
    ],
  )
}


pub fn sprout(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M14 9.536V7a4 4 0 0 1 4-4h1.5a.5.5 0 0 1 .5.5V5a4 4 0 0 1-4 4 4 4 0 0 0-4 4c0 2 1 3 1 5a5 5 0 0 1-1 3",
        ),
      ]),
      svg.path([a("d", "M4 9a5 5 0 0 1 8 4 5 5 0 0 1-8-4")]),
      svg.path([a("d", "M5 21h14")]),
    ],
  )
}


pub fn square(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
    ],
  )
}


pub fn square_activity(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M17 12h-2l-2 5-2-10-2 5H7")]),
    ],
  )
}


pub fn square_arrow_down(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M12 8v8")]),
      svg.path([a("d", "m8 12 4 4 4-4")]),
    ],
  )
}


pub fn square_arrow_down_left(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "m16 8-8 8")]),
      svg.path([a("d", "M16 16H8V8")]),
    ],
  )
}


pub fn square_arrow_down_right(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "m8 8 8 8")]),
      svg.path([a("d", "M16 8v8H8")]),
    ],
  )
}


pub fn square_arrow_left(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "m12 8-4 4 4 4")]),
      svg.path([a("d", "M16 12H8")]),
    ],
  )
}


pub fn square_arrow_out_down_left(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M13 21h6a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v6"),
      ]),
      svg.path([a("d", "m3 21 9-9")]),
      svg.path([a("d", "M9 21H3v-6")]),
    ],
  )
}


pub fn square_arrow_out_down_right(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M21 11V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h6"),
      ]),
      svg.path([a("d", "m21 21-9-9")]),
      svg.path([a("d", "M21 15v6h-6")]),
    ],
  )
}


pub fn square_arrow_out_up_left(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M13 3h6a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-6"),
      ]),
      svg.path([a("d", "m3 3 9 9")]),
      svg.path([a("d", "M3 9V3h6")]),
    ],
  )
}


pub fn square_arrow_out_up_right(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M21 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h6"),
      ]),
      svg.path([a("d", "m21 3-9 9")]),
      svg.path([a("d", "M15 3h6v6")]),
    ],
  )
}


pub fn square_arrow_right(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M8 12h8")]),
      svg.path([a("d", "m12 16 4-4-4-4")]),
    ],
  )
}


pub fn square_arrow_right_enter(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m10 16 4-4-4-4")]),
      svg.path([a("d", "M3 12h11")]),
      svg.path([
        a(
          "d",
          "M3 8V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-3",
        ),
      ]),
    ],
  )
}


pub fn square_arrow_right_exit(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 12h11")]),
      svg.path([a("d", "m17 16 4-4-4-4")]),
      svg.path([
        a(
          "d",
          "M21 6.344V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-1.344",
        ),
      ]),
    ],
  )
}


pub fn square_arrow_up(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "m16 12-4-4-4 4")]),
      svg.path([a("d", "M12 16V8")]),
    ],
  )
}


pub fn square_arrow_up_left(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M8 16V8h8")]),
      svg.path([a("d", "M16 16 8 8")]),
    ],
  )
}


pub fn square_arrow_up_right(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M8 8h8v8")]),
      svg.path([a("d", "m8 16 8-8")]),
    ],
  )
}


pub fn square_asterisk(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M12 8v8")]),
      svg.path([a("d", "m8.5 14 7-4")]),
      svg.path([a("d", "m8.5 10 7 4")]),
    ],
  )
}


pub fn square_bottom_dashed_scissors(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("y2", "3"),
        a("x2", "19"),
        a("y1", "3"),
        a("x1", "5"),
      ]),
      svg.line([
        a("y2", "19"),
        a("x2", "3"),
        a("y1", "5"),
        a("x1", "3"),
      ]),
      svg.line([
        a("y2", "19"),
        a("x2", "21"),
        a("y1", "5"),
        a("x1", "21"),
      ]),
      svg.line([
        a("y2", "21"),
        a("x2", "10"),
        a("y1", "21"),
        a("x1", "9"),
      ]),
      svg.line([
        a("y2", "21"),
        a("x2", "15"),
        a("y1", "21"),
        a("x1", "14"),
      ]),
      svg.path([a("d", "M 3 5 A2 2 0 0 1 5 3")]),
      svg.path([a("d", "M 19 3 A2 2 0 0 1 21 5")]),
      svg.path([a("d", "M 5 21 A2 2 0 0 1 3 19")]),
      svg.path([a("d", "M 21 19 A2 2 0 0 1 19 21")]),
      svg.circle([
        a("r", "1.5"),
        a("cy", "8.5"),
        a("cx", "8.5"),
      ]),
      svg.line([
        a("y2", "12"),
        a("x2", "12"),
        a("y1", "9.56066"),
        a("x1", "9.56066"),
      ]),
      svg.line([
        a("y2", "14.82"),
        a("x2", "14.82"),
        a("y1", "17"),
        a("x1", "17"),
      ]),
      svg.circle([
        a("r", "1.5"),
        a("cy", "15.5"),
        a("cx", "8.5"),
      ]),
      svg.line([
        a("y2", "7"),
        a("x2", "17"),
        a("y1", "14.43934"),
        a("x1", "9.56066"),
      ]),
    ],
  )
}


pub fn square_centerline_dashed_horizontal(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M8 3H5a2 2 0 0 0-2 2v14c0 1.1.9 2 2 2h3")]),
      svg.path([a("d", "M16 3h3a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-3")]),
      svg.path([a("d", "M12 20v2")]),
      svg.path([a("d", "M12 14v2")]),
      svg.path([a("d", "M12 8v2")]),
      svg.path([a("d", "M12 2v2")]),
    ],
  )
}


pub fn square_centerline_dashed_vertical(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M21 8V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v3")]),
      svg.path([a("d", "M21 16v3a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-3")]),
      svg.path([a("d", "M4 12H2")]),
      svg.path([a("d", "M10 12H8")]),
      svg.path([a("d", "M16 12h-2")]),
      svg.path([a("d", "M22 12h-2")]),
    ],
  )
}


pub fn square_chart_gantt(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M9 8h7")]),
      svg.path([a("d", "M8 12h6")]),
      svg.path([a("d", "M11 16h5")]),
    ],
  )
}


pub fn square_check(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "m9 12 2 2 4-4")]),
    ],
  )
}


pub fn square_check_big(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M21 10.656V19a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h12.344",
        ),
      ]),
      svg.path([a("d", "m9 11 3 3L22 4")]),
    ],
  )
}


pub fn square_chevron_down(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "m16 10-4 4-4-4")]),
    ],
  )
}


pub fn square_chevron_left(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "m14 16-4-4 4-4")]),
    ],
  )
}


pub fn square_chevron_right(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "m10 8 4 4-4 4")]),
    ],
  )
}


pub fn square_chevron_up(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "m8 14 4-4 4 4")]),
    ],
  )
}


pub fn square_code(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m10 9-3 3 3 3")]),
      svg.path([a("d", "m14 15 3-3-3-3")]),
      svg.rect([
        a("rx", "2"),
        a("height", "18"),
        a("width", "18"),
        a("y", "3"),
        a("x", "3"),
      ]),
    ],
  )
}


pub fn square_dashed(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M5 3a2 2 0 0 0-2 2")]),
      svg.path([a("d", "M19 3a2 2 0 0 1 2 2")]),
      svg.path([a("d", "M21 19a2 2 0 0 1-2 2")]),
      svg.path([a("d", "M5 21a2 2 0 0 1-2-2")]),
      svg.path([a("d", "M9 3h1")]),
      svg.path([a("d", "M9 21h1")]),
      svg.path([a("d", "M14 3h1")]),
      svg.path([a("d", "M14 21h1")]),
      svg.path([a("d", "M3 9v1")]),
      svg.path([a("d", "M21 9v1")]),
      svg.path([a("d", "M3 14v1")]),
      svg.path([a("d", "M21 14v1")]),
    ],
  )
}


pub fn square_dashed_bottom(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M5 21a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2",
        ),
      ]),
      svg.path([a("d", "M9 21h1")]),
      svg.path([a("d", "M14 21h1")]),
    ],
  )
}


pub fn square_dashed_bottom_code(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 9.5 8 12l2 2.5")]),
      svg.path([a("d", "M14 21h1")]),
      svg.path([a("d", "m14 9.5 2 2.5-2 2.5")]),
      svg.path([
        a(
          "d",
          "M5 21a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2",
        ),
      ]),
      svg.path([a("d", "M9 21h1")]),
    ],
  )
}


pub fn square_dashed_kanban(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M8 7v7")]),
      svg.path([a("d", "M12 7v4")]),
      svg.path([a("d", "M16 7v9")]),
      svg.path([a("d", "M5 3a2 2 0 0 0-2 2")]),
      svg.path([a("d", "M9 3h1")]),
      svg.path([a("d", "M14 3h1")]),
      svg.path([a("d", "M19 3a2 2 0 0 1 2 2")]),
      svg.path([a("d", "M21 9v1")]),
      svg.path([a("d", "M21 14v1")]),
      svg.path([a("d", "M21 19a2 2 0 0 1-2 2")]),
      svg.path([a("d", "M14 21h1")]),
      svg.path([a("d", "M9 21h1")]),
      svg.path([a("d", "M5 21a2 2 0 0 1-2-2")]),
      svg.path([a("d", "M3 14v1")]),
      svg.path([a("d", "M3 9v1")]),
    ],
  )
}


pub fn square_dashed_mouse_pointer(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M12.034 12.681a.498.498 0 0 1 .647-.647l9 3.5a.5.5 0 0 1-.033.943l-3.444 1.068a1 1 0 0 0-.66.66l-1.067 3.443a.5.5 0 0 1-.943.033z",
        ),
      ]),
      svg.path([a("d", "M5 3a2 2 0 0 0-2 2")]),
      svg.path([a("d", "M19 3a2 2 0 0 1 2 2")]),
      svg.path([a("d", "M5 21a2 2 0 0 1-2-2")]),
      svg.path([a("d", "M9 3h1")]),
      svg.path([a("d", "M9 21h2")]),
      svg.path([a("d", "M14 3h1")]),
      svg.path([a("d", "M3 9v1")]),
      svg.path([a("d", "M21 9v2")]),
      svg.path([a("d", "M3 14v1")]),
    ],
  )
}


pub fn square_dashed_text(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M14 21h1")]),
      svg.path([a("d", "M14 3h1")]),
      svg.path([a("d", "M19 3a2 2 0 0 1 2 2")]),
      svg.path([a("d", "M21 14v1")]),
      svg.path([a("d", "M21 19a2 2 0 0 1-2 2")]),
      svg.path([a("d", "M21 9v1")]),
      svg.path([a("d", "M3 14v1")]),
      svg.path([a("d", "M3 9v1")]),
      svg.path([a("d", "M5 21a2 2 0 0 1-2-2")]),
      svg.path([a("d", "M5 3a2 2 0 0 0-2 2")]),
      svg.path([a("d", "M7 12h10")]),
      svg.path([a("d", "M7 16h6")]),
      svg.path([a("d", "M7 8h8")]),
      svg.path([a("d", "M9 21h1")]),
      svg.path([a("d", "M9 3h1")]),
    ],
  )
}


pub fn square_dashed_top_solid(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M14 21h1")]),
      svg.path([a("d", "M21 14v1")]),
      svg.path([a("d", "M21 19a2 2 0 0 1-2 2")]),
      svg.path([a("d", "M21 9v1")]),
      svg.path([a("d", "M3 14v1")]),
      svg.path([a("d", "M3 5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2")]),
      svg.path([a("d", "M3 9v1")]),
      svg.path([a("d", "M5 21a2 2 0 0 1-2-2")]),
      svg.path([a("d", "M9 21h1")]),
    ],
  )
}


pub fn square_divide(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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


pub fn square_dot(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("r", "1"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn square_equal(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M7 10h10")]),
      svg.path([a("d", "M7 14h10")]),
    ],
  )
}


pub fn square_function(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M9 17c2 0 2.8-1 2.8-2.8V10c0-2 1-3.3 3.2-3")]),
      svg.path([a("d", "M9 11.2h5.7")]),
    ],
  )
}


pub fn square_kanban(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M8 7v7")]),
      svg.path([a("d", "M12 7v4")]),
      svg.path([a("d", "M16 7v9")]),
    ],
  )
}


pub fn square_library(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M7 7v10")]),
      svg.path([a("d", "M11 7v10")]),
      svg.path([a("d", "m15 7 2 10")]),
    ],
  )
}


pub fn square_m(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M8 16V8.5a.5.5 0 0 1 .9-.3l2.7 3.599a.5.5 0 0 0 .8 0l2.7-3.6a.5.5 0 0 1 .9.3V16",
        ),
      ]),
      svg.rect([
        a("rx", "2"),
        a("height", "18"),
        a("width", "18"),
        a("y", "3"),
        a("x", "3"),
      ]),
    ],
  )
}


pub fn square_menu(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M7 8h10")]),
      svg.path([a("d", "M7 12h10")]),
      svg.path([a("d", "M7 16h10")]),
    ],
  )
}


pub fn square_minus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M8 12h8")]),
    ],
  )
}


pub fn square_mouse_pointer(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M12.034 12.681a.498.498 0 0 1 .647-.647l9 3.5a.5.5 0 0 1-.033.943l-3.444 1.068a1 1 0 0 0-.66.66l-1.067 3.443a.5.5 0 0 1-.943.033z",
        ),
      ]),
      svg.path([
        a("d", "M21 11V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h6"),
      ]),
    ],
  )
}


pub fn square_parking(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M9 17V7h4a3 3 0 0 1 0 6H9")]),
    ],
  )
}


pub fn square_parking_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M3.6 3.6A2 2 0 0 1 5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1-.59 1.41"),
      ]),
      svg.path([a("d", "M3 8.7V19a2 2 0 0 0 2 2h10.3")]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([a("d", "M13 13a3 3 0 1 0 0-6H9v2")]),
      svg.path([a("d", "M9 17v-2.3")]),
    ],
  )
}


pub fn square_pause(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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


pub fn square_pen(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M12 3H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"),
      ]),
      svg.path([
        a(
          "d",
          "M18.375 2.625a1 1 0 0 1 3 3l-9.013 9.014a2 2 0 0 1-.853.505l-2.873.84a.5.5 0 0 1-.62-.62l.84-2.873a2 2 0 0 1 .506-.852z",
        ),
      ]),
    ],
  )
}


pub fn square_percent(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "m15 9-6 6")]),
      svg.path([a("d", "M9 9h.01")]),
      svg.path([a("d", "M15 15h.01")]),
    ],
  )
}


pub fn square_pi(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M7 7h10")]),
      svg.path([a("d", "M10 7v10")]),
      svg.path([a("d", "M16 17a2 2 0 0 1-2-2V7")]),
    ],
  )
}


pub fn square_pilcrow(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M12 12H9.5a2.5 2.5 0 0 1 0-5H17")]),
      svg.path([a("d", "M12 7v10")]),
      svg.path([a("d", "M16 7v10")]),
    ],
  )
}


pub fn square_play(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("height", "18"),
        a("width", "18"),
        a("y", "3"),
        a("x", "3"),
      ]),
      svg.path([
        a(
          "d",
          "M9 9.003a1 1 0 0 1 1.517-.859l4.997 2.997a1 1 0 0 1 0 1.718l-4.997 2.997A1 1 0 0 1 9 14.996z",
        ),
      ]),
    ],
  )
}


pub fn square_plus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M8 12h8")]),
      svg.path([a("d", "M12 8v8")]),
    ],
  )
}


pub fn square_power(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 7v4")]),
      svg.path([a("d", "M7.998 9.003a5 5 0 1 0 8-.005")]),
      svg.rect([
        a("rx", "2"),
        a("height", "18"),
        a("width", "18"),
        a("y", "3"),
        a("x", "3"),
      ]),
    ],
  )
}


pub fn square_radical(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M7 12h2l2 5 2-10h4")]),
      svg.rect([
        a("rx", "2"),
        a("height", "18"),
        a("width", "18"),
        a("y", "3"),
        a("x", "3"),
      ]),
    ],
  )
}


pub fn square_round_corner(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M21 11a8 8 0 0 0-8-8")]),
      svg.path([
        a("d", "M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"),
      ]),
    ],
  )
}


pub fn square_scissors(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("r", "1.5"),
        a("cy", "8.5"),
        a("cx", "8.5"),
      ]),
      svg.line([
        a("y2", "12"),
        a("x2", "12"),
        a("y1", "9.56066"),
        a("x1", "9.56066"),
      ]),
      svg.line([
        a("y2", "14.82"),
        a("x2", "14.82"),
        a("y1", "17"),
        a("x1", "17"),
      ]),
      svg.circle([
        a("r", "1.5"),
        a("cy", "15.5"),
        a("cx", "8.5"),
      ]),
      svg.line([
        a("y2", "7"),
        a("x2", "17"),
        a("y1", "14.43934"),
        a("x1", "9.56066"),
      ]),
    ],
  )
}


pub fn square_sigma(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M16 8.9V7H8l4 5-4 5h8v-1.9")]),
    ],
  )
}


pub fn square_slash(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.line([
        a("y2", "9"),
        a("y1", "15"),
        a("x2", "15"),
        a("x1", "9"),
      ]),
    ],
  )
}


pub fn square_split_horizontal(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M8 19H5c-1 0-2-1-2-2V7c0-1 1-2 2-2h3")]),
      svg.path([a("d", "M16 5h3c1 0 2 1 2 2v10c0 1-1 2-2 2h-3")]),
      svg.line([
        a("y2", "20"),
        a("y1", "4"),
        a("x2", "12"),
        a("x1", "12"),
      ]),
    ],
  )
}


pub fn square_split_vertical(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M5 8V5c0-1 1-2 2-2h10c1 0 2 1 2 2v3")]),
      svg.path([a("d", "M19 16v3c0 1-1 2-2 2H7c-1 0-2-1-2-2v-3")]),
      svg.line([
        a("y2", "12"),
        a("y1", "12"),
        a("x2", "20"),
        a("x1", "4"),
      ]),
    ],
  )
}


pub fn square_square(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("height", "18"),
        a("width", "18"),
        a("y", "3"),
        a("x", "3"),
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


pub fn square_stack(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M4 10c-1.1 0-2-.9-2-2V4c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2"),
      ]),
      svg.path([
        a("d", "M10 16c-1.1 0-2-.9-2-2v-4c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("y", "14"),
        a("x", "14"),
        a("height", "8"),
        a("width", "8"),
      ]),
    ],
  )
}


pub fn square_star(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M11.035 7.69a1 1 0 0 1 1.909.024l.737 1.452a1 1 0 0 0 .737.535l1.634.256a1 1 0 0 1 .588 1.806l-1.172 1.168a1 1 0 0 0-.282.866l.259 1.613a1 1 0 0 1-1.541 1.134l-1.465-.75a1 1 0 0 0-.912 0l-1.465.75a1 1 0 0 1-1.539-1.133l.258-1.613a1 1 0 0 0-.282-.866l-1.156-1.153a1 1 0 0 1 .572-1.822l1.633-.256a1 1 0 0 0 .737-.535z",
        ),
      ]),
      svg.rect([
        a("rx", "2"),
        a("height", "18"),
        a("width", "18"),
        a("y", "3"),
        a("x", "3"),
      ]),
    ],
  )
}


pub fn square_stop(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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


pub fn square_terminal(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m7 11 2-2-2-2")]),
      svg.path([a("d", "M11 13h4")]),
      svg.rect([
        a("ry", "2"),
        a("rx", "2"),
        a("y", "3"),
        a("x", "3"),
        a("height", "18"),
        a("width", "18"),
      ]),
    ],
  )
}


pub fn square_user(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("r", "3"),
        a("cy", "10"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M7 21v-2a2 2 0 0 1 2-2h6a2 2 0 0 1 2 2v2")]),
    ],
  )
}


pub fn square_user_round(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M18 21a6 6 0 0 0-12 0")]),
      svg.circle([
        a("r", "4"),
        a("cy", "11"),
        a("cx", "12"),
      ]),
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


pub fn square_x(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "m15 9-6 6")]),
      svg.path([a("d", "m9 9 6 6")]),
    ],
  )
}


pub fn squares_exclude(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M16 12v2a2 2 0 0 1-2 2H9a1 1 0 0 0-1 1v3a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V10a2 2 0 0 0-2-2h0",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M4 16a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v3a1 1 0 0 1-1 1h-5a2 2 0 0 0-2 2v2",
        ),
      ]),
    ],
  )
}


pub fn squares_intersect(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 22a2 2 0 0 1-2-2")]),
      svg.path([a("d", "M14 2a2 2 0 0 1 2 2")]),
      svg.path([a("d", "M16 22h-2")]),
      svg.path([a("d", "M2 10V8")]),
      svg.path([a("d", "M2 4a2 2 0 0 1 2-2")]),
      svg.path([a("d", "M20 8a2 2 0 0 1 2 2")]),
      svg.path([a("d", "M22 14v2")]),
      svg.path([a("d", "M22 20a2 2 0 0 1-2 2")]),
      svg.path([a("d", "M4 16a2 2 0 0 1-2-2")]),
      svg.path([
        a(
          "d",
          "M8 10a2 2 0 0 1 2-2h5a1 1 0 0 1 1 1v5a2 2 0 0 1-2 2H9a1 1 0 0 1-1-1z",
        ),
      ]),
      svg.path([a("d", "M8 2h2")]),
    ],
  )
}


pub fn squares_subtract(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 22a2 2 0 0 1-2-2")]),
      svg.path([a("d", "M16 22h-2")]),
      svg.path([
        a(
          "d",
          "M16 4a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h3a1 1 0 0 0 1-1v-5a2 2 0 0 1 2-2h5a1 1 0 0 0 1-1z",
        ),
      ]),
      svg.path([a("d", "M20 8a2 2 0 0 1 2 2")]),
      svg.path([a("d", "M22 14v2")]),
      svg.path([a("d", "M22 20a2 2 0 0 1-2 2")]),
    ],
  )
}


pub fn squares_unite(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M4 16a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v3a1 1 0 0 0 1 1h3a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H10a2 2 0 0 1-2-2v-3a1 1 0 0 0-1-1z",
        ),
      ]),
    ],
  )
}


pub fn squircle(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M12 3c7.2 0 9 1.8 9 9s-1.8 9-9 9-9-1.8-9-9 1.8-9 9-9"),
      ]),
    ],
  )
}


pub fn squircle_dashed(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M13.77 3.043a34 34 0 0 0-3.54 0")]),
      svg.path([a("d", "M13.771 20.956a33 33 0 0 1-3.541.001")]),
      svg.path([a("d", "M20.18 17.74c-.51 1.15-1.29 1.93-2.439 2.44")]),
      svg.path([
        a("d", "M20.18 6.259c-.51-1.148-1.291-1.929-2.44-2.438"),
      ]),
      svg.path([a("d", "M20.957 10.23a33 33 0 0 1 0 3.54")]),
      svg.path([a("d", "M3.043 10.23a34 34 0 0 0 .001 3.541")]),
      svg.path([a("d", "M6.26 20.179c-1.15-.508-1.93-1.29-2.44-2.438")]),
      svg.path([a("d", "M6.26 3.82c-1.149.51-1.93 1.291-2.44 2.44")]),
    ],
  )
}


pub fn squirrel(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M15.236 22a3 3 0 0 0-2.2-5")]),
      svg.path([
        a("d", "M16 20a3 3 0 0 1 3-3h1a2 2 0 0 0 2-2v-2a4 4 0 0 0-4-4V4"),
      ]),
      svg.path([a("d", "M18 13h.01")]),
      svg.path([
        a(
          "d",
          "M18 6a4 4 0 0 0-4 4 7 7 0 0 0-7 7c0-5 4-5 4-10.5a4.5 4.5 0 1 0-9 0 2.5 2.5 0 0 0 5 0C7 10 3 11 3 17c0 2.8 2.2 5 5 5h10",
        ),
      ]),
    ],
  )
}


pub fn stamp(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M14 13V8.5C14 7 15 7 15 5a3 3 0 0 0-6 0c0 2 1 2 1 3.5V13"),
      ]),
      svg.path([
        a(
          "d",
          "M20 15.5a2.5 2.5 0 0 0-2.5-2.5h-11A2.5 2.5 0 0 0 4 15.5V17a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1z",
        ),
      ]),
      svg.path([a("d", "M5 22h14")]),
    ],
  )
}


pub fn star(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M11.525 2.295a.53.53 0 0 1 .95 0l2.31 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1 .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z",
        ),
      ]),
    ],
  )
}


pub fn star_half(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M12 18.338a2.1 2.1 0 0 0-.987.244L6.396 21.01a.53.53 0 0 1-.77-.56l.881-5.139a2.12 2.12 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1 .294-.906l5.165-.755a2.12 2.12 0 0 0 1.597-1.16l2.309-4.679A.53.53 0 0 1 12 2",
        ),
      ]),
    ],
  )
}


pub fn star_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "m10.344 4.688 1.181-2.393a.53.53 0 0 1 .95 0l2.31 4.679a2.12 2.12 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.237 3.152",
        ),
      ]),
      svg.path([
        a(
          "d",
          "m17.945 17.945.43 2.505a.53.53 0 0 1-.771.56l-4.618-2.428a2.12 2.12 0 0 0-1.973 0L6.396 21.01a.53.53 0 0 1-.77-.56l.881-5.139a2.12 2.12 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1 .294-.906l5.165-.755a8 8 0 0 0 .4-.099",
        ),
      ]),
      svg.path([a("d", "m2 2 20 20")]),
    ],
  )
}


pub fn step_back(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M13.971 4.285A2 2 0 0 1 17 6v12a2 2 0 0 1-3.029 1.715l-9.997-5.998a2 2 0 0 1-.003-3.432z",
        ),
      ]),
      svg.path([a("d", "M21 20V4")]),
    ],
  )
}


pub fn step_forward(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M10.029 4.285A2 2 0 0 0 7 6v12a2 2 0 0 0 3.029 1.715l9.997-5.998a2 2 0 0 0 .003-3.432z",
        ),
      ]),
      svg.path([a("d", "M3 4v16")]),
    ],
  )
}


pub fn stethoscope(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M11 2v2")]),
      svg.path([a("d", "M5 2v2")]),
      svg.path([
        a("d", "M5 3H4a2 2 0 0 0-2 2v4a6 6 0 0 0 12 0V5a2 2 0 0 0-2-2h-1"),
      ]),
      svg.path([a("d", "M8 15a6 6 0 0 0 12 0v-3")]),
      svg.circle([
        a("r", "2"),
        a("cy", "10"),
        a("cx", "20"),
      ]),
    ],
  )
}


pub fn sticker(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M21 9a2.4 2.4 0 0 0-.706-1.706l-3.588-3.588A2.4 2.4 0 0 0 15 3H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2z",
        ),
      ]),
      svg.path([a("d", "M15 3v5a1 1 0 0 0 1 1h5")]),
      svg.path([a("d", "M8 13h.01")]),
      svg.path([a("d", "M16 13h.01")]),
      svg.path([a("d", "M10 16s.8 1 2 1c1.3 0 2-1 2-1")]),
    ],
  )
}


pub fn sticky_note(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M21 9a2.4 2.4 0 0 0-.706-1.706l-3.588-3.588A2.4 2.4 0 0 0 15 3H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2z",
        ),
      ]),
      svg.path([a("d", "M15 3v5a1 1 0 0 0 1 1h5")]),
    ],
  )
}


pub fn stone(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M11.264 2.205A4 4 0 0 0 6.42 4.211l-4 8a4 4 0 0 0 1.359 5.117l6 4a4 4 0 0 0 4.438 0l6-4a4 4 0 0 0 1.576-4.592l-2-6a4 4 0 0 0-2.53-2.53z",
        ),
      ]),
      svg.path([a("d", "M11.99 22 14 12l7.822 3.184")]),
      svg.path([a("d", "M14 12 8.47 2.302")]),
    ],
  )
}


pub fn store(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M15 21v-5a1 1 0 0 0-1-1h-4a1 1 0 0 0-1 1v5")]),
      svg.path([
        a(
          "d",
          "M17.774 10.31a1.12 1.12 0 0 0-1.549 0 2.5 2.5 0 0 1-3.451 0 1.12 1.12 0 0 0-1.548 0 2.5 2.5 0 0 1-3.452 0 1.12 1.12 0 0 0-1.549 0 2.5 2.5 0 0 1-3.77-3.248l2.889-4.184A2 2 0 0 1 7 2h10a2 2 0 0 1 1.653.873l2.895 4.192a2.5 2.5 0 0 1-3.774 3.244",
        ),
      ]),
      svg.path([
        a("d", "M4 10.95V19a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-8.05"),
      ]),
    ],
  )
}


pub fn stretch_horizontal(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("width", "20"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("y", "14"),
        a("x", "2"),
        a("height", "6"),
        a("width", "20"),
      ]),
    ],
  )
}


pub fn stretch_vertical(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("width", "6"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("y", "2"),
        a("x", "14"),
        a("height", "20"),
        a("width", "6"),
      ]),
    ],
  )
}


pub fn strikethrough(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M16 4H9a3 3 0 0 0-2.83 4")]),
      svg.path([a("d", "M14 12a4 4 0 0 1 0 8H6")]),
      svg.line([
        a("y2", "12"),
        a("y1", "12"),
        a("x2", "20"),
        a("x1", "4"),
      ]),
    ],
  )
}


pub fn subscript(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m4 5 8 8")]),
      svg.path([a("d", "m12 5-8 8")]),
      svg.path([
        a(
          "d",
          "M20 19h-4c0-1.5.44-2 1.5-2.5S20 15.33 20 14c0-.47-.17-.93-.48-1.29a2.11 2.11 0 0 0-2.62-.44c-.42.24-.74.62-.9 1.07",
        ),
      ]),
    ],
  )
}


pub fn sun(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M12 2v2")]),
      svg.path([a("d", "M12 20v2")]),
      svg.path([a("d", "m4.93 4.93 1.41 1.41")]),
      svg.path([a("d", "m17.66 17.66 1.41 1.41")]),
      svg.path([a("d", "M2 12h2")]),
      svg.path([a("d", "M20 12h2")]),
      svg.path([a("d", "m6.34 17.66-1.41 1.41")]),
      svg.path([a("d", "m19.07 4.93-1.41 1.41")]),
    ],
  )
}


pub fn sun_dim(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M12 4h.01")]),
      svg.path([a("d", "M20 12h.01")]),
      svg.path([a("d", "M12 20h.01")]),
      svg.path([a("d", "M4 12h.01")]),
      svg.path([a("d", "M17.657 6.343h.01")]),
      svg.path([a("d", "M17.657 17.657h.01")]),
      svg.path([a("d", "M6.343 17.657h.01")]),
      svg.path([a("d", "M6.343 6.343h.01")]),
    ],
  )
}


pub fn sun_medium(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M12 3v1")]),
      svg.path([a("d", "M12 20v1")]),
      svg.path([a("d", "M3 12h1")]),
      svg.path([a("d", "M20 12h1")]),
      svg.path([a("d", "m18.364 5.636-.707.707")]),
      svg.path([a("d", "m6.343 17.657-.707.707")]),
      svg.path([a("d", "m5.636 5.636.707.707")]),
      svg.path([a("d", "m17.657 17.657.707.707")]),
    ],
  )
}


pub fn sun_moon(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a(
          "d",
          "M14.837 16.385a6 6 0 1 1-7.223-7.222c.624-.147.97.66.715 1.248a4 4 0 0 0 5.26 5.259c.589-.255 1.396.09 1.248.715",
        ),
      ]),
      svg.path([a("d", "M16 12a4 4 0 0 0-4-4")]),
      svg.path([a("d", "m19 5-1.256 1.256")]),
      svg.path([a("d", "M20 12h2")]),
    ],
  )
}


pub fn sun_snow(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 21v-1")]),
      svg.path([a("d", "M10 4V3")]),
      svg.path([a("d", "M10 9a3 3 0 0 0 0 6")]),
      svg.path([a("d", "m14 20 1.25-2.5L18 18")]),
      svg.path([a("d", "m14 4 1.25 2.5L18 6")]),
      svg.path([a("d", "m17 21-3-6 1.5-3H22")]),
      svg.path([a("d", "m17 3-3 6 1.5 3")]),
      svg.path([a("d", "M2 12h1")]),
      svg.path([a("d", "m20 10-1.5 2 1.5 2")]),
      svg.path([a("d", "m3.64 18.36.7-.7")]),
      svg.path([a("d", "m4.34 6.34-.7-.7")]),
    ],
  )
}


pub fn sunrise(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 2v8")]),
      svg.path([a("d", "m4.93 10.93 1.41 1.41")]),
      svg.path([a("d", "M2 18h2")]),
      svg.path([a("d", "M20 18h2")]),
      svg.path([a("d", "m19.07 10.93-1.41 1.41")]),
      svg.path([a("d", "M22 22H2")]),
      svg.path([a("d", "m8 6 4-4 4 4")]),
      svg.path([a("d", "M16 18a4 4 0 0 0-8 0")]),
    ],
  )
}


pub fn sunset(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 10V2")]),
      svg.path([a("d", "m4.93 10.93 1.41 1.41")]),
      svg.path([a("d", "M2 18h2")]),
      svg.path([a("d", "M20 18h2")]),
      svg.path([a("d", "m19.07 10.93-1.41 1.41")]),
      svg.path([a("d", "M22 22H2")]),
      svg.path([a("d", "m16 6-4 4-4-4")]),
      svg.path([a("d", "M16 18a4 4 0 0 0-8 0")]),
    ],
  )
}


pub fn superscript(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m4 19 8-8")]),
      svg.path([a("d", "m12 19-8-8")]),
      svg.path([
        a(
          "d",
          "M20 12h-4c0-1.5.442-2 1.5-2.5S20 8.334 20 7.002c0-.472-.17-.93-.484-1.29a2.105 2.105 0 0 0-2.617-.436c-.42.239-.738.614-.899 1.06",
        ),
      ]),
    ],
  )
}


pub fn swatch_book(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M11 17a4 4 0 0 1-8 0V5a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2Z"),
      ]),
      svg.path([a("d", "M16.7 13H19a2 2 0 0 1 2 2v4a2 2 0 0 1-2 2H7")]),
      svg.path([a("d", "M 7 17h.01")]),
      svg.path([
        a(
          "d",
          "m11 8 2.3-2.3a2.4 2.4 0 0 1 3.404.004L18.6 7.6a2.4 2.4 0 0 1 .026 3.434L9.9 19.8",
        ),
      ]),
    ],
  )
}


pub fn swiss_franc(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 21V3h8")]),
      svg.path([a("d", "M6 16h9")]),
      svg.path([a("d", "M10 9.5h7")]),
    ],
  )
}


pub fn switch_camera(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M11 19H4a2 2 0 0 1-2-2V7a2 2 0 0 1 2-2h5")]),
      svg.path([a("d", "M13 5h7a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-5")]),
      svg.circle([
        a("r", "3"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "m18 22-3-3 3-3")]),
      svg.path([a("d", "m6 2 3 3-3 3")]),
    ],
  )
}


pub fn sword(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m11 19-6-6")]),
      svg.path([a("d", "m5 21-2-2")]),
      svg.path([a("d", "m8 16-4 4")]),
      svg.path([a("d", "M9.5 17.5 21 6V3h-3L6.5 14.5")]),
    ],
  )
}


pub fn swords(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.polyline([a("points", "14.5 17.5 3 6 3 3 6 3 17.5 14.5")]),
      svg.line([
        a("y2", "13"),
        a("y1", "19"),
        a("x2", "19"),
        a("x1", "13"),
      ]),
      svg.line([
        a("y2", "20"),
        a("y1", "16"),
        a("x2", "20"),
        a("x1", "16"),
      ]),
      svg.line([
        a("y2", "19"),
        a("y1", "21"),
        a("x2", "21"),
        a("x1", "19"),
      ]),
      svg.polyline([a("points", "14.5 6.5 18 3 21 3 21 6 17.5 9.5")]),
      svg.line([
        a("y2", "18"),
        a("y1", "14"),
        a("x2", "9"),
        a("x1", "5"),
      ]),
      svg.line([
        a("y2", "20"),
        a("y1", "17"),
        a("x2", "4"),
        a("x1", "7"),
      ]),
      svg.line([
        a("y2", "21"),
        a("y1", "19"),
        a("x2", "5"),
        a("x1", "3"),
      ]),
    ],
  )
}


pub fn syringe(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m18 2 4 4")]),
      svg.path([a("d", "m17 7 3-3")]),
      svg.path([
        a("d", "M19 9 8.7 19.3c-1 1-2.5 1-3.4 0l-.6-.6c-1-1-1-2.5 0-3.4L15 5"),
      ]),
      svg.path([a("d", "m9 11 4 4")]),
      svg.path([a("d", "m5 19-3 3")]),
      svg.path([a("d", "m14 4 6 6")]),
    ],
  )
}
