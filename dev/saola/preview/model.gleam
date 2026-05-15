import gleam/option.{type Option}
import saola/toast as saola_toast

// Note: Keep these in sync with the route handlers in view.gleam and the
// nav links in the sidebar.
pub type Route {
  Home
  Alerts
  Badges
  Cards
  Inputs
  Forms
  Buttons
  DropdownMenus
  Tabs
  Dialogs
  Tables
  Toasts
  D3Charts
  MonacoEditor
  ExampleForm
  ExampleSite
}

pub type Model {
  Model(
    route: Route,
    // ID of the dropdown widget to be open
    // (for the preview page of dropdown menus, where we have many widgets)
    open_dropdown: Option(String),
    // Active tab ID for the Tabs preview page
    active_tab: String,
    // Whether the demo dialog is open
    is_dialog_open: Bool,
    // List of active toasts
    toasts: List(saola_toast.Toast),
    form_name: String,
    form_email: String,
    form_message: String,
    form_submitted_values: List(#(String, String)),
  )
}

pub type Msg {
  OnRouteChange(Route)
  ToggleDropdown(String)
  TabChanged(String)
  OpenDialog
  CloseDialog
  AddToast(saola_toast.Toast)
  DismissToast(String)
  FormNameChanged(String)
  FormEmailChanged(String)
  FormMessageChanged(String)
  FormSubmitted(List(#(String, String)))
  StartedTrial
}
