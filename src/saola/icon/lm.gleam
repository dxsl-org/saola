import lustre/attribute.{type Attribute, attribute as a}
import lustre/element/svg

pub fn magnet(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m12 15 4 4")]),
      svg.path([
        a(
          "d",
          "M2.352 10.648a1.205 1.205 0 0 0 0 1.704l2.296 2.296a1.205 1.205 0 0 0 1.704 0l6.029-6.029a1 1 0 1 1 3 3l-6.029 6.029a1.205 1.205 0 0 0 0 1.704l2.296 2.296a1.205 1.205 0 0 0 1.704 0l6.365-6.367A1 1 0 0 0 8.716 4.282z",
        ),
      ]),
      svg.path([a("d", "m5 8 4 4")]),
    ],
  )
}


pub fn mail(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m22 7-8.991 5.727a2 2 0 0 1-2.009 0L2 7")]),
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


pub fn mail_check(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M22 13V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v12c0 1.1.9 2 2 2h8"),
      ]),
      svg.path([a("d", "m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7")]),
      svg.path([a("d", "m16 19 2 2 4-4")]),
    ],
  )
}


pub fn mail_minus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M22 15V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v12c0 1.1.9 2 2 2h8"),
      ]),
      svg.path([a("d", "m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7")]),
      svg.path([a("d", "M16 19h6")]),
    ],
  )
}


pub fn mail_open(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M21.2 8.4c.5.38.8.97.8 1.6v10a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V10a2 2 0 0 1 .8-1.6l8-6a2 2 0 0 1 2.4 0l8 6Z",
        ),
      ]),
      svg.path([a("d", "m22 10-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 10")]),
    ],
  )
}


pub fn mail_plus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M22 13V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v12c0 1.1.9 2 2 2h8"),
      ]),
      svg.path([a("d", "m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7")]),
      svg.path([a("d", "M19 16v6")]),
      svg.path([a("d", "M16 19h6")]),
    ],
  )
}


pub fn mail_question_mark(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M22 10.5V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v12c0 1.1.9 2 2 2h12.5"),
      ]),
      svg.path([a("d", "m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7")]),
      svg.path([
        a(
          "d",
          "M18 15.28c.2-.4.5-.8.9-1a2.1 2.1 0 0 1 2.6.4c.3.4.5.8.5 1.3 0 1.3-2 2-2 2",
        ),
      ]),
      svg.path([a("d", "M20 22v.01")]),
    ],
  )
}


pub fn mail_search(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M22 12.5V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v12c0 1.1.9 2 2 2h7.5"),
      ]),
      svg.path([a("d", "m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7")]),
      svg.path([a("d", "M18 21a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z")]),
      svg.circle([
        a("r", "3"),
        a("cy", "18"),
        a("cx", "18"),
      ]),
      svg.path([a("d", "m22 22-1.5-1.5")]),
    ],
  )
}


pub fn mail_warning(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M22 10.5V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v12c0 1.1.9 2 2 2h12.5"),
      ]),
      svg.path([a("d", "m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7")]),
      svg.path([a("d", "M20 14v4")]),
      svg.path([a("d", "M20 22v.01")]),
    ],
  )
}


pub fn mail_x(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M22 13V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v12c0 1.1.9 2 2 2h9"),
      ]),
      svg.path([a("d", "m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7")]),
      svg.path([a("d", "m17 17 4 4")]),
      svg.path([a("d", "m21 17-4 4")]),
    ],
  )
}


pub fn mailbox(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M22 17a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V9.5C2 7 4 5 6.5 5H18c2.2 0 4 1.8 4 4v8Z",
        ),
      ]),
      svg.polyline([a("points", "15,9 18,9 18,11")]),
      svg.path([a("d", "M6.5 5C9 5 11 7 11 9.5V17a2 2 0 0 1-2 2")]),
      svg.line([
        a("y2", "10"),
        a("y1", "10"),
        a("x2", "7"),
        a("x1", "6"),
      ]),
    ],
  )
}


pub fn mails(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M17 19a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2v-8a2 2 0 0 1 1-1.732"),
      ]),
      svg.path([a("d", "m22 5.5-6.419 4.179a2 2 0 0 1-2.162 0L7 5.5")]),
      svg.rect([
        a("rx", "2"),
        a("height", "12"),
        a("width", "15"),
        a("y", "3"),
        a("x", "7"),
      ]),
    ],
  )
}


pub fn map(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M14.106 5.553a2 2 0 0 0 1.788 0l3.659-1.83A1 1 0 0 1 21 4.619v12.764a1 1 0 0 1-.553.894l-4.553 2.277a2 2 0 0 1-1.788 0l-4.212-2.106a2 2 0 0 0-1.788 0l-3.659 1.83A1 1 0 0 1 3 19.381V6.618a1 1 0 0 1 .553-.894l4.553-2.277a2 2 0 0 1 1.788 0z",
        ),
      ]),
      svg.path([a("d", "M15 5.764v15")]),
      svg.path([a("d", "M9 3.236v15")]),
    ],
  )
}


pub fn map_minus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "m11 19-1.106-.552a2 2 0 0 0-1.788 0l-3.659 1.83A1 1 0 0 1 3 19.381V6.618a1 1 0 0 1 .553-.894l4.553-2.277a2 2 0 0 1 1.788 0l4.212 2.106a2 2 0 0 0 1.788 0l3.659-1.83A1 1 0 0 1 21 4.619V14",
        ),
      ]),
      svg.path([a("d", "M15 5.764V14")]),
      svg.path([a("d", "M21 18h-6")]),
      svg.path([a("d", "M9 3.236v15")]),
    ],
  )
}


pub fn map_pin(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M20 10c0 4.993-5.539 10.193-7.399 11.799a1 1 0 0 1-1.202 0C9.539 20.193 4 14.993 4 10a8 8 0 0 1 16 0",
        ),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "10"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn map_pin_check(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M19.43 12.935c.357-.967.57-1.955.57-2.935a8 8 0 0 0-16 0c0 4.993 5.539 10.193 7.399 11.799a1 1 0 0 0 1.202 0 32.197 32.197 0 0 0 .813-.728",
        ),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "10"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "m16 18 2 2 4-4")]),
    ],
  )
}


