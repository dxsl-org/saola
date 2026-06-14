import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h

pub type AvatarSize {
  Small
  Medium
  Large
}

pub type AvatarSource {
  /// Render an <img> with src and alt.
  ImageSrc(src: String, alt: String)
  /// Render a <span> with fallback initials (e.g. "JD").
  Initials(text: String)
}

fn size_class(size: AvatarSize) -> String {
  case size {
    Small -> "avatar-sm"
    Medium -> "avatar-md"
    Large -> "avatar-lg"
  }
}

/// Fully customizable avatar.
///
/// Example:
/// ```gleam
/// avatar(ImageSrc("https://example.com/photo.jpg", "Jane Doe"), Medium, "")
/// avatar(Initials("JD"), Large, "")
/// ```
pub fn avatar(
  source: AvatarSource,
  size: AvatarSize,
  class: String,
) -> Element(msg) {
  let extra_class = case class {
    "" -> a.none()
    c -> a.class(c)
  }
  let inner = case source {
    ImageSrc(src:, alt:) ->
      h.img([a.class("avatar-image"), a.src(src), a.alt(alt)])
    Initials(text:) ->
      h.span([a.class("avatar-fallback"), a.aria_hidden(True)], [
        h.text(text),
      ])
  }
  h.span([a.class("avatar " <> size_class(size)), extra_class], [inner])
}

/// Avatar from an image URL.
pub fn avatar_image(src: String, alt: String) -> Element(msg) {
  avatar(ImageSrc(src, alt), Medium, "")
}

/// Avatar from initials text.
pub fn avatar_initials(text: String) -> Element(msg) {
  avatar(Initials(text), Medium, "")
}
