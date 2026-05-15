import lustre/attribute.{type Attribute, attribute as a}
import lustre/element/svg

pub fn ham(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M13.144 21.144A7.274 10.445 45 1 0 2.856 10.856"),
      ]),
      svg.path([
        a(
          "d",
          "M13.144 21.144A7.274 4.365 45 0 0 2.856 10.856a7.274 4.365 45 0 0 10.288 10.288",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M16.565 10.435 18.6 8.4a2.501 2.501 0 1 0 1.65-4.65 2.5 2.5 0 1 0-4.66 1.66l-2.024 2.025",
        ),
      ]),
      svg.path([a("d", "m8.5 16.5-1-1")]),
    ],
  )
}


pub fn hamburger(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 16H4a2 2 0 1 1 0-4h16a2 2 0 1 1 0 4h-4.25")]),
      svg.path([
        a("d", "M5 12a2 2 0 0 1-2-2 9 7 0 0 1 18 0 2 2 0 0 1-2 2"),
      ]),
      svg.path([
        a(
          "d",
          "M5 16a2 2 0 0 0-2 2 3 3 0 0 0 3 3h12a3 3 0 0 0 3-3 2 2 0 0 0-2-2q0 0 0 0",
        ),
      ]),
      svg.path([a("d", "m6.67 12 6.13 4.6a2 2 0 0 0 2.8-.4l3.15-4.2")]),
    ],
  )
}


pub fn hammer(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m15 12-9.373 9.373a1 1 0 0 1-3.001-3L12 9")]),
      svg.path([a("d", "m18 15 4-4")]),
      svg.path([
        a(
          "d",
          "m21.5 11.5-1.914-1.914A2 2 0 0 1 19 8.172v-.344a2 2 0 0 0-.586-1.414l-1.657-1.657A6 6 0 0 0 12.516 3H9l1.243 1.243A6 6 0 0 1 12 8.485V10l2 2h1.172a2 2 0 0 1 1.414.586L18.5 14.5",
        ),
      ]),
    ],
  )
}


pub fn hand(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M18 11V6a2 2 0 0 0-2-2a2 2 0 0 0-2 2")]),
      svg.path([a("d", "M14 10V4a2 2 0 0 0-2-2a2 2 0 0 0-2 2v2")]),
      svg.path([a("d", "M10 10.5V6a2 2 0 0 0-2-2a2 2 0 0 0-2 2v8")]),
      svg.path([
        a(
          "d",
          "M18 8a2 2 0 1 1 4 0v6a8 8 0 0 1-8 8h-2c-2.8 0-4.5-.86-5.99-2.34l-3.6-3.6a2 2 0 0 1 2.83-2.82L7 15",
        ),
      ]),
    ],
  )
}


pub fn hand_coins(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M11 15h2a2 2 0 1 0 0-4h-3c-.6 0-1.1.2-1.4.6L3 17"),
      ]),
      svg.path([
        a(
          "d",
          "m7 21 1.6-1.4c.3-.4.8-.6 1.4-.6h4c1.1 0 2.1-.4 2.8-1.2l4.6-4.4a2 2 0 0 0-2.75-2.91l-4.2 3.9",
        ),
      ]),
      svg.path([a("d", "m2 16 6 6")]),
      svg.circle([
        a("r", "2.9"),
        a("cy", "9"),
        a("cx", "16"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "5"),
        a("cx", "6"),
      ]),
    ],
  )
}


pub fn hand_fist(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M12.035 17.012a3 3 0 0 0-3-3l-.311-.002a.72.72 0 0 1-.505-1.229l1.195-1.195A2 2 0 0 1 10.828 11H12a2 2 0 0 0 0-4H9.243a3 3 0 0 0-2.122.879l-2.707 2.707A4.83 4.83 0 0 0 3 14a8 8 0 0 0 8 8h2a8 8 0 0 0 8-8V7a2 2 0 1 0-4 0v2a2 2 0 1 0 4 0",
        ),
      ]),
      svg.path([a("d", "M13.888 9.662A2 2 0 0 0 17 8V5A2 2 0 1 0 13 5")]),
      svg.path([a("d", "M9 5A2 2 0 1 0 5 5V10")]),
      svg.path([a("d", "M9 7V4A2 2 0 1 1 13 4V7.268")]),
    ],
  )
}


