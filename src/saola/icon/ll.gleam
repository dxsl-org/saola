import lustre/attribute.{type Attribute, attribute as a}
import lustre/element/svg

pub fn lamp(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 12v6")]),
      svg.path([
        a(
          "d",
          "M4.077 10.615A1 1 0 0 0 5 12h14a1 1 0 0 0 .923-1.385l-3.077-7.384A2 2 0 0 0 15 2H9a2 2 0 0 0-1.846 1.23Z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M8 20a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v1a1 1 0 0 1-1 1H9a1 1 0 0 1-1-1z",
        ),
      ]),
    ],
  )
}


pub fn lamp_ceiling(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 2v5")]),
      svg.path([a("d", "M14.829 15.998a3 3 0 1 1-5.658 0")]),
      svg.path([
        a(
          "d",
          "M20.92 14.606A1 1 0 0 1 20 16H4a1 1 0 0 1-.92-1.394l3-7A1 1 0 0 1 7 7h10a1 1 0 0 1 .92.606z",
        ),
      ]),
    ],
  )
}


pub fn lamp_desk(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
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
          "M10.293 2.293a1 1 0 0 1 1.414 0l2.5 2.5 5.994 1.227a1 1 0 0 1 .506 1.687l-7 7a1 1 0 0 1-1.687-.506l-1.227-5.994-2.5-2.5a1 1 0 0 1 0-1.414z",
        ),
      ]),
      svg.path([a("d", "m14.207 4.793-3.414 3.414")]),
      svg.path([
        a(
          "d",
          "M3 20a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v1a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1z",
        ),
      ]),
      svg.path([
        a("d", "m9.086 6.5-4.793 4.793a1 1 0 0 0-.18 1.17L7 18"),
      ]),
    ],
  )
}


pub fn lamp_floor(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 10v12")]),
      svg.path([
        a(
          "d",
          "M17.929 7.629A1 1 0 0 1 17 9H7a1 1 0 0 1-.928-1.371l2-5A1 1 0 0 1 9 2h6a1 1 0 0 1 .928.629z",
        ),
      ]),
      svg.path([a("d", "M9 22h6")]),
    ],
  )
}


pub fn lamp_wall_down(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
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
          "M19.929 18.629A1 1 0 0 1 19 20H9a1 1 0 0 1-.928-1.371l2-5A1 1 0 0 1 11 13h6a1 1 0 0 1 .928.629z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M6 3a2 2 0 0 1 2 2v2a2 2 0 0 1-2 2H5a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1z",
        ),
      ]),
      svg.path([a("d", "M8 6h4a2 2 0 0 1 2 2v5")]),
    ],
  )
}


pub fn lamp_wall_up(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
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
          "M19.929 9.629A1 1 0 0 1 19 11H9a1 1 0 0 1-.928-1.371l2-5A1 1 0 0 1 11 4h6a1 1 0 0 1 .928.629z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M6 15a2 2 0 0 1 2 2v2a2 2 0 0 1-2 2H5a1 1 0 0 1-1-1v-4a1 1 0 0 1 1-1z",
        ),
      ]),
      svg.path([a("d", "M8 18h4a2 2 0 0 0 2-2v-5")]),
    ],
  )
}


pub fn land_plot(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m12 8 6-3-6-3v10")]),
      svg.path([
        a(
          "d",
          "m8 11.99-5.5 3.14a1 1 0 0 0 0 1.74l8.5 4.86a2 2 0 0 0 2 0l8.5-4.86a1 1 0 0 0 0-1.74L16 12",
        ),
      ]),
      svg.path([a("d", "m6.49 12.85 11.02 6.3")]),
      svg.path([a("d", "M17.51 12.85 6.5 19.15")]),
    ],
  )
}


pub fn landmark(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 18v-7")]),
      svg.path([
        a(
          "d",
          "M11.12 2.198a2 2 0 0 1 1.76.006l7.866 3.847c.476.233.31.949-.22.949H3.474c-.53 0-.695-.716-.22-.949z",
        ),
      ]),
      svg.path([a("d", "M14 18v-7")]),
      svg.path([a("d", "M18 18v-7")]),
      svg.path([a("d", "M3 22h18")]),
      svg.path([a("d", "M6 18v-7")]),
    ],
  )
}