pub fn map_pin_check_inside(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M20 10c0 4.993-5.539 10.193-7.399 11.799a1 1 0 0 1-1.202 0C9.539 20.193 4 14.993 4 10a8 8 0 0 1 16 0",
        ),
      ]),
      svg.path([a("d", "m9 10 2 2 4-4")]),
    ],
  )
}


pub fn map_pin_house(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M15 22a1 1 0 0 1-1-1v-4a1 1 0 0 1 .445-.832l3-2a1 1 0 0 1 1.11 0l3 2A1 1 0 0 1 22 17v4a1 1 0 0 1-1 1z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M18 10a8 8 0 0 0-16 0c0 4.993 5.539 10.193 7.399 11.799a1 1 0 0 0 .601.2",
        ),
      ]),
      svg.path([a("d", "M18 22v-3")]),
      svg.circle([
        a("r", "3"),
        a("cy", "10"),
        a("cx", "10"),
      ]),
    ],
  )
}


pub fn map_pin_minus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M18.977 14C19.6 12.701 20 11.343 20 10a8 8 0 0 0-16 0c0 4.993 5.539 10.193 7.399 11.799a1 1 0 0 0 1.202 0 32 32 0 0 0 .824-.738",
        ),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "10"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M16 18h6")]),
    ],
  )
}


pub fn map_pin_minus_inside(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M20 10c0 4.993-5.539 10.193-7.399 11.799a1 1 0 0 1-1.202 0C9.539 20.193 4 14.993 4 10a8 8 0 0 1 16 0",
        ),
      ]),
      svg.path([a("d", "M9 10h6")]),
    ],
  )
}


pub fn map_pin_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12.75 7.09a3 3 0 0 1 2.16 2.16")]),
      svg.path([
        a(
          "d",
          "M17.072 17.072c-1.634 2.17-3.527 3.912-4.471 4.727a1 1 0 0 1-1.202 0C9.539 20.193 4 14.993 4 10a8 8 0 0 1 1.432-4.568",
        ),
      ]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([
        a("d", "M8.475 2.818A8 8 0 0 1 20 10c0 1.183-.31 2.377-.81 3.533"),
      ]),
      svg.path([a("d", "M9.13 9.13a3 3 0 0 0 3.74 3.74")]),
    ],
  )
}


pub fn map_pin_pen(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M17.97 9.304A8 8 0 0 0 2 10c0 4.69 4.887 9.562 7.022 11.468"),
      ]),
      svg.path([
        a(
          "d",
          "M21.378 16.626a1 1 0 0 0-3.004-3.004l-4.01 4.012a2 2 0 0 0-.506.854l-.837 2.87a.5.5 0 0 0 .62.62l2.87-.837a2 2 0 0 0 .854-.506z",
        ),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "10"),
        a("cx", "10"),
      ]),
    ],
  )
}


pub fn map_pin_plus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M19.914 11.105A7.298 7.298 0 0 0 20 10a8 8 0 0 0-16 0c0 4.993 5.539 10.193 7.399 11.799a1 1 0 0 0 1.202 0 32 32 0 0 0 .824-.738",
        ),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "10"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M16 18h6")]),
      svg.path([a("d", "M19 15v6")]),
    ],
  )
}


pub fn map_pin_plus_inside(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M20 10c0 4.993-5.539 10.193-7.399 11.799a1 1 0 0 1-1.202 0C9.539 20.193 4 14.993 4 10a8 8 0 0 1 16 0",
        ),
      ]),
      svg.path([a("d", "M12 7v6")]),
      svg.path([a("d", "M9 10h6")]),
    ],
  )
}


pub fn map_pin_search(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M 12.248 21.969 a 1 1 0 0 1 -0.849 -0.17 C 9.539 20.193 4 14.993 4 10 a 8 8 0 0 1 16 0 C 20 10.42 19.961 10.841 19.888 11.262",
        ),
      ]),
      svg.path([a("d", "m22 22-1.88-1.88")]),
      svg.circle([
        a("r", "3"),
        a("cy", "10"),
        a("cx", "12"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "18"),
        a("cx", "18"),
      ]),
    ],
  )
}


pub fn map_pin_x(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M19.752 11.901A7.78 7.78 0 0 0 20 10a8 8 0 0 0-16 0c0 4.993 5.539 10.193 7.399 11.799a1 1 0 0 0 1.202 0 19 19 0 0 0 .09-.077",
        ),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "10"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "m21.5 15.5-5 5")]),
      svg.path([a("d", "m21.5 20.5-5-5")]),
    ],
  )
}


pub fn map_pin_x_inside(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M20 10c0 4.993-5.539 10.193-7.399 11.799a1 1 0 0 1-1.202 0C9.539 20.193 4 14.993 4 10a8 8 0 0 1 16 0",
        ),
      ]),
      svg.path([a("d", "m14.5 7.5-5 5")]),
      svg.path([a("d", "m9.5 7.5 5 5")]),
    ],
  )
}


pub fn map_pinned(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M18 8c0 3.613-3.869 7.429-5.393 8.795a1 1 0 0 1-1.214 0C9.87 15.429 6 11.613 6 8a6 6 0 0 1 12 0",
        ),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "8"),
        a("cx", "12"),
      ]),
      svg.path([
        a(
          "d",
          "M8.714 14h-3.71a1 1 0 0 0-.948.683l-2.004 6A1 1 0 0 0 3 22h18a1 1 0 0 0 .948-1.316l-2-6a1 1 0 0 0-.949-.684h-3.712",
        ),
      ]),
    ],
  )
}


pub fn map_plus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "m11 19-1.106-.552a2 2 0 0 0-1.788 0l-3.659 1.83A1 1 0 0 1 3 19.381V6.618a1 1 0 0 1 .553-.894l4.553-2.277a2 2 0 0 1 1.788 0l4.212 2.106a2 2 0 0 0 1.788 0l3.659-1.83A1 1 0 0 1 21 4.619V12",
        ),
      ]),
      svg.path([a("d", "M15 5.764V12")]),
      svg.path([a("d", "M18 15v6")]),
      svg.path([a("d", "M21 18h-6")]),
      svg.path([a("d", "M9 3.236v15")]),
    ],
  )
}


