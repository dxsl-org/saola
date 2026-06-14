import gleam/dynamic.{type Dynamic}
import plinth/browser/element.{type Element}

@external(javascript, "./component-helpers.ffi.mjs", "isOutOfView")
pub fn is_out_of_view(element: Element, container: Element) -> Bool

@external(javascript, "./component-helpers.ffi.mjs", "addOutsideClickListener")
pub fn add_outside_click_listener(root: Dynamic, callback: fn() -> Nil) -> Nil