pub fn languages(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m5 8 6 6")]),
      svg.path([a("d", "m4 14 6-6 2-3")]),
      svg.path([a("d", "M2 5h12")]),
      svg.path([a("d", "M7 2h1")]),
      svg.path([a("d", "m22 22-5-10-5 10")]),
      svg.path([a("d", "M14 18h6")]),
    ],
  )
}


pub fn laptop(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
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
          "M18 5a2 2 0 0 1 2 2v8.526a2 2 0 0 0 .212.897l1.068 2.127a1 1 0 0 1-.9 1.45H3.62a1 1 0 0 1-.9-1.45l1.068-2.127A2 2 0 0 0 4 15.526V7a2 2 0 0 1 2-2z",
        ),
      ]),
      svg.path([a("d", "M20.054 15.987H3.946")]),
    ],
  )
}


pub fn laptop_minimal(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("y", "4"),
        a("x", "3"),
        a("height", "12"),
        a("width", "18"),
      ]),
      svg.line([
        a("y2", "20"),
        a("y1", "20"),
        a("x2", "22"),
        a("x1", "2"),
      ]),
    ],
  )
}


pub fn laptop_minimal_check(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M2 20h20")]),
      svg.path([a("d", "m9 10 2 2 4-4")]),
      svg.rect([
        a("rx", "2"),
        a("height", "12"),
        a("width", "18"),
        a("y", "4"),
        a("x", "3"),
      ]),
    ],
  )
}


pub fn lasso(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M3.704 14.467a10 8 0 1 1 3.115 2.375")]),
      svg.path([a("d", "M7 22a5 5 0 0 1-2-3.994")]),
      svg.circle([
        a("r", "2"),
        a("cy", "16"),
        a("cx", "5"),
      ]),
    ],
  )
}


pub fn lasso_select(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M7 22a5 5 0 0 1-2-4")]),
      svg.path([a("d", "M7 16.93c.96.43 1.96.74 2.99.91")]),
      svg.path([
        a(
          "d",
          "M3.34 14A6.8 6.8 0 0 1 2 10c0-4.42 4.48-8 10-8s10 3.58 10 8a7.19 7.19 0 0 1-.33 2",
        ),
      ]),
      svg.path([a("d", "M5 18a2 2 0 1 0 0-4 2 2 0 0 0 0 4z")]),
      svg.path([
        a(
          "d",
          "M14.33 22h-.09a.35.35 0 0 1-.24-.32v-10a.34.34 0 0 1 .33-.34c.08 0 .15.03.21.08l7.34 6a.33.33 0 0 1-.21.59h-4.49l-2.57 3.85a.35.35 0 0 1-.28.14z",
        ),
      ]),
    ],
  )
}


pub fn laugh(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M18 13a6 6 0 0 1-6 5 6 6 0 0 1-6-5h12Z")]),
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


pub fn layers(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
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
          "M12.83 2.18a2 2 0 0 0-1.66 0L2.6 6.08a1 1 0 0 0 0 1.83l8.58 3.91a2 2 0 0 0 1.66 0l8.58-3.9a1 1 0 0 0 0-1.83z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M2 12a1 1 0 0 0 .58.91l8.6 3.91a2 2 0 0 0 1.65 0l8.58-3.9A1 1 0 0 0 22 12",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M2 17a1 1 0 0 0 .58.91l8.6 3.91a2 2 0 0 0 1.65 0l8.58-3.9A1 1 0 0 0 22 17",
        ),
      ]),
    ],
  )
}


pub fn layers_2(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
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
          "M13 13.74a2 2 0 0 1-2 0L2.5 8.87a1 1 0 0 1 0-1.74L11 2.26a2 2 0 0 1 2 0l8.5 4.87a1 1 0 0 1 0 1.74z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "m20 14.285 1.5.845a1 1 0 0 1 0 1.74L13 21.74a2 2 0 0 1-2 0l-8.5-4.87a1 1 0 0 1 0-1.74l1.5-.845",
        ),
      ]),
    ],
  )
}