pub fn mars(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "m21 3-6.75 6.75")]),
      svg.circle([
        a("r", "6"),
        a("cy", "14"),
        a("cx", "10"),
      ]),
    ],
  )
}


pub fn mars_stroke(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m14 6 4 4")]),
      svg.path([a("d", "M17 3h4v4")]),
      svg.path([a("d", "m21 3-7.75 7.75")]),
      svg.circle([
        a("r", "6"),
        a("cy", "15"),
        a("cx", "9"),
      ]),
    ],
  )
}


pub fn martini(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M8 22h8")]),
      svg.path([a("d", "M12 11v11")]),
      svg.path([a("d", "m19 3-7 8-7-8Z")]),
    ],
  )
}


pub fn maximize(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M8 3H5a2 2 0 0 0-2 2v3")]),
      svg.path([a("d", "M21 8V5a2 2 0 0 0-2-2h-3")]),
      svg.path([a("d", "M3 16v3a2 2 0 0 0 2 2h3")]),
      svg.path([a("d", "M16 21h3a2 2 0 0 0 2-2v-3")]),
    ],
  )
}


pub fn maximize_2(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "m21 3-7 7")]),
      svg.path([a("d", "m3 21 7-7")]),
      svg.path([a("d", "M9 21H3v-6")]),
    ],
  )
}


pub fn medal(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M7.21 15 2.66 7.14a2 2 0 0 1 .13-2.2L4.4 2.8A2 2 0 0 1 6 2h12a2 2 0 0 1 1.6.8l1.6 2.14a2 2 0 0 1 .14 2.2L16.79 15",
        ),
      ]),
      svg.path([a("d", "M11 12 5.12 2.2")]),
      svg.path([a("d", "m13 12 5.88-9.8")]),
      svg.path([a("d", "M8 7h8")]),
      svg.circle([
        a("r", "5"),
        a("cy", "17"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M12 18v-2h-.5")]),
    ],
  )
}


pub fn megaphone(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M11 6a13 13 0 0 0 8.4-2.8A1 1 0 0 1 21 4v12a1 1 0 0 1-1.6.8A13 13 0 0 0 11 14H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2z",
        ),
      ]),
      svg.path([
        a("d", "M6 14a12 12 0 0 0 2.4 7.2 2 2 0 0 0 3.2-2.4A8 8 0 0 1 10 14"),
      ]),
      svg.path([a("d", "M8 6v8")]),
    ],
  )
}


pub fn megaphone_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M11.636 6A13 13 0 0 0 19.4 3.2 1 1 0 0 1 21 4v11.344"),
      ]),
      svg.path([
        a(
          "d",
          "M14.378 14.357A13 13 0 0 0 11 14H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h1",
        ),
      ]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([
        a("d", "M6 14a12 12 0 0 0 2.4 7.2 2 2 0 0 0 3.2-2.4A8 8 0 0 1 10 14"),
      ]),
      svg.path([a("d", "M8 8v6")]),
    ],
  )
}


pub fn meh(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("y2", "15"),
        a("y1", "15"),
        a("x2", "16"),
        a("x1", "8"),
      ]),
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


pub fn memory_stick(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 12v-2")]),
      svg.path([a("d", "M12 18v-2")]),
      svg.path([a("d", "M16 12v-2")]),
      svg.path([a("d", "M16 18v-2")]),
      svg.path([a("d", "M2 11h1.5")]),
      svg.path([a("d", "M20 18v-2")]),
      svg.path([a("d", "M20.5 11H22")]),
      svg.path([a("d", "M4 18v-2")]),
      svg.path([a("d", "M8 12v-2")]),
      svg.path([a("d", "M8 18v-2")]),
      svg.rect([
        a("rx", "2"),
        a("height", "10"),
        a("width", "20"),
        a("y", "6"),
        a("x", "2"),
      ]),
    ],
  )
}


pub fn menu(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M4 5h16")]),
      svg.path([a("d", "M4 12h16")]),
      svg.path([a("d", "M4 19h16")]),
    ],
  )
}


pub fn merge(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m8 6 4-4 4 4")]),
      svg.path([a("d", "M12 2v10.3a4 4 0 0 1-1.172 2.872L4 22")]),
      svg.path([a("d", "m20 22-5-5")]),
    ],
  )
}


pub fn message_circle(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M2.992 16.342a2 2 0 0 1 .094 1.167l-1.065 3.29a1 1 0 0 0 1.236 1.168l3.413-.998a2 2 0 0 1 1.099.092 10 10 0 1 0-4.777-4.719",
        ),
      ]),
    ],
  )
}


pub fn message_circle_check(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M2.992 16.342a2 2 0 0 1 .094 1.167l-1.065 3.29a1 1 0 0 0 1.236 1.168l3.413-.998a2 2 0 0 1 1.099.092 10 10 0 1 0-4.777-4.719",
        ),
      ]),
      svg.path([a("d", "m9 12 2 2 4-4")]),
    ],
  )
}


pub fn message_circle_code(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([
        a(
          "d",
          "M2.992 16.342a2 2 0 0 1 .094 1.167l-1.065 3.29a1 1 0 0 0 1.236 1.168l3.413-.998a2 2 0 0 1 1.099.092 10 10 0 1 0-4.777-4.719",
        ),
      ]),
    ],
  )
}


pub fn message_circle_dashed(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M17.609 3.72a10 10 0 0 1 2.69 2.7")]),
      svg.path([a("d", "M2.182 13.9a10 10 0 0 1 0-3.8")]),
      svg.path([a("d", "M20.28 17.61a10 10 0 0 1-2.7 2.69")]),
      svg.path([a("d", "M21.818 10.1a10 10 0 0 1 0 3.8")]),
      svg.path([a("d", "M3.721 6.391a10 10 0 0 1 2.7-2.69")]),
      svg.path([
        a("d", "m6.163 21.117-2.906.85a1 1 0 0 1-1.236-1.169l.965-2.98"),
      ]),
    ],
  )
}


pub fn message_circle_heart(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M2.992 16.342a2 2 0 0 1 .094 1.167l-1.065 3.29a1 1 0 0 0 1.236 1.168l3.413-.998a2 2 0 0 1 1.099.092 10 10 0 1 0-4.777-4.719",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M7.828 13.07A3 3 0 0 1 12 8.764a3 3 0 0 1 5.004 2.224 3 3 0 0 1-.832 2.083l-3.447 3.62a1 1 0 0 1-1.45-.001z",
        ),
      ]),
    ],
  )
}