pub fn hand_grab(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M18 11.5V9a2 2 0 0 0-2-2a2 2 0 0 0-2 2v1.4")]),
      svg.path([a("d", "M14 10V8a2 2 0 0 0-2-2a2 2 0 0 0-2 2v2")]),
      svg.path([a("d", "M10 9.9V9a2 2 0 0 0-2-2a2 2 0 0 0-2 2v5")]),
      svg.path([a("d", "M6 14a2 2 0 0 0-2-2a2 2 0 0 0-2 2")]),
      svg.path([
        a(
          "d",
          "M18 11a2 2 0 1 1 4 0v3a8 8 0 0 1-8 8h-4a8 8 0 0 1-8-8 2 2 0 1 1 4 0",
        ),
      ]),
    ],
  )
}


pub fn hand_heart(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M11 14h2a2 2 0 0 0 0-4h-3c-.6 0-1.1.2-1.4.6L3 16"),
      ]),
      svg.path([
        a(
          "d",
          "m14.45 13.39 5.05-4.694C20.196 8 21 6.85 21 5.75a2.75 2.75 0 0 0-4.797-1.837.276.276 0 0 1-.406 0A2.75 2.75 0 0 0 11 5.75c0 1.2.802 2.248 1.5 2.946L16 11.95",
        ),
      ]),
      svg.path([a("d", "m2 15 6 6")]),
      svg.path([
        a(
          "d",
          "m7 20 1.6-1.4c.3-.4.8-.6 1.4-.6h4c1.1 0 2.1-.4 2.8-1.2l4.6-4.4a1 1 0 0 0-2.75-2.91",
        ),
      ]),
    ],
  )
}


pub fn hand_helping(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M11 12h2a2 2 0 1 0 0-4h-3c-.6 0-1.1.2-1.4.6L3 14"),
      ]),
      svg.path([
        a(
          "d",
          "m7 18 1.6-1.4c.3-.4.8-.6 1.4-.6h4c1.1 0 2.1-.4 2.8-1.2l4.6-4.4a2 2 0 0 0-2.75-2.91l-4.2 3.9",
        ),
      ]),
      svg.path([a("d", "m2 13 6 6")]),
    ],
  )
}


pub fn hand_metal(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M18 12.5V10a2 2 0 0 0-2-2a2 2 0 0 0-2 2v1.4")]),
      svg.path([a("d", "M14 11V9a2 2 0 1 0-4 0v2")]),
      svg.path([a("d", "M10 10.5V5a2 2 0 1 0-4 0v9")]),
      svg.path([
        a(
          "d",
          "m7 15-1.76-1.76a2 2 0 0 0-2.83 2.82l3.6 3.6C7.5 21.14 9.2 22 12 22h2a8 8 0 0 0 8-8V7a2 2 0 1 0-4 0v5",
        ),
      ]),
    ],
  )
}


pub fn hand_platter(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 3V2")]),
      svg.path([
        a(
          "d",
          "m15.4 17.4 3.2-2.8a2 2 0 1 1 2.8 2.9l-3.6 3.3c-.7.8-1.7 1.2-2.8 1.2h-4c-1.1 0-2.1-.4-2.8-1.2l-1.302-1.464A1 1 0 0 0 6.151 19H5",
        ),
      ]),
      svg.path([a("d", "M2 14h12a2 2 0 0 1 0 4h-2")]),
      svg.path([a("d", "M4 10h16")]),
      svg.path([a("d", "M5 10a7 7 0 0 1 14 0")]),
      svg.path([a("d", "M5 14v6a1 1 0 0 1-1 1H2")]),
    ],
  )
}


pub fn handbag(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M2.048 18.566A2 2 0 0 0 4 21h16a2 2 0 0 0 1.952-2.434l-2-9A2 2 0 0 0 18 8H6a2 2 0 0 0-1.952 1.566z",
        ),
      ]),
      svg.path([a("d", "M8 11V6a4 4 0 0 1 8 0v5")]),
    ],
  )
}