pub fn layers_plus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
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
          "M12.83 2.18a2 2 0 0 0-1.66 0L2.6 6.08a1 1 0 0 0 0 1.83l8.58 3.91a2 2 0 0 0 .83.18 2 2 0 0 0 .83-.18l8.58-3.9a1 1 0 0 0 0-1.831z",
        ),
      ]),
      svg.path([a("d", "M16 17h6")]),
      svg.path([a("d", "M19 14v6")]),
      svg.path([
        a("d", "M2 12a1 1 0 0 0 .58.91l8.6 3.91a2 2 0 0 0 .825.178"),
      ]),
      svg.path([
        a("d", "M2 17a1 1 0 0 0 .58.91l8.6 3.91a2 2 0 0 0 1.65 0l2.116-.962"),
      ]),
    ],
  )
}


pub fn layout_dashboard(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("x", "3"),
        a("height", "9"),
        a("width", "7"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("y", "3"),
        a("x", "14"),
        a("height", "5"),
        a("width", "7"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("y", "12"),
        a("x", "14"),
        a("height", "9"),
        a("width", "7"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("y", "16"),
        a("x", "3"),
        a("height", "5"),
        a("width", "7"),
      ]),
    ],
  )
}


pub fn layout_grid(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("x", "3"),
        a("height", "7"),
        a("width", "7"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("y", "3"),
        a("x", "14"),
        a("height", "7"),
        a("width", "7"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("y", "14"),
        a("x", "14"),
        a("height", "7"),
        a("width", "7"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("y", "14"),
        a("x", "3"),
        a("height", "7"),
        a("width", "7"),
      ]),
    ],
  )
}


pub fn layout_list(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("x", "3"),
        a("height", "7"),
        a("width", "7"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("y", "14"),
        a("x", "3"),
        a("height", "7"),
        a("width", "7"),
      ]),
      svg.path([a("d", "M14 4h7")]),
      svg.path([a("d", "M14 9h7")]),
      svg.path([a("d", "M14 15h7")]),
      svg.path([a("d", "M14 20h7")]),
    ],
  )
}


pub fn layout_panel_left(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("x", "3"),
        a("height", "18"),
        a("width", "7"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("y", "3"),
        a("x", "14"),
        a("height", "7"),
        a("width", "7"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("y", "14"),
        a("x", "14"),
        a("height", "7"),
        a("width", "7"),
      ]),
    ],
  )
}


pub fn layout_panel_top(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("x", "3"),
        a("height", "7"),
        a("width", "18"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("y", "14"),
        a("x", "3"),
        a("height", "7"),
        a("width", "7"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("y", "14"),
        a("x", "14"),
        a("height", "7"),
        a("width", "7"),
      ]),
    ],
  )
}


pub fn layout_template(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("x", "3"),
        a("height", "7"),
        a("width", "18"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("y", "14"),
        a("x", "3"),
        a("height", "7"),
        a("width", "9"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("y", "14"),
        a("x", "16"),
        a("height", "7"),
        a("width", "5"),
      ]),
    ],
  )
}


pub fn leaf(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
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
          "M11 20A7 7 0 0 1 9.8 6.1C15.5 5 17 4.48 19 2c1 2 2 4.18 2 8 0 5.5-4.78 10-10 10Z",
        ),
      ]),
      svg.path([
        a("d", "M2 21c0-3 1.85-5.36 5.08-6C9.5 14.52 12 13 13 12"),
      ]),
    ],
  )
}


pub fn leafy_green(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
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
          "M2 22c1.25-.987 2.27-1.975 3.9-2.2a5.56 5.56 0 0 1 3.8 1.5 4 4 0 0 0 6.187-2.353 3.5 3.5 0 0 0 3.69-5.116A3.5 3.5 0 0 0 20.95 8 3.5 3.5 0 1 0 16 3.05a3.5 3.5 0 0 0-5.831 1.373 3.5 3.5 0 0 0-5.116 3.69 4 4 0 0 0-2.348 6.155C3.499 15.42 4.409 16.712 4.2 18.1 3.926 19.743 3.014 20.732 2 22",
        ),
      ]),
      svg.path([a("d", "M2 22 17 7")]),
    ],
  )
}