pub fn message_circle_more(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M2.992 16.342a2 2 0 0 1 .094 1.167l-1.065 3.29a1 1 0 0 0 1.236 1.168l3.413-.998a2 2 0 0 1 1.099.092 10 10 0 1 0-4.777-4.719",
        ),
      ]),
      svg.path([a("d", "M8 12h.01")]),
      svg.path([a("d", "M12 12h.01")]),
      svg.path([a("d", "M16 12h.01")]),
    ],
  )
}


pub fn message_circle_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M4.93 4.929a10 10 0 0 0-1.938 11.412 2 2 0 0 1 .094 1.167l-1.065 3.29a1 1 0 0 0 1.236 1.168l3.413-.998a2 2 0 0 1 1.099.092 10 10 0 0 0 11.302-1.989",
        ),
      ]),
      svg.path([a("d", "M8.35 2.69A10 10 0 0 1 21.3 15.65")]),
    ],
  )
}


pub fn message_circle_plus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M2.992 16.342a2 2 0 0 1 .094 1.167l-1.065 3.29a1 1 0 0 0 1.236 1.168l3.413-.998a2 2 0 0 1 1.099.092 10 10 0 1 0-4.777-4.719",
        ),
      ]),
      svg.path([a("d", "M8 12h8")]),
      svg.path([a("d", "M12 8v8")]),
    ],
  )
}


pub fn message_circle_question_mark(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M2.992 16.342a2 2 0 0 1 .094 1.167l-1.065 3.29a1 1 0 0 0 1.236 1.168l3.413-.998a2 2 0 0 1 1.099.092 10 10 0 1 0-4.777-4.719",
        ),
      ]),
      svg.path([a("d", "M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3")]),
      svg.path([a("d", "M12 17h.01")]),
    ],
  )
}


pub fn message_circle_reply(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M2.992 16.342a2 2 0 0 1 .094 1.167l-1.065 3.29a1 1 0 0 0 1.236 1.168l3.413-.998a2 2 0 0 1 1.099.092 10 10 0 1 0-4.777-4.719",
        ),
      ]),
      svg.path([a("d", "m10 15-3-3 3-3")]),
      svg.path([a("d", "M7 12h8a2 2 0 0 1 2 2v1")]),
    ],
  )
}


pub fn message_circle_warning(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M2.992 16.342a2 2 0 0 1 .094 1.167l-1.065 3.29a1 1 0 0 0 1.236 1.168l3.413-.998a2 2 0 0 1 1.099.092 10 10 0 1 0-4.777-4.719",
        ),
      ]),
      svg.path([a("d", "M12 8v4")]),
      svg.path([a("d", "M12 16h.01")]),
    ],
  )
}


pub fn message_circle_x(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M2.992 16.342a2 2 0 0 1 .094 1.167l-1.065 3.29a1 1 0 0 0 1.236 1.168l3.413-.998a2 2 0 0 1 1.099.092 10 10 0 1 0-4.777-4.719",
        ),
      ]),
      svg.path([a("d", "m15 9-6 6")]),
      svg.path([a("d", "m9 9 6 6")]),
    ],
  )
}


pub fn message_square(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M22 17a2 2 0 0 1-2 2H6.828a2 2 0 0 0-1.414.586l-2.202 2.202A.71.71 0 0 1 2 21.286V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2z",
        ),
      ]),
    ],
  )
}


pub fn message_square_check(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M22 17a2 2 0 0 1-2 2H6.828a2 2 0 0 0-1.414.586l-2.202 2.202A.7.7 0 0 1 2 21.286V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2z",
        ),
      ]),
      svg.path([a("d", "m9 11 2 2 4-4")]),
    ],
  )
}


pub fn message_square_code(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M22 17a2 2 0 0 1-2 2H6.828a2 2 0 0 0-1.414.586l-2.202 2.202A.71.71 0 0 1 2 21.286V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2z",
        ),
      ]),
      svg.path([a("d", "m10 8-3 3 3 3")]),
      svg.path([a("d", "m14 14 3-3-3-3")]),
    ],
  )
}


pub fn message_square_dashed(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M14 3h2")]),
      svg.path([a("d", "M16 19h-2")]),
      svg.path([a("d", "M2 12v-2")]),
      svg.path([
        a("d", "M2 16v5.286a.71.71 0 0 0 1.212.502l1.149-1.149"),
      ]),
      svg.path([a("d", "M20 19a2 2 0 0 0 2-2v-1")]),
      svg.path([a("d", "M22 10v2")]),
      svg.path([a("d", "M22 6V5a2 2 0 0 0-2-2")]),
      svg.path([a("d", "M4 3a2 2 0 0 0-2 2v1")]),
      svg.path([a("d", "M8 19h2")]),
      svg.path([a("d", "M8 3h2")]),
    ],
  )
}


pub fn message_square_diff(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M22 17a2 2 0 0 1-2 2H6.828a2 2 0 0 0-1.414.586l-2.202 2.202A.71.71 0 0 1 2 21.286V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2z",
        ),
      ]),
      svg.path([a("d", "M10 15h4")]),
      svg.path([a("d", "M10 9h4")]),
      svg.path([a("d", "M12 7v4")]),
    ],
  )
}


pub fn message_square_dot(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M12.7 3H4a2 2 0 0 0-2 2v16.286a.71.71 0 0 0 1.212.502l2.202-2.202A2 2 0 0 1 6.828 19H20a2 2 0 0 0 2-2v-4.7",
        ),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "6"),
        a("cx", "19"),
      ]),
    ],
  )
}


pub fn message_square_heart(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M22 17a2 2 0 0 1-2 2H6.828a2 2 0 0 0-1.414.586l-2.202 2.202A.71.71 0 0 1 2 21.286V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M7.5 9.5c0 .687.265 1.383.697 1.844l3.009 3.264a1.14 1.14 0 0 0 .407.314 1 1 0 0 0 .783-.004 1.14 1.14 0 0 0 .398-.31l3.008-3.264A2.77 2.77 0 0 0 16.5 9.5 2.5 2.5 0 0 0 12 8a2.5 2.5 0 0 0-4.5 1.5",
        ),
      ]),
    ],
  )
}


