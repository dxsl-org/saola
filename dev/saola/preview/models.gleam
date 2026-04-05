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
  Model(route: Route)
}

pub type Msg {
  OnRouteChange(Route)
}
