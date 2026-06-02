import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/avatar
import saola/preview/model.{type Message}

pub fn view() -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Avatar")]),
    h.p([a.class("page-description")], [
      text("User avatars with image and initials fallback."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Initials")]),
        h.div([a.class("flex gap-4 items-center")], [
          avatar.avatar_full(avatar.Initials("JD"), avatar.Small, ""),
          avatar.avatar_full(avatar.Initials("AB"), avatar.Medium, ""),
          avatar.avatar_full(avatar.Initials("XY"), avatar.Large, ""),
        ]),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Image")]),
        h.div([a.class("flex gap-4 items-center")], [
          avatar.avatar_full(
            avatar.ImageSrc(
              "https://api.dicebear.com/7.x/avataaars/svg?seed=saola",
              "Saola avatar",
            ),
            avatar.Small,
            "",
          ),
          avatar.avatar_full(
            avatar.ImageSrc(
              "https://api.dicebear.com/7.x/avataaars/svg?seed=lustre",
              "Lustre avatar",
            ),
            avatar.Medium,
            "",
          ),
          avatar.avatar_full(
            avatar.ImageSrc(
              "https://api.dicebear.com/7.x/avataaars/svg?seed=gleam",
              "Gleam avatar",
            ),
            avatar.Large,
            "",
          ),
        ]),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Shortcuts")]),
        h.div([a.class("flex gap-4 items-center")], [
          avatar.avatar_initials("NG"),
          avatar.avatar_image(
            "https://api.dicebear.com/7.x/avataaars/svg?seed=ng",
            "User avatar",
          ),
        ]),
      ]),
    ]),
  ])
}