pub fn message_square_lock(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M22 8.5V5a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v16.286a.71.71 0 0 0 1.212.502l2.202-2.202A2 2 0 0 1 6.828 19H10",
        ),
      ]),
      svg.path([a("d", "M20 15v-2a2 2 0 0 0-4 0v2")]),
      svg.rect([
        a("rx", "1"),
        a("height", "5"),
        a("width", "8"),
        a("y", "15"),
        a("x", "14"),
      ]),
    ],
  )
}


pub fn message_square_more(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M22 17a2 2 0 0 1-2 2H6.828a2 2 0 0 0-1.414.586l-2.202 2.202A.71.71 0 0 1 2 21.286V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2z",
        ),
      ]),
      svg.path([a("d", "M12 11h.01")]),
      svg.path([a("d", "M16 11h.01")]),
      svg.path([a("d", "M8 11h.01")]),
    ],
  )
}


pub fn message_square_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M19 19H6.828a2 2 0 0 0-1.414.586l-2.202 2.202A.7.7 0 0 1 2 21.286V5a2 2 0 0 1 1.184-1.826",
        ),
      ]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([a("d", "M8.656 3H20a2 2 0 0 1 2 2v11.344")]),
    ],
  )
}


pub fn message_square_plus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M22 17a2 2 0 0 1-2 2H6.828a2 2 0 0 0-1.414.586l-2.202 2.202A.71.71 0 0 1 2 21.286V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2z",
        ),
      ]),
      svg.path([a("d", "M12 8v6")]),
      svg.path([a("d", "M9 11h6")]),
    ],
  )
}


pub fn message_square_quote(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M14 14a2 2 0 0 0 2-2V8h-2")]),
      svg.path([
        a(
          "d",
          "M22 17a2 2 0 0 1-2 2H6.828a2 2 0 0 0-1.414.586l-2.202 2.202A.71.71 0 0 1 2 21.286V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2z",
        ),
      ]),
      svg.path([a("d", "M8 14a2 2 0 0 0 2-2V8H8")]),
    ],
  )
}


pub fn message_square_reply(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M22 17a2 2 0 0 1-2 2H6.828a2 2 0 0 0-1.414.586l-2.202 2.202A.71.71 0 0 1 2 21.286V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2z",
        ),
      ]),
      svg.path([a("d", "m10 8-3 3 3 3")]),
      svg.path([a("d", "M17 14v-1a2 2 0 0 0-2-2H7")]),
    ],
  )
}


pub fn message_square_share(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M12 3H4a2 2 0 0 0-2 2v16.286a.71.71 0 0 0 1.212.502l2.202-2.202A2 2 0 0 1 6.828 19H20a2 2 0 0 0 2-2v-4",
        ),
      ]),
      svg.path([a("d", "M16 3h6v6")]),
      svg.path([a("d", "m16 9 6-6")]),
    ],
  )
}


pub fn message_square_text(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M22 17a2 2 0 0 1-2 2H6.828a2 2 0 0 0-1.414.586l-2.202 2.202A.71.71 0 0 1 2 21.286V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2z",
        ),
      ]),
      svg.path([a("d", "M7 11h10")]),
      svg.path([a("d", "M7 15h6")]),
      svg.path([a("d", "M7 7h8")]),
    ],
  )
}


pub fn message_square_warning(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M22 17a2 2 0 0 1-2 2H6.828a2 2 0 0 0-1.414.586l-2.202 2.202A.71.71 0 0 1 2 21.286V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2z",
        ),
      ]),
      svg.path([a("d", "M12 15h.01")]),
      svg.path([a("d", "M12 7v4")]),
    ],
  )
}


pub fn message_square_x(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M22 17a2 2 0 0 1-2 2H6.828a2 2 0 0 0-1.414.586l-2.202 2.202A.71.71 0 0 1 2 21.286V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2z",
        ),
      ]),
      svg.path([a("d", "m14.5 8.5-5 5")]),
      svg.path([a("d", "m9.5 8.5 5 5")]),
    ],
  )
}


pub fn messages_square(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M16 10a2 2 0 0 1-2 2H6.828a2 2 0 0 0-1.414.586l-2.202 2.202A.71.71 0 0 1 2 14.286V4a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M20 9a2 2 0 0 1 2 2v10.286a.71.71 0 0 1-1.212.502l-2.202-2.202A2 2 0 0 0 17.172 19H10a2 2 0 0 1-2-2v-1",
        ),
      ]),
    ],
  )
}


pub fn metronome(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 11.4V9.1")]),
      svg.path([a("d", "m12 17 6.59-6.59")]),
      svg.path([
        a(
          "d",
          "m15.05 5.7-.218-.691a3 3 0 0 0-5.663 0L4.418 19.695A1 1 0 0 0 5.37 21h13.253a1 1 0 0 0 .951-1.31L18.45 16.2",
        ),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "9"),
        a("cx", "20"),
      ]),
    ],
  )
}


pub fn mic(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 19v3")]),
      svg.path([a("d", "M19 10v2a7 7 0 0 1-14 0v-2")]),
      svg.rect([
        a("rx", "3"),
        a("height", "13"),
        a("width", "6"),
        a("y", "2"),
        a("x", "9"),
      ]),
    ],
  )
}


pub fn mic_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 19v3")]),
      svg.path([a("d", "M15 9.34V5a3 3 0 0 0-5.68-1.33")]),
      svg.path([a("d", "M16.95 16.95A7 7 0 0 1 5 12v-2")]),
      svg.path([a("d", "M18.89 13.23A7 7 0 0 0 19 12v-2")]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([a("d", "M9 9v3a3 3 0 0 0 5.12 2.12")]),
    ],
  )
}


pub fn mic_vocal(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "m11 7.601-5.994 8.19a1 1 0 0 0 .1 1.298l.817.818a1 1 0 0 0 1.314.087L15.09 12",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M16.5 21.174C15.5 20.5 14.372 20 13 20c-2.058 0-3.928 2.356-6 2-2.072-.356-2.775-3.369-1.5-4.5",
        ),
      ]),
      svg.circle([
        a("r", "5"),
        a("cy", "7"),
        a("cx", "16"),
      ]),
    ],
  )
}


