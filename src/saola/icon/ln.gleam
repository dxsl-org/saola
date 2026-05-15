import lustre/attribute.{type Attribute, attribute as a}
import lustre/element/svg

pub fn navigation(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [svg.polygon([a("points", "3 11 22 2 13 21 11 13 3 11")])],
  )
}


pub fn navigation_2(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [svg.polygon([a("points", "12 2 19 21 12 17 5 21 12 2")])],
  )
}


pub fn navigation_2_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M9.31 9.31 5 21l7-4 7 4-1.17-3.17")]),
      svg.path([a("d", "M14.53 8.88 12 2l-1.17 3.17")]),
      svg.line([
        a("y2", "22"),
        a("y1", "2"),
        a("x2", "22"),
        a("x1", "2"),
      ]),
    ],
  )
}


pub fn navigation_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M8.43 8.43 3 11l8 2 2 8 2.57-5.43")]),
      svg.path([a("d", "M17.39 11.73 22 2l-9.73 4.61")]),
      svg.line([
        a("y2", "22"),
        a("y1", "2"),
        a("x2", "22"),
        a("x1", "2"),
      ]),
    ],
  )
}


pub fn network(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("height", "6"),
        a("width", "6"),
        a("y", "16"),
        a("x", "16"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("height", "6"),
        a("width", "6"),
        a("y", "16"),
        a("x", "2"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("height", "6"),
        a("width", "6"),
        a("y", "2"),
        a("x", "9"),
      ]),
      svg.path([a("d", "M5 16v-3a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v3")]),
      svg.path([a("d", "M12 12V8")]),
    ],
  )
}


pub fn newspaper(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M15 18h-5")]),
      svg.path([a("d", "M18 14h-8")]),
      svg.path([
        a(
          "d",
          "M4 22h16a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H8a2 2 0 0 0-2 2v16a2 2 0 0 1-4 0v-9a2 2 0 0 1 2-2h2",
        ),
      ]),
      svg.rect([
        a("rx", "1"),
        a("y", "6"),
        a("x", "10"),
        a("height", "4"),
        a("width", "8"),
      ]),
    ],
  )
}


pub fn nfc(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M6 8.32a7.43 7.43 0 0 1 0 7.36")]),
      svg.path([a("d", "M9.46 6.21a11.76 11.76 0 0 1 0 11.58")]),
      svg.path([a("d", "M12.91 4.1a15.91 15.91 0 0 1 .01 15.8")]),
      svg.path([a("d", "M16.37 2a20.16 20.16 0 0 1 0 20")]),
    ],
  )
}


pub fn non_binary(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 2v10")]),
      svg.path([a("d", "m8.5 4 7 4")]),
      svg.path([a("d", "m8.5 8 7-4")]),
      svg.circle([
        a("r", "5"),
        a("cy", "17"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn notebook(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M2 6h4")]),
      svg.path([a("d", "M2 10h4")]),
      svg.path([a("d", "M2 14h4")]),
      svg.path([a("d", "M2 18h4")]),
      svg.rect([
        a("rx", "2"),
        a("y", "2"),
        a("x", "4"),
        a("height", "20"),
        a("width", "16"),
      ]),
      svg.path([a("d", "M16 2v20")]),
    ],
  )
}


pub fn notebook_pen(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M13.4 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-7.4"),
      ]),
      svg.path([a("d", "M2 6h4")]),
      svg.path([a("d", "M2 10h4")]),
      svg.path([a("d", "M2 14h4")]),
      svg.path([a("d", "M2 18h4")]),
      svg.path([
        a(
          "d",
          "M21.378 5.626a1 1 0 1 0-3.004-3.004l-5.01 5.012a2 2 0 0 0-.506.854l-.837 2.87a.5.5 0 0 0 .62.62l2.87-.837a2 2 0 0 0 .854-.506z",
        ),
      ]),
    ],
  )
}


pub fn notebook_tabs(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M2 6h4")]),
      svg.path([a("d", "M2 10h4")]),
      svg.path([a("d", "M2 14h4")]),
      svg.path([a("d", "M2 18h4")]),
      svg.rect([
        a("rx", "2"),
        a("y", "2"),
        a("x", "4"),
        a("height", "20"),
        a("width", "16"),
      ]),
      svg.path([a("d", "M15 2v20")]),
      svg.path([a("d", "M15 7h5")]),
      svg.path([a("d", "M15 12h5")]),
      svg.path([a("d", "M15 17h5")]),
    ],
  )
}


