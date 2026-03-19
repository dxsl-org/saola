pub type Route {
  Home
  Alerts
  Inputs
  Forms
}

pub type Model {
  Model(route: Route)
}

pub type Msg {
  OnRouteChange(Route)
}