pub fn microchip(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 12h4")]),
      svg.path([a("d", "M10 17h4")]),
      svg.path([a("d", "M10 7h4")]),
      svg.path([a("d", "M18 12h2")]),
      svg.path([a("d", "M18 18h2")]),
      svg.path([a("d", "M18 6h2")]),
      svg.path([a("d", "M4 12h2")]),
      svg.path([a("d", "M4 18h2")]),
      svg.path([a("d", "M4 6h2")]),
      svg.rect([
        a("rx", "2"),
        a("height", "20"),
        a("width", "12"),
        a("y", "2"),
        a("x", "6"),
      ]),
    ],
  )
}


pub fn microscope(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M6 18h8")]),
      svg.path([a("d", "M3 22h18")]),
      svg.path([a("d", "M14 22a7 7 0 1 0 0-14h-1")]),
      svg.path([a("d", "M9 14h2")]),
      svg.path([a("d", "M9 12a2 2 0 0 1-2-2V6h6v4a2 2 0 0 1-2 2Z")]),
      svg.path([a("d", "M12 6V3a1 1 0 0 0-1-1H9a1 1 0 0 0-1 1v3")]),
    ],
  )
}


pub fn microwave(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("height", "15"),
        a("width", "20"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("y", "8"),
        a("x", "6"),
        a("height", "7"),
        a("width", "8"),
      ]),
      svg.path([a("d", "M18 8v7")]),
      svg.path([a("d", "M6 19v2")]),
      svg.path([a("d", "M18 19v2")]),
    ],
  )
}


pub fn milestone(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M18.172 6a2 2 0 0 1 1.414.586l2.06 2.06a1.207 1.207 0 0 1 0 1.708l-2.06 2.06a2 2 0 0 1-1.414.586H4a1 1 0 0 1-1-1V7a1 1 0 0 1 1-1z",
        ),
      ]),
    ],
  )
}


pub fn milk(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M8 2h8")]),
      svg.path([
        a(
          "d",
          "M9 2v2.789a4 4 0 0 1-.672 2.219l-.656.984A4 4 0 0 0 7 10.212V20a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2v-9.789a4 4 0 0 0-.672-2.219l-.656-.984A4 4 0 0 1 15 4.788V2",
        ),
      ]),
      svg.path([
        a("d", "M7 15a6.472 6.472 0 0 1 5 0 6.47 6.47 0 0 0 5 0"),
      ]),
    ],
  )
}


pub fn milk_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M8 2h8")]),
      svg.path([
        a(
          "d",
          "M9 2v1.343M15 2v2.789a4 4 0 0 0 .672 2.219l.656.984a4 4 0 0 1 .672 2.22v1.131M7.8 7.8l-.128.192A4 4 0 0 0 7 10.212V20a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2v-3",
        ),
      ]),
      svg.path([
        a("d", "M7 15a6.47 6.47 0 0 1 5 0 6.472 6.472 0 0 0 3.435.435"),
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


pub fn minimize(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M8 3v3a2 2 0 0 1-2 2H3")]),
      svg.path([a("d", "M21 8h-3a2 2 0 0 1-2-2V3")]),
      svg.path([a("d", "M3 16h3a2 2 0 0 1 2 2v3")]),
      svg.path([a("d", "M16 21v-3a2 2 0 0 1 2-2h3")]),
    ],
  )
}


pub fn minimize_2(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m14 10 7-7")]),
      svg.path([a("d", "M20 10h-6V4")]),
      svg.path([a("d", "m3 21 7-7")]),
      svg.path([a("d", "M4 14h6v6")]),
    ],
  )
}


pub fn minus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [svg.path([a("d", "M5 12h14")])],
  )
}


pub fn mirror_rectangular(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M11 6 8 9")]),
      svg.path([a("d", "m16 7-8 8")]),
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


pub fn mirror_round(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 6.6 8.6 8")]),
      svg.path([a("d", "M12 18v4")]),
      svg.path([a("d", "M15 7.5 9.5 13")]),
      svg.path([a("d", "M7 22h10")]),
      svg.circle([
        a("r", "8"),
        a("cy", "10"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn monitor(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("x", "2"),
        a("height", "14"),
        a("width", "20"),
      ]),
      svg.line([
        a("y2", "21"),
        a("y1", "21"),
        a("x2", "16"),
        a("x1", "8"),
      ]),
      svg.line([
        a("y2", "21"),
        a("y1", "17"),
        a("x2", "12"),
        a("x1", "12"),
      ]),
    ],
  )
}


pub fn monitor_check(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m9 10 2 2 4-4")]),
      svg.rect([
        a("rx", "2"),
        a("y", "3"),
        a("x", "2"),
        a("height", "14"),
        a("width", "20"),
      ]),
      svg.path([a("d", "M12 17v4")]),
      svg.path([a("d", "M8 21h8")]),
    ],
  )
}


pub fn monitor_cloud(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M11 13a3 3 0 1 1 2.83-4H14a2 2 0 0 1 0 4z")]),
      svg.path([a("d", "M12 17v4")]),
      svg.path([a("d", "M8 21h8")]),
      svg.rect([
        a("rx", "2"),
        a("height", "14"),
        a("width", "20"),
        a("y", "3"),
        a("x", "2"),
      ]),
    ],
  )
}


pub fn monitor_cog(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 17v4")]),
      svg.path([a("d", "m14.305 7.53.923-.382")]),
      svg.path([a("d", "m15.228 4.852-.923-.383")]),
      svg.path([a("d", "m16.852 3.228-.383-.924")]),
      svg.path([a("d", "m16.852 8.772-.383.923")]),
      svg.path([a("d", "m19.148 3.228.383-.924")]),
      svg.path([a("d", "m19.53 9.696-.382-.924")]),
      svg.path([a("d", "m20.772 4.852.924-.383")]),
      svg.path([a("d", "m20.772 7.148.924.383")]),
      svg.path([
        a("d", "M22 13v2a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h7"),
      ]),
      svg.path([a("d", "M8 21h8")]),
      svg.circle([
        a("r", "3"),
        a("cy", "6"),
        a("cx", "18"),
      ]),
    ],
  )
}