pub fn notebook_text(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M2 6h4")]),
      svg.path([a("d", "M2 10h4")]),
      svg.path([a("d", "M2 14h4")]),
      svg.path([a("d", "M2 18h4")]),
      svg.rect([
        a("rx", "2"),
        a("y", "2"),
        a("x", "4"),
        a("height", "20"),
        a("width", "16"),
      ]),
      svg.path([a("d", "M9.5 8h5")]),
      svg.path([a("d", "M9.5 12H16")]),
      svg.path([a("d", "M9.5 16H14")]),
    ],
  )
}


pub fn notepad_text(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M12 2v4")]),
      svg.path([a("d", "M16 2v4")]),
      svg.rect([
        a("rx", "2"),
        a("y", "4"),
        a("x", "4"),
        a("height", "18"),
        a("width", "16"),
      ]),
      svg.path([a("d", "M8 10h6")]),
      svg.path([a("d", "M8 14h8")]),
      svg.path([a("d", "M8 18h5")]),
    ],
  )
}


pub fn notepad_text_dashed(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M12 2v4")]),
      svg.path([a("d", "M16 2v4")]),
      svg.path([a("d", "M16 4h2a2 2 0 0 1 2 2v2")]),
      svg.path([a("d", "M20 12v2")]),
      svg.path([a("d", "M20 18v2a2 2 0 0 1-2 2h-1")]),
      svg.path([a("d", "M13 22h-2")]),
      svg.path([a("d", "M7 22H6a2 2 0 0 1-2-2v-2")]),
      svg.path([a("d", "M4 14v-2")]),
      svg.path([a("d", "M4 8V6a2 2 0 0 1 2-2h2")]),
      svg.path([a("d", "M8 10h6")]),
      svg.path([a("d", "M8 14h8")]),
      svg.path([a("d", "M8 18h5")]),
    ],
  )
}


pub fn nut(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 4V2")]),
      svg.path([
        a(
          "d",
          "M5 10v4a7.004 7.004 0 0 0 5.277 6.787c.412.104.802.292 1.102.592L12 22l.621-.621c.3-.3.69-.488 1.102-.592A7.003 7.003 0 0 0 19 14v-4",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M12 4C8 4 4.5 6 4 8c-.243.97-.919 1.952-2 3 1.31-.082 1.972-.29 3-1 .54.92.982 1.356 2 2 1.452-.647 1.954-1.098 2.5-2 .595.995 1.151 1.427 2.5 2 1.31-.621 1.862-1.058 2.5-2 .629.977 1.162 1.423 2.5 2 1.209-.548 1.68-.967 2-2 1.032.916 1.683 1.157 3 1-1.297-1.036-1.758-2.03-2-3-.5-2-4-4-8-4Z",
        ),
      ]),
    ],
  )
}


pub fn nut_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 4V2")]),
      svg.path([
        a(
          "d",
          "M5 10v4a7.004 7.004 0 0 0 5.277 6.787c.412.104.802.292 1.102.592L12 22l.621-.621c.3-.3.69-.488 1.102-.592a7.01 7.01 0 0 0 4.125-2.939",
        ),
      ]),
      svg.path([a("d", "M19 10v3.343")]),
      svg.path([
        a(
          "d",
          "M12 12c-1.349-.573-1.905-1.005-2.5-2-.546.902-1.048 1.353-2.5 2-1.018-.644-1.46-1.08-2-2-1.028.71-1.69.918-3 1 1.081-1.048 1.757-2.03 2-3 .194-.776.84-1.551 1.79-2.21m11.654 5.997c.887-.457 1.28-.891 1.556-1.787 1.032.916 1.683 1.157 3 1-1.297-1.036-1.758-2.03-2-3-.5-2-4-4-8-4-.74 0-1.461.068-2.15.192",
        ),
      ]),
      svg.line([
        a("y2", "22"),
        a("y1", "2"),
        a("x2", "22"),
        a("x1", "2"),
      ]),
    ],
  )
}