pub fn lectern(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
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
          "M16 12h3a2 2 0 0 0 1.902-1.38l1.056-3.333A1 1 0 0 0 21 6H3a1 1 0 0 0-.958 1.287l1.056 3.334A2 2 0 0 0 5 12h3",
        ),
      ]),
      svg.path([a("d", "M18 6V3a1 1 0 0 0-1-1h-3")]),
      svg.rect([
        a("rx", "1"),
        a("y", "10"),
        a("x", "8"),
        a("height", "12"),
        a("width", "8"),
      ]),
    ],
  )
}


pub fn lens_concave(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
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
          "M7 2a1 1 0 0 0-.8 1.6 14 14 0 0 1 0 16.8A1 1 0 0 0 7 22h10a1 1 0 0 0 .8-1.6 14 14 0 0 1 0-16.8A1 1 0 0 0 17 2z",
        ),
      ]),
    ],
  )
}


pub fn lens_convex(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
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
          "M13.433 2a1 1 0 0 1 .824.448 18 18 0 0 1 0 19.104 1 1 0 0 1-.824.448h-2.866a1 1 0 0 1-.824-.448 18 18 0 0 1 0-19.104A1 1 0 0 1 10.567 2z",
        ),
      ]),
    ],
  )
}


pub fn library(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m16 6 4 14")]),
      svg.path([a("d", "M12 6v14")]),
      svg.path([a("d", "M8 8v12")]),
      svg.path([a("d", "M4 4v16")]),
    ],
  )
}


pub fn library_big(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("x", "3"),
        a("height", "18"),
        a("width", "8"),
      ]),
      svg.path([a("d", "M7 3v18")]),
      svg.path([
        a(
          "d",
          "M20.4 18.9c.2.5-.1 1.1-.6 1.3l-1.9.7c-.5.2-1.1-.1-1.3-.6L11.1 5.1c-.2-.5.1-1.1.6-1.3l1.9-.7c.5-.2 1.1.1 1.3.6Z",
        ),
      ]),
    ],
  )
}


pub fn life_buoy(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "m4.93 4.93 4.24 4.24")]),
      svg.path([a("d", "m14.83 9.17 4.24-4.24")]),
      svg.path([a("d", "m14.83 14.83 4.24 4.24")]),
      svg.path([a("d", "m9.17 14.83-4.24 4.24")]),
      svg.circle([
        a("r", "4"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn ligature(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M14 12h2v8")]),
      svg.path([a("d", "M14 20h4")]),
      svg.path([a("d", "M6 12h4")]),
      svg.path([a("d", "M6 20h4")]),
      svg.path([a("d", "M8 20V8a4 4 0 0 1 7.464-2")]),
    ],
  )
}


pub fn lightbulb(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
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
          "M15 14c.2-1 .7-1.7 1.5-2.5 1-.9 1.5-2.2 1.5-3.5A6 6 0 0 0 6 8c0 1 .2 2.2 1.5 3.5.7.7 1.3 1.5 1.5 2.5",
        ),
      ]),
      svg.path([a("d", "M9 18h6")]),
      svg.path([a("d", "M10 22h4")]),
    ],
  )
}


pub fn lightbulb_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([
        a("d", "M16.8 11.2c.8-.9 1.2-2 1.2-3.2a6 6 0 0 0-9.3-5"),
      ]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([
        a("d", "M6.3 6.3a4.67 4.67 0 0 0 1.2 5.2c.7.7 1.3 1.5 1.5 2.5"),
      ]),
      svg.path([a("d", "M9 18h6")]),
      svg.path([a("d", "M10 22h4")]),
    ],
  )
}


pub fn line_dot_right_horizontal(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M 3 12 L 15 12")]),
      svg.circle([
        a("r", "3"),
        a("cy", "12"),
        a("cx", "18"),
      ]),
    ],
  )
}


pub fn line_squiggle(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
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
          "M7 3.5c5-2 7 2.5 3 4C1.5 10 2 15 5 16c5 2 9-10 14-7s.5 13.5-4 12c-5-2.5.5-11 6-2",
        ),
      ]),
    ],
  )
}


pub fn line_style(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M11 5h2")]),
      svg.path([a("d", "M15 12h6")]),
      svg.path([a("d", "M19 5h2")]),
      svg.path([a("d", "M3 12h6")]),
      svg.path([a("d", "M3 19h18")]),
      svg.path([a("d", "M3 5h2")]),
    ],
  )
}