pub fn monitor_dot(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 17v4")]),
      svg.path([
        a(
          "d",
          "M22 12.307V15a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h8.693",
        ),
      ]),
      svg.path([a("d", "M8 21h8")]),
      svg.circle([
        a("r", "3"),
        a("cy", "6"),
        a("cx", "19"),
      ]),
    ],
  )
}


pub fn monitor_down(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 13V7")]),
      svg.path([a("d", "m15 10-3 3-3-3")]),
      svg.rect([
        a("rx", "2"),
        a("y", "3"),
        a("x", "2"),
        a("height", "14"),
        a("width", "20"),
      ]),
      svg.path([a("d", "M12 17v4")]),
      svg.path([a("d", "M8 21h8")]),
    ],
  )
}


pub fn monitor_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 17v4")]),
      svg.path([
        a("d", "M17 17H4a2 2 0 0 1-2-2V5a2 2 0 0 1 1.184-1.826"),
      ]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([a("d", "M8 21h8")]),
      svg.path([
        a("d", "M8.656 3H20a2 2 0 0 1 2 2v10a2 2 0 0 1-.293 1.042"),
      ]),
    ],
  )
}


pub fn monitor_pause(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 13V7")]),
      svg.path([a("d", "M14 13V7")]),
      svg.rect([
        a("rx", "2"),
        a("y", "3"),
        a("x", "2"),
        a("height", "14"),
        a("width", "20"),
      ]),
      svg.path([a("d", "M12 17v4")]),
      svg.path([a("d", "M8 21h8")]),
    ],
  )
}


pub fn monitor_play(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M12 17v4")]),
      svg.path([a("d", "M8 21h8")]),
      svg.rect([
        a("rx", "2"),
        a("height", "14"),
        a("width", "20"),
        a("y", "3"),
        a("x", "2"),
      ]),
    ],
  )
}


pub fn monitor_smartphone(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("d", "M18 8V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v7a2 2 0 0 0 2 2h8"),
      ]),
      svg.path([a("d", "M10 19v-3.96 3.15")]),
      svg.path([a("d", "M7 19h5")]),
      svg.rect([
        a("rx", "2"),
        a("y", "12"),
        a("x", "16"),
        a("height", "10"),
        a("width", "6"),
      ]),
    ],
  )
}


pub fn monitor_speaker(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M5.5 20H8")]),
      svg.path([a("d", "M17 9h.01")]),
      svg.rect([
        a("rx", "2"),
        a("y", "4"),
        a("x", "12"),
        a("height", "16"),
        a("width", "10"),
      ]),
      svg.path([a("d", "M8 6H4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h4")]),
      svg.circle([
        a("r", "1"),
        a("cy", "15"),
        a("cx", "17"),
      ]),
    ],
  )
}


pub fn monitor_stop(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 17v4")]),
      svg.path([a("d", "M8 21h8")]),
      svg.rect([
        a("rx", "2"),
        a("height", "14"),
        a("width", "20"),
        a("y", "3"),
        a("x", "2"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("height", "6"),
        a("width", "6"),
        a("y", "7"),
        a("x", "9"),
      ]),
    ],
  )
}


pub fn monitor_up(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m9 10 3-3 3 3")]),
      svg.path([a("d", "M12 13V7")]),
      svg.rect([
        a("rx", "2"),
        a("y", "3"),
        a("x", "2"),
        a("height", "14"),
        a("width", "20"),
      ]),
      svg.path([a("d", "M12 17v4")]),
      svg.path([a("d", "M8 21h8")]),
    ],
  )
}


pub fn monitor_x(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m14.5 12.5-5-5")]),
      svg.path([a("d", "m9.5 12.5 5-5")]),
      svg.rect([
        a("rx", "2"),
        a("y", "3"),
        a("x", "2"),
        a("height", "14"),
        a("width", "20"),
      ]),
      svg.path([a("d", "M12 17v4")]),
      svg.path([a("d", "M8 21h8")]),
    ],
  )
}


pub fn moon(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M20.985 12.486a9 9 0 1 1-9.473-9.472c.405-.022.617.46.402.803a6 6 0 0 0 8.268 8.268c.344-.215.825-.004.803.401",
        ),
      ]),
    ],
  )
}


pub fn moon_star(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M18 5h4")]),
      svg.path([a("d", "M20 3v4")]),
      svg.path([
        a(
          "d",
          "M20.985 12.486a9 9 0 1 1-9.473-9.472c.405-.022.617.46.402.803a6 6 0 0 0 8.268 8.268c.344-.215.825-.004.803.401",
        ),
      ]),
    ],
  )
}


pub fn motorbike(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m18 14-1-3")]),
      svg.path([a("d", "m3 9 6 2a2 2 0 0 1 2-2h2a2 2 0 0 1 1.99 1.81")]),
      svg.path([
        a(
          "d",
          "M8 17h3a1 1 0 0 0 1-1 6 6 0 0 1 6-6 1 1 0 0 0 1-1v-.75A5 5 0 0 0 17 5",
        ),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "17"),
        a("cx", "19"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "17"),
        a("cx", "5"),
      ]),
    ],
  )
}


pub fn mountain(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [svg.path([a("d", "m8 3 4 8 5-5 5 15H2L8 3z")])],
  )
}


pub fn mountain_snow(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m8 3 4 8 5-5 5 15H2L8 3z")]),
      svg.path([
        a(
          "d",
          "M4.14 15.08c2.62-1.57 5.24-1.43 7.86.42 2.74 1.94 5.49 2 8.23.19",
        ),
      ]),
    ],
  )
}


pub fn mouse(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("rx", "7"),
        a("height", "20"),
        a("width", "14"),
        a("y", "2"),
        a("x", "5"),
      ]),
      svg.path([a("d", "M12 6v4")]),
    ],
  )
}


pub fn mouse_left(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 7.318V10")]),
      svg.path([
        a("d", "M5 10v5a7 7 0 0 0 14 0V9c0-3.527-2.608-6.515-6-7"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "4"),
        a("cx", "7"),
      ]),
    ],
  )
}