pub fn handshake(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m11 17 2 2a1 1 0 1 0 3-3")]),
      svg.path([
        a(
          "d",
          "m14 14 2.5 2.5a1 1 0 1 0 3-3l-3.88-3.88a3 3 0 0 0-4.24 0l-.88.88a1 1 0 1 1-3-3l2.81-2.81a5.79 5.79 0 0 1 7.06-.87l.47.28a2 2 0 0 0 1.42.25L21 4",
        ),
      ]),
      svg.path([a("d", "m21 3 1 11h-2")]),
      svg.path([a("d", "M3 3 2 14l6.5 6.5a1 1 0 1 0 3-3")]),
      svg.path([a("d", "M3 4h8")]),
    ],
  )
}


pub fn hard_drive(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 16h.01")]),
      svg.path([
        a(
          "d",
          "M2.212 11.577a2 2 0 0 0-.212.896V18a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-5.527a2 2 0 0 0-.212-.896L18.55 5.11A2 2 0 0 0 16.76 4H7.24a2 2 0 0 0-1.79 1.11z",
        ),
      ]),
      svg.path([a("d", "M21.946 12.013H2.054")]),
      svg.path([a("d", "M6 16h.01")]),
    ],
  )
}


pub fn hard_drive_download(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "m16 6-4 4-4-4")]),
      svg.rect([
        a("rx", "2"),
        a("y", "14"),
        a("x", "2"),
        a("height", "8"),
        a("width", "20"),
      ]),
      svg.path([a("d", "M6 18h.01")]),
      svg.path([a("d", "M10 18h.01")]),
    ],
  )
}


pub fn hard_drive_upload(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m16 6-4-4-4 4")]),
      svg.path([a("d", "M12 2v8")]),
      svg.rect([
        a("rx", "2"),
        a("y", "14"),
        a("x", "2"),
        a("height", "8"),
        a("width", "20"),
      ]),
      svg.path([a("d", "M6 18h.01")]),
      svg.path([a("d", "M10 18h.01")]),
    ],
  )
}


pub fn hard_hat(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 10V5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v5")]),
      svg.path([a("d", "M14 6a6 6 0 0 1 6 6v3")]),
      svg.path([a("d", "M4 15v-3a6 6 0 0 1 6-6")]),
      svg.rect([
        a("rx", "1"),
        a("height", "4"),
        a("width", "20"),
        a("y", "15"),
        a("x", "2"),
      ]),
    ],
  )
}


pub fn hash(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("y2", "9"),
        a("y1", "9"),
        a("x2", "20"),
        a("x1", "4"),
      ]),
      svg.line([
        a("y2", "15"),
        a("y1", "15"),
        a("x2", "20"),
        a("x1", "4"),
      ]),
      svg.line([
        a("y2", "21"),
        a("y1", "3"),
        a("x2", "8"),
        a("x1", "10"),
      ]),
      svg.line([
        a("y2", "21"),
        a("y1", "3"),
        a("x2", "14"),
        a("x1", "16"),
      ]),
    ],
  )
}


pub fn hat_glasses(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M14 18a2 2 0 0 0-4 0")]),
      svg.path([
        a(
          "d",
          "m19 11-2.11-6.657a2 2 0 0 0-2.752-1.148l-1.276.61A2 2 0 0 1 12 4H8.5a2 2 0 0 0-1.925 1.456L5 11",
        ),
      ]),
      svg.path([a("d", "M2 11h20")]),
      svg.circle([
        a("r", "3"),
        a("cy", "18"),
        a("cx", "17"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "18"),
        a("cx", "7"),
      ]),
    ],
  )
}


pub fn haze(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m5.2 6.2 1.4 1.4")]),
      svg.path([a("d", "M2 13h2")]),
      svg.path([a("d", "M20 13h2")]),
      svg.path([a("d", "m17.4 7.6 1.4-1.4")]),
      svg.path([a("d", "M22 17H2")]),
      svg.path([a("d", "M22 21H2")]),
      svg.path([a("d", "M16 13a4 4 0 0 0-8 0")]),
      svg.path([a("d", "M12 5V2.5")]),
    ],
  )
}


pub fn hd(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 12H6")]),
      svg.path([a("d", "M10 15V9")]),
      svg.path([
        a(
          "d",
          "M14 14.5a.5.5 0 0 0 .5.5h1a2.5 2.5 0 0 0 2.5-2.5v-1A2.5 2.5 0 0 0 15.5 9h-1a.5.5 0 0 0-.5.5z",
        ),
      ]),
      svg.path([a("d", "M6 15V9")]),
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


pub fn hdmi_port(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M22 9a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v4a1 1 0 0 0 1 1h1l2 2h12l2-2h1a1 1 0 0 0 1-1Z",
        ),
      ]),
      svg.path([a("d", "M7.5 12h9")]),
    ],
  )
}