pub fn link(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([
        a("d", "M10 13a5 5 0 0 0 7.54.54l3-3a5 5 0 0 0-7.07-7.07l-1.72 1.71"),
      ]),
      svg.path([
        a("d", "M14 11a5 5 0 0 0-7.54-.54l-3 3a5 5 0 0 0 7.07 7.07l1.71-1.71"),
      ]),
    ],
  )
}


pub fn link_2(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M9 17H7A5 5 0 0 1 7 7h2")]),
      svg.path([a("d", "M15 7h2a5 5 0 1 1 0 10h-2")]),
      svg.line([
        a("y2", "12"),
        a("y1", "12"),
        a("x2", "16"),
        a("x1", "8"),
      ]),
    ],
  )
}


pub fn link_2_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M9 17H7A5 5 0 0 1 7 7")]),
      svg.path([a("d", "M15 7h2a5 5 0 0 1 4 8")]),
      svg.line([
        a("y2", "12"),
        a("y1", "12"),
        a("x2", "12"),
        a("x1", "8"),
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


pub fn list(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M3 5h.01")]),
      svg.path([a("d", "M3 12h.01")]),
      svg.path([a("d", "M3 19h.01")]),
      svg.path([a("d", "M8 5h13")]),
      svg.path([a("d", "M8 12h13")]),
      svg.path([a("d", "M8 19h13")]),
    ],
  )
}


pub fn list_check(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M11 19H3")]),
      svg.path([a("d", "m15 18 2 2 4-4")]),
    ],
  )
}


pub fn list_checks(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M13 5h8")]),
      svg.path([a("d", "M13 12h8")]),
      svg.path([a("d", "M13 19h8")]),
      svg.path([a("d", "m3 17 2 2 4-4")]),
      svg.path([a("d", "m3 7 2 2 4-4")]),
    ],
  )
}


pub fn list_chevrons_down_up(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M3 5h8")]),
      svg.path([a("d", "M3 12h8")]),
      svg.path([a("d", "M3 19h8")]),
      svg.path([a("d", "m15 5 3 3 3-3")]),
      svg.path([a("d", "m15 19 3-3 3 3")]),
    ],
  )
}


pub fn list_chevrons_up_down(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M3 5h8")]),
      svg.path([a("d", "M3 12h8")]),
      svg.path([a("d", "M3 19h8")]),
      svg.path([a("d", "m15 8 3-3 3 3")]),
      svg.path([a("d", "m15 16 3 3 3-3")]),
    ],
  )
}


pub fn list_collapse(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 5h11")]),
      svg.path([a("d", "M10 12h11")]),
      svg.path([a("d", "M10 19h11")]),
      svg.path([a("d", "m3 10 3-3-3-3")]),
      svg.path([a("d", "m3 20 3-3-3-3")]),
    ],
  )
}


pub fn list_end(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M9 19H3")]),
      svg.path([a("d", "m16 16-3 3 3 3")]),
      svg.path([a("d", "M21 5v12a2 2 0 0 1-2 2h-6")]),
    ],
  )
}


pub fn list_filter(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M2 5h20")]),
      svg.path([a("d", "M6 12h12")]),
      svg.path([a("d", "M9 19h6")]),
    ],
  )
}


pub fn list_filter_plus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 5H2")]),
      svg.path([a("d", "M6 12h12")]),
      svg.path([a("d", "M9 19h6")]),
      svg.path([a("d", "M16 5h6")]),
      svg.path([a("d", "M19 8V2")]),
    ],
  )
}


pub fn list_indent_decrease(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M21 5H11")]),
      svg.path([a("d", "M21 12H11")]),
      svg.path([a("d", "M21 19H11")]),
      svg.path([a("d", "m7 8-4 4 4 4")]),
    ],
  )
}


pub fn list_indent_increase(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M21 5H11")]),
      svg.path([a("d", "M21 12H11")]),
      svg.path([a("d", "M21 19H11")]),
      svg.path([a("d", "m3 8 4 4-4 4")]),
    ],
  )
}