pub fn mouse_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 6v.343")]),
      svg.path([
        a("d", "M18.218 18.218A7 7 0 0 1 5 15V9a7 7 0 0 1 .782-3.218"),
      ]),
      svg.path([a("d", "M19 13.343V9A7 7 0 0 0 8.56 2.902")]),
      svg.path([a("d", "M22 22 2 2")]),
    ],
  )
}


pub fn mouse_pointer(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12.586 12.586 19 19")]),
      svg.path([
        a(
          "d",
          "M3.688 3.037a.497.497 0 0 0-.651.651l6.5 15.999a.501.501 0 0 0 .947-.062l1.569-6.083a2 2 0 0 1 1.448-1.479l6.124-1.579a.5.5 0 0 0 .063-.947z",
        ),
      ]),
    ],
  )
}


pub fn mouse_pointer_2(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M4.037 4.688a.495.495 0 0 1 .651-.651l16 6.5a.5.5 0 0 1-.063.947l-6.124 1.58a2 2 0 0 0-1.438 1.435l-1.579 6.126a.5.5 0 0 1-.947.063z",
        ),
      ]),
    ],
  )
}


pub fn mouse_pointer_2_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "m15.55 8.45 5.138 2.087a.5.5 0 0 1-.063.947l-6.124 1.58a2 2 0 0 0-1.438 1.435l-1.579 6.126a.5.5 0 0 1-.947.063L8.45 15.551",
        ),
      ]),
      svg.path([a("d", "M22 2 2 22")]),
      svg.path([
        a("d", "m6.816 11.528-2.779-6.84a.495.495 0 0 1 .651-.651l6.84 2.779"),
      ]),
    ],
  )
}


pub fn mouse_pointer_ban(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
          "M2.034 2.681a.498.498 0 0 1 .647-.647l9 3.5a.5.5 0 0 1-.033.944L8.204 7.545a1 1 0 0 0-.66.66l-1.066 3.443a.5.5 0 0 1-.944.033z",
        ),
      ]),
      svg.circle([
        a("r", "6"),
        a("cy", "16"),
        a("cx", "16"),
      ]),
      svg.path([a("d", "m11.8 11.8 8.4 8.4")]),
    ],
  )
}


pub fn mouse_pointer_click(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M14 4.1 12 6")]),
      svg.path([a("d", "m5.1 8-2.9-.8")]),
      svg.path([a("d", "m6 12-1.9 2")]),
      svg.path([a("d", "M7.2 2.2 8 5.1")]),
      svg.path([
        a(
          "d",
          "M9.037 9.69a.498.498 0 0 1 .653-.653l11 4.5a.5.5 0 0 1-.074.949l-4.349 1.041a1 1 0 0 0-.74.739l-1.04 4.35a.5.5 0 0 1-.95.074z",
        ),
      ]),
    ],
  )
}


pub fn mouse_right(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 7.318V10")]),
      svg.path([
        a("d", "M19 10v5a7 7 0 0 1-14 0V9c0-3.527 2.608-6.515 6-7"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "4"),
        a("cx", "17"),
      ]),
    ],
  )
}


pub fn move(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "m15 19-3 3-3-3")]),
      svg.path([a("d", "m19 9 3 3-3 3")]),
      svg.path([a("d", "M2 12h20")]),
      svg.path([a("d", "m5 9-3 3 3 3")]),
      svg.path([a("d", "m9 5 3-3 3 3")]),
    ],
  )
}


pub fn move_3d(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M5 3v16h16")]),
      svg.path([a("d", "m5 19 6-6")]),
      svg.path([a("d", "m2 6 3-3 3 3")]),
      svg.path([a("d", "m18 16 3 3-3 3")]),
    ],
  )
}


pub fn move_diagonal(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M11 19H5v-6")]),
      svg.path([a("d", "M13 5h6v6")]),
      svg.path([a("d", "M19 5 5 19")]),
    ],
  )
}


pub fn move_diagonal_2(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M19 13v6h-6")]),
      svg.path([a("d", "M5 11V5h6")]),
      svg.path([a("d", "m5 5 14 14")]),
    ],
  )
}


pub fn move_down(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M8 18L12 22L16 18")]),
      svg.path([a("d", "M12 2V22")]),
    ],
  )
}


pub fn move_down_left(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M11 19H5V13")]),
      svg.path([a("d", "M19 5L5 19")]),
    ],
  )
}


pub fn move_down_right(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M19 13V19H13")]),
      svg.path([a("d", "M5 5L19 19")]),
    ],
  )
}


pub fn move_horizontal(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m18 8 4 4-4 4")]),
      svg.path([a("d", "M2 12h20")]),
      svg.path([a("d", "m6 8-4 4 4 4")]),
    ],
  )
}


pub fn move_left(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M6 8L2 12L6 16")]),
      svg.path([a("d", "M2 12H22")]),
    ],
  )
}


pub fn move_right(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M18 8L22 12L18 16")]),
      svg.path([a("d", "M2 12H22")]),
    ],
  )
}


pub fn move_up(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M8 6L12 2L16 6")]),
      svg.path([a("d", "M12 2V22")]),
    ],
  )
}


pub fn move_up_left(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M5 11V5H11")]),
      svg.path([a("d", "M5 5L19 19")]),
    ],
  )
}


pub fn move_up_right(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M13 5H19V11")]),
      svg.path([a("d", "M19 5L5 19")]),
    ],
  )
}


pub fn move_vertical(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "m8 18 4 4 4-4")]),
      svg.path([a("d", "m8 6 4-4 4 4")]),
    ],
  )
}


pub fn music(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M9 18V5l12-2v13")]),
      svg.circle([
        a("r", "3"),
        a("cy", "18"),
        a("cx", "6"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "16"),
        a("cx", "18"),
      ]),
    ],
  )
}


pub fn music_2(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("cy", "18"),
        a("cx", "8"),
      ]),
      svg.path([a("d", "M12 18V2l7 4")]),
    ],
  )
}


pub fn music_3(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("cy", "18"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M16 18V2")]),
    ],
  )
}


pub fn music_4(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M9 18V5l12-2v13")]),
      svg.path([a("d", "m9 9 12-2")]),
      svg.circle([
        a("r", "3"),
        a("cy", "18"),
        a("cx", "6"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "16"),
        a("cx", "18"),
      ]),
    ],
  )
}