pub fn heading(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M6 12h12")]),
      svg.path([a("d", "M6 20V4")]),
      svg.path([a("d", "M18 20V4")]),
    ],
  )
}


pub fn heading_1(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M4 12h8")]),
      svg.path([a("d", "M4 18V6")]),
      svg.path([a("d", "M12 18V6")]),
      svg.path([a("d", "m17 12 3-2v8")]),
    ],
  )
}


pub fn heading_2(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M4 12h8")]),
      svg.path([a("d", "M4 18V6")]),
      svg.path([a("d", "M12 18V6")]),
      svg.path([a("d", "M21 18h-4c0-4 4-3 4-6 0-1.5-2-2.5-4-1")]),
    ],
  )
}


pub fn heading_3(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M4 12h8")]),
      svg.path([a("d", "M4 18V6")]),
      svg.path([a("d", "M12 18V6")]),
      svg.path([a("d", "M17.5 10.5c1.7-1 3.5 0 3.5 1.5a2 2 0 0 1-2 2")]),
      svg.path([a("d", "M17 17.5c2 1.5 4 .3 4-1.5a2 2 0 0 0-2-2")]),
    ],
  )
}


pub fn heading_4(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 18V6")]),
      svg.path([a("d", "M17 10v3a1 1 0 0 0 1 1h3")]),
      svg.path([a("d", "M21 10v8")]),
      svg.path([a("d", "M4 12h8")]),
      svg.path([a("d", "M4 18V6")]),
    ],
  )
}


pub fn heading_5(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M4 12h8")]),
      svg.path([a("d", "M4 18V6")]),
      svg.path([a("d", "M12 18V6")]),
      svg.path([a("d", "M17 13v-3h4")]),
      svg.path([
        a(
          "d",
          "M17 17.7c.4.2.8.3 1.3.3 1.5 0 2.7-1.1 2.7-2.5S19.8 13 18.3 13H17",
        ),
      ]),
    ],
  )
}


pub fn heading_6(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M4 12h8")]),
      svg.path([a("d", "M4 18V6")]),
      svg.path([a("d", "M12 18V6")]),
      svg.circle([
        a("r", "2"),
        a("cy", "16"),
        a("cx", "19"),
      ]),
      svg.path([a("d", "M20 10c-2 2-3 3.5-3 6")]),
    ],
  )
}


pub fn headphone_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M21 14h-1.343")]),
      svg.path([a("d", "M9.128 3.47A9 9 0 0 1 21 12v3.343")]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([
        a("d", "M20.414 20.414A2 2 0 0 1 19 21h-1a2 2 0 0 1-2-2v-3"),
      ]),
      svg.path([
        a(
          "d",
          "M3 14h3a2 2 0 0 1 2 2v3a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-7a9 9 0 0 1 2.636-6.364",
        ),
      ]),
    ],
  )
}


pub fn headphones(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M3 14h3a2 2 0 0 1 2 2v3a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-7a9 9 0 0 1 18 0v7a2 2 0 0 1-2 2h-1a2 2 0 0 1-2-2v-3a2 2 0 0 1 2-2h3",
        ),
      ]),
    ],
  )
}


pub fn headset(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M3 11h3a2 2 0 0 1 2 2v3a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-5Zm0 0a9 9 0 1 1 18 0m0 0v5a2 2 0 0 1-2 2h-1a2 2 0 0 1-2-2v-3a2 2 0 0 1 2-2h3Z",
        ),
      ]),
      svg.path([a("d", "M21 16v2a4 4 0 0 1-4 4h-5")]),
    ],
  )
}


pub fn heart(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M2 9.5a5.5 5.5 0 0 1 9.591-3.676.56.56 0 0 0 .818 0A5.49 5.49 0 0 1 22 9.5c0 2.29-1.5 4-3 5.5l-5.492 5.313a2 2 0 0 1-3 .019L5 15c-1.5-1.5-3-3.2-3-5.5",
        ),
      ]),
    ],
  )
}