pub fn list_minus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M11 12H3")]),
      svg.path([a("d", "M16 19H3")]),
      svg.path([a("d", "M21 12h-6")]),
    ],
  )
}


pub fn list_music(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M11 12H3")]),
      svg.path([a("d", "M11 19H3")]),
      svg.path([a("d", "M21 16V5")]),
      svg.circle([
        a("r", "3"),
        a("cy", "16"),
        a("cx", "18"),
      ]),
    ],
  )
}


pub fn list_ordered(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M11 5h10")]),
      svg.path([a("d", "M11 12h10")]),
      svg.path([a("d", "M11 19h10")]),
      svg.path([a("d", "M4 4h1v5")]),
      svg.path([a("d", "M4 9h2")]),
      svg.path([
        a("d", "M6.5 20H3.4c0-1 2.6-1.925 2.6-3.5a1.5 1.5 0 0 0-2.6-1.02"),
      ]),
    ],
  )
}


pub fn list_plus(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M11 12H3")]),
      svg.path([a("d", "M16 19H3")]),
      svg.path([a("d", "M18 9v6")]),
      svg.path([a("d", "M21 12h-6")]),
    ],
  )
}


pub fn list_restart(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M7 12H3")]),
      svg.path([a("d", "M7 19H3")]),
      svg.path([
        a(
          "d",
          "M12 18a5 5 0 0 0 9-3 4.5 4.5 0 0 0-4.5-4.5c-1.33 0-2.54.54-3.41 1.41L11 14",
        ),
      ]),
      svg.path([a("d", "M11 10v4h4")]),
    ],
  )
}


pub fn list_start(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M3 5h6")]),
      svg.path([a("d", "M3 12h13")]),
      svg.path([a("d", "M3 19h13")]),
      svg.path([a("d", "m16 8-3-3 3-3")]),
      svg.path([a("d", "M21 19V7a2 2 0 0 0-2-2h-6")]),
    ],
  )
}


pub fn list_todo(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M13 5h8")]),
      svg.path([a("d", "M13 12h8")]),
      svg.path([a("d", "M13 19h8")]),
      svg.path([a("d", "m3 17 2 2 4-4")]),
      svg.rect([
        a("rx", "1"),
        a("height", "6"),
        a("width", "6"),
        a("y", "4"),
        a("x", "3"),
      ]),
    ],
  )
}


pub fn list_tree(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M8 5h13")]),
      svg.path([a("d", "M13 12h8")]),
      svg.path([a("d", "M13 19h8")]),
      svg.path([a("d", "M3 10a2 2 0 0 0 2 2h3")]),
      svg.path([a("d", "M3 5v12a2 2 0 0 0 2 2h3")]),
    ],
  )
}


pub fn list_video(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([
        a(
          "d",
          "M15 12.003a1 1 0 0 1 1.517-.859l4.997 2.997a1 1 0 0 1 0 1.718l-4.997 2.997a1 1 0 0 1-1.517-.86z",
        ),
      ]),
    ],
  )
}


pub fn list_x(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M11 12H3")]),
      svg.path([a("d", "M16 19H3")]),
      svg.path([a("d", "m15.5 9.5 5 5")]),
      svg.path([a("d", "m20.5 9.5-5 5")]),
    ],
  )
}


pub fn loader(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 2v4")]),
      svg.path([a("d", "m16.2 7.8 2.9-2.9")]),
      svg.path([a("d", "M18 12h4")]),
      svg.path([a("d", "m16.2 16.2 2.9 2.9")]),
      svg.path([a("d", "M12 18v4")]),
      svg.path([a("d", "m4.9 19.1 2.9-2.9")]),
      svg.path([a("d", "M2 12h4")]),
      svg.path([a("d", "m4.9 4.9 2.9 2.9")]),
    ],
  )
}


pub fn loader_circle(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [svg.path([a("d", "M21 12a9 9 0 1 1-6.219-8.56")])],
  )
}


