import lustre/effect.{type Effect}

pub type Theme {
  Light
  Dark
  System
}

/// Returns an Effect that registers a one-time OS dark-mode listener.
/// Pass `is_active: True` when your app is in System theme mode.
/// The listener persists for the page lifetime and fires `to_msg` on OS preference changes.
pub fn watch_system_dark(
  is_active: Bool,
  to_msg: fn(Bool) -> msg,
) -> Effect(msg) {
  case is_active {
    False -> effect.none()
    True -> {
      use dispatch <- effect.from
      do_watch_media_query("(prefers-color-scheme: dark)", fn(is_dark) {
        dispatch(to_msg(is_dark))
      })
    }
  }
}

/// Applies the theme by toggling the `dark` class on `<html>`.
pub fn apply_to_html(theme: Theme, system_os_dark: Bool) -> Effect(msg) {
  let is_dark = case theme {
    Dark -> True
    Light -> False
    System -> system_os_dark
  }
  use _dispatch <- effect.from
  do_set_html_theme(is_dark)
}

/// Returns the current OS dark-mode preference. Safe to call at init time.
@external(javascript, "./theme-ffi.mjs", "getCurrentDarkMode")
pub fn get_system_dark() -> Bool

@external(javascript, "./theme-ffi.mjs", "watchMediaQuery")
fn do_watch_media_query(query: String, callback: fn(Bool) -> Nil) -> Nil

@external(javascript, "./theme-ffi.mjs", "setHtmlTheme")
fn do_set_html_theme(is_dark: Bool) -> Nil