pub fn heart_crack(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M12.409 5.824c-.702.792-1.15 1.496-1.415 2.166l2.153 2.156a.5.5 0 0 1 0 .707l-2.293 2.293a.5.5 0 0 0 0 .707L12 15",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M13.508 20.313a2 2 0 0 1-3 .019L5 15c-1.5-1.5-3-3.2-3-5.5a5.5 5.5 0 0 1 9.591-3.677.6.6 0 0 0 .818.001A5.5 5.5 0 0 1 22 9.5c0 2.29-1.5 4-3 5.5z",
        ),
      ]),
    ],
  )
}


pub fn heart_handshake(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M19.414 14.414C21 12.828 22 11.5 22 9.5a5.5 5.5 0 0 0-9.591-3.676.6.6 0 0 1-.818.001A5.5 5.5 0 0 0 2 9.5c0 2.3 1.5 4 3 5.5l5.535 5.362a2 2 0 0 0 2.879.052 2.12 2.12 0 0 0-.004-3 2.124 2.124 0 1 0 3-3 2.124 2.124 0 0 0 3.004 0 2 2 0 0 0 0-2.828l-1.881-1.882a2.41 2.41 0 0 0-3.409 0l-1.71 1.71a2 2 0 0 1-2.828 0 2 2 0 0 1 0-2.828l2.823-2.762",
        ),
      ]),
    ],
  )
}


pub fn heart_minus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "m14.876 18.99-1.368 1.323a2 2 0 0 1-3 .019L5 15c-1.5-1.5-3-3.2-3-5.5a5.5 5.5 0 0 1 9.591-3.676.56.56 0 0 0 .818 0A5.49 5.49 0 0 1 22 9.5a5.2 5.2 0 0 1-.244 1.572",
        ),
      ]),
      svg.path([a("d", "M15 15h6")]),
    ],
  )
}


pub fn heart_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M10.5 4.893a5.5 5.5 0 0 1 1.091.931.56.56 0 0 0 .818 0A5.49 5.49 0 0 1 22 9.5c0 1.872-1.002 3.356-2.187 4.655",
        ),
      ]),
      svg.path([
        a(
          "d",
          "m16.967 16.967-3.459 3.346a2 2 0 0 1-3 .019L5 15c-1.5-1.5-3-3.2-3-5.5a5.5 5.5 0 0 1 2.747-4.761",
        ),
      ]),
      svg.path([a("d", "m2 2 20 20")]),
    ],
  )
}


pub fn heart_plus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "m14.479 19.374-.971.939a2 2 0 0 1-3 .019L5 15c-1.5-1.5-3-3.2-3-5.5a5.5 5.5 0 0 1 9.591-3.676.56.56 0 0 0 .818 0A5.49 5.49 0 0 1 22 9.5a5.2 5.2 0 0 1-.219 1.49",
        ),
      ]),
      svg.path([a("d", "M15 15h6")]),
      svg.path([a("d", "M18 12v6")]),
    ],
  )
}


pub fn heart_pulse(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M2 9.5a5.5 5.5 0 0 1 9.591-3.676.56.56 0 0 0 .818 0A5.49 5.49 0 0 1 22 9.5c0 2.29-1.5 4-3 5.5l-5.492 5.313a2 2 0 0 1-3 .019L5 15c-1.5-1.5-3-3.2-3-5.5",
        ),
      ]),
      svg.path([a("d", "M3.22 13H9.5l.5-1 2 4.5 2-7 1.5 3.5h5.27")]),
    ],
  )
}


pub fn heater(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M11 8c2-3-2-3 0-6")]),
      svg.path([a("d", "M15.5 8c2-3-2-3 0-6")]),
      svg.path([a("d", "M6 10h.01")]),
      svg.path([a("d", "M6 14h.01")]),
      svg.path([a("d", "M10 16v-4")]),
      svg.path([a("d", "M14 16v-4")]),
      svg.path([a("d", "M18 16v-4")]),
      svg.path([
        a(
          "d",
          "M20 6a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h3",
        ),
      ]),
      svg.path([a("d", "M5 20v2")]),
      svg.path([a("d", "M19 20v2")]),
    ],
  )
}