pub fn loader_pinwheel(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M22 12a1 1 0 0 1-10 0 1 1 0 0 0-10 0")]),
      svg.path([a("d", "M7 20.7a1 1 0 1 1 5-8.7 1 1 0 1 0 5-8.6")]),
      svg.path([a("d", "M7 3.3a1 1 0 1 1 5 8.6 1 1 0 1 0 5 8.6")]),
      svg.circle([
        a("r", "10"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn locate(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("y1", "12"),
        a("x2", "5"),
        a("x1", "2"),
      ]),
      svg.line([
        a("y2", "12"),
        a("y1", "12"),
        a("x2", "22"),
        a("x1", "19"),
      ]),
      svg.line([
        a("y2", "5"),
        a("y1", "2"),
        a("x2", "12"),
        a("x1", "12"),
      ]),
      svg.line([
        a("y2", "22"),
        a("y1", "19"),
        a("x2", "12"),
        a("x1", "12"),
      ]),
      svg.circle([
        a("r", "7"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn locate_fixed(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("y1", "12"),
        a("x2", "5"),
        a("x1", "2"),
      ]),
      svg.line([
        a("y2", "12"),
        a("y1", "12"),
        a("x2", "22"),
        a("x1", "19"),
      ]),
      svg.line([
        a("y2", "5"),
        a("y1", "2"),
        a("x2", "12"),
        a("x1", "12"),
      ]),
      svg.line([
        a("y2", "22"),
        a("y1", "19"),
        a("x2", "12"),
        a("x1", "12"),
      ]),
      svg.circle([
        a("r", "7"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn locate_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([a("d", "M12 2v3")]),
      svg.path([a("d", "M18.89 13.24a7 7 0 0 0-8.13-8.13")]),
      svg.path([a("d", "M19 12h3")]),
      svg.path([a("d", "M2 12h3")]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([a("d", "M7.05 7.05a7 7 0 0 0 9.9 9.9")]),
    ],
  )
}


pub fn lock(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("y", "11"),
        a("x", "3"),
        a("height", "11"),
        a("width", "18"),
      ]),
      svg.path([a("d", "M7 11V7a5 5 0 0 1 10 0v4")]),
    ],
  )
}


pub fn lock_keyhole(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("cy", "16"),
        a("cx", "12"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("height", "12"),
        a("width", "18"),
        a("y", "10"),
        a("x", "3"),
      ]),
      svg.path([a("d", "M7 10V7a5 5 0 0 1 10 0v3")]),
    ],
  )
}


pub fn lock_keyhole_open(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("cy", "16"),
        a("cx", "12"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("y", "10"),
        a("x", "3"),
        a("height", "12"),
        a("width", "18"),
      ]),
      svg.path([a("d", "M7 10V7a5 5 0 0 1 9.33-2.5")]),
    ],
  )
}


pub fn lock_open(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
        a("y", "11"),
        a("x", "3"),
        a("height", "11"),
        a("width", "18"),
      ]),
      svg.path([a("d", "M7 11V7a5 5 0 0 1 9.9-1")]),
    ],
  )
}


pub fn log_in(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m10 17 5-5-5-5")]),
      svg.path([a("d", "M15 12H3")]),
      svg.path([a("d", "M15 3h4a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-4")]),
    ],
  )
}


pub fn log_out(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m16 17 5-5-5-5")]),
      svg.path([a("d", "M21 12H9")]),
      svg.path([a("d", "M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4")]),
    ],
  )
}


pub fn logs(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M3 5h1")]),
      svg.path([a("d", "M3 12h1")]),
      svg.path([a("d", "M3 19h1")]),
      svg.path([a("d", "M8 5h1")]),
      svg.path([a("d", "M8 12h1")]),
      svg.path([a("d", "M8 19h1")]),
      svg.path([a("d", "M13 5h8")]),
      svg.path([a("d", "M13 12h8")]),
      svg.path([a("d", "M13 19h8")]),
    ],
  )
}


pub fn lollipop(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
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
      svg.path([
        a("d", "M11 11a2 2 0 0 0 4 0 4 4 0 0 0-8 0 6 6 0 0 0 12 0"),
      ]),
    ],
  )
}


pub fn luggage(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
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
          "M6 20a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2",
        ),
      ]),
      svg.path([a("d", "M8 18V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v14")]),
      svg.path([a("d", "M10 20h4")]),
      svg.circle([
        a("r", "2"),
        a("cy", "20"),
        a("cx", "16"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "20"),
        a("cx", "8"),
      ]),
    ],
  )
}
