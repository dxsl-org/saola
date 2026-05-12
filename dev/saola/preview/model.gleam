import gleam/option.{type Option}

// Note: Keep these in sync:
//  - on_url_change
pub type Route {
  Home
  Alerts
  Inputs
  Forms
  Buttons
  DropdownMenus
}

pub type Model {
  Model(
    route: Route,
    // ID of the dropdown widget to be open
    // (for the preview page of dropdown menus, where we have many widgets)
    open_dropdown: Option(String),
  )
}

pub type Msg {
  OnRouteChange(Route)
  ToggleDropdown(String)
}