pub fn helicopter(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M11 17v4")]),
      svg.path([a("d", "M14 3v8a2 2 0 0 0 2 2h5.865")]),
      svg.path([a("d", "M17 17v4")]),
      svg.path([
        a(
          "d",
          "M18 17a4 4 0 0 0 4-4 8 6 0 0 0-8-6 6 5 0 0 0-6 5v3a2 2 0 0 0 2 2z",
        ),
      ]),
      svg.path([a("d", "M2 10v5")]),
      svg.path([a("d", "M6 3h16")]),
      svg.path([a("d", "M7 21h14")]),
      svg.path([a("d", "M8 13H2")]),
    ],
  )
}


pub fn hexagon(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z",
        ),
      ]),
    ],
  )
}


pub fn highlighter(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m9 11-6 6v3h9l3-3")]),
      svg.path([
        a("d", "m22 12-4.6 4.6a2 2 0 0 1-2.8 0l-5.2-5.2a2 2 0 0 1 0-2.8L14 4"),
      ]),
    ],
  )
}


pub fn history(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M3 12a9 9 0 1 0 9-9 9.75 9.75 0 0 0-6.74 2.74L3 8"),
      ]),
      svg.path([a("d", "M3 3v5h5")]),
      svg.path([a("d", "M12 7v5l4 2")]),
    ],
  )
}


pub fn hop(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M10.82 16.12c1.69.6 3.91.79 5.18.85.55.03 1-.42.97-.97-.06-1.27-.26-3.5-.85-5.18",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M11.5 6.5c1.64 0 5-.38 6.71-1.07.52-.2.55-.82.12-1.17A10 10 0 0 0 4.26 18.33c.35.43.96.4 1.17-.12.69-1.71 1.07-5.07 1.07-6.71 1.34.45 3.1.9 4.88.62a.88.88 0 0 0 .73-.74c.3-2.14-.15-3.5-.61-4.88",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M15.62 16.95c.2.85.62 2.76.5 4.28a.77.77 0 0 1-.9.7 16.64 16.64 0 0 1-4.08-1.36",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M16.13 21.05c1.65.63 3.68.84 4.87.91a.9.9 0 0 0 .96-.96 17.68 17.68 0 0 0-.9-4.87",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M16.94 15.62c.86.2 2.77.62 4.29.5a.77.77 0 0 0 .7-.9 16.64 16.64 0 0 0-1.36-4.08",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M17.99 5.52a20.82 20.82 0 0 1 3.15 4.5.8.8 0 0 1-.68 1.13c-2.33.2-5.3-.32-8.27-1.57",
        ),
      ]),
      svg.path([a("d", "M4.93 4.93 3 3a.7.7 0 0 1 0-1")]),
      svg.path([
        a(
          "d",
          "M9.58 12.18c1.24 2.98 1.77 5.95 1.57 8.28a.8.8 0 0 1-1.13.68 20.82 20.82 0 0 1-4.5-3.15",
        ),
      ]),
    ],
  )
}


pub fn hop_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M10.82 16.12c1.69.6 3.91.79 5.18.85.28.01.53-.09.7-.27"),
      ]),
      svg.path([
        a(
          "d",
          "M11.14 20.57c.52.24 2.44 1.12 4.08 1.37.46.06.86-.25.9-.71.12-1.52-.3-3.43-.5-4.28",
        ),
      ]),
      svg.path([
        a("d", "M16.13 21.05c1.65.63 3.68.84 4.87.91a.9.9 0 0 0 .7-.26"),
      ]),
      svg.path([
        a(
          "d",
          "M17.99 5.52a20.83 20.83 0 0 1 3.15 4.5.8.8 0 0 1-.68 1.13c-1.17.1-2.5.02-3.9-.25",
        ),
      ]),
      svg.path([
        a("d", "M20.57 11.14c.24.52 1.12 2.44 1.37 4.08.04.3-.08.59-.31.75"),
      ]),
      svg.path([
        a(
          "d",
          "M4.93 4.93a10 10 0 0 0-.67 13.4c.35.43.96.4 1.17-.12.69-1.71 1.07-5.07 1.07-6.71 1.34.45 3.1.9 4.88.62a.85.85 0 0 0 .48-.24",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M5.52 17.99c1.05.95 2.91 2.42 4.5 3.15a.8.8 0 0 0 1.13-.68c.2-2.34-.33-5.3-1.57-8.28",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M8.35 2.68a10 10 0 0 1 9.98 1.58c.43.35.4.96-.12 1.17-1.5.6-4.3.98-6.07 1.05",
        ),
      ]),
      svg.path([a("d", "m2 2 20 20")]),
    ],
  )
}


pub fn hospital(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M14 21v-3a2 2 0 0 0-4 0v3")]),
      svg.path([a("d", "M14 9h-4")]),
      svg.path([
        a(
          "d",
          "M18 11h2a2 2 0 0 1 2 2v6a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2v-9a2 2 0 0 1 2-2h2",
        ),
      ]),
      svg.path([a("d", "M18 21V5a2 2 0 0 0-2-2H8a2 2 0 0 0-2 2v16")]),
    ],
  )
}


pub fn hotel(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 22v-6.57")]),
      svg.path([a("d", "M12 11h.01")]),
      svg.path([a("d", "M12 7h.01")]),
      svg.path([a("d", "M14 15.43V22")]),
      svg.path([a("d", "M15 16a5 5 0 0 0-6 0")]),
      svg.path([a("d", "M16 11h.01")]),
      svg.path([a("d", "M16 7h.01")]),
      svg.path([a("d", "M8 11h.01")]),
      svg.path([a("d", "M8 7h.01")]),
      svg.rect([
        a("rx", "2"),
        a("height", "20"),
        a("width", "16"),
        a("y", "2"),
        a("x", "4"),
      ]),
    ],
  )
}


pub fn hourglass(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M5 22h14")]),
      svg.path([a("d", "M5 2h14")]),
      svg.path([
        a(
          "d",
          "M17 22v-4.172a2 2 0 0 0-.586-1.414L12 12l-4.414 4.414A2 2 0 0 0 7 17.828V22",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M7 2v4.172a2 2 0 0 0 .586 1.414L12 12l4.414-4.414A2 2 0 0 0 17 6.172V2",
        ),
      ]),
    ],
  )
}


pub fn house(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M15 21v-8a1 1 0 0 0-1-1h-4a1 1 0 0 0-1 1v8")]),
      svg.path([
        a(
          "d",
          "M3 10a2 2 0 0 1 .709-1.528l7-6a2 2 0 0 1 2.582 0l7 6A2 2 0 0 1 21 10v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z",
        ),
      ]),
    ],
  )
}


pub fn house_heart(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M8.62 13.8A2.25 2.25 0 1 1 12 10.836a2.25 2.25 0 1 1 3.38 2.966l-2.626 2.856a.998.998 0 0 1-1.507 0z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M3 10a2 2 0 0 1 .709-1.528l7-6a2 2 0 0 1 2.582 0l7 6A2 2 0 0 1 21 10v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z",
        ),
      ]),
    ],
  )
}


pub fn house_plug(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 12V8.964")]),
      svg.path([a("d", "M14 12V8.964")]),
      svg.path([
        a(
          "d",
          "M15 12a1 1 0 0 1 1 1v2a2 2 0 0 1-2 2h-4a2 2 0 0 1-2-2v-2a1 1 0 0 1 1-1z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M8.5 21H5a2 2 0 0 1-2-2v-9a2 2 0 0 1 .709-1.528l7-6a2 2 0 0 1 2.582 0l7 6A2 2 0 0 1 21 10v9a2 2 0 0 1-2 2h-5a2 2 0 0 1-2-2v-2",
        ),
      ]),
    ],
  )
}


pub fn house_plus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M12.35 21H5a2 2 0 0 1-2-2v-9a2 2 0 0 1 .71-1.53l7-6a2 2 0 0 1 2.58 0l7 6A2 2 0 0 1 21 10v2.35",
        ),
      ]),
      svg.path([a("d", "M14.8 12.4A1 1 0 0 0 14 12h-4a1 1 0 0 0-1 1v8")]),
      svg.path([a("d", "M15 18h6")]),
      svg.path([a("d", "M18 15v6")]),
    ],
  )
}


pub fn house_wifi(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M9.5 13.866a4 4 0 0 1 5 .01")]),
      svg.path([a("d", "M12 17h.01")]),
      svg.path([
        a(
          "d",
          "M3 10a2 2 0 0 1 .709-1.528l7-6a2 2 0 0 1 2.582 0l7 6A2 2 0 0 1 21 10v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z",
        ),
      ]),
      svg.path([a("d", "M7 10.754a8 8 0 0 1 10 0")]),
    ],
  )
}
