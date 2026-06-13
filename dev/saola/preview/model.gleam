import gleam/dict.{type Dict}
import gleam/option.{type Option}
import gleam/time/calendar.{type Date, type Month}
import saola/data_table
import saola/graph_layout.{type NodePosition}
import saola/theme
import saola/time_picker.{type TimeValue}
import saola/toast

pub type HeatmapRipple {
  HeatmapRipple(row: Int, col: Int, counter: Int)
}

pub type HeatmapHover {
  HeatmapHover(row: Int, col: Int, value: Int, mouse_x: Float, mouse_y: Float)
}

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
  Separators
  Tooltips
  Switches
  Sliders
  Selects
  Fields
  Accordions
  Progresses
  Skeletons
  Avatars
  RadioGroups
  Toggles
  ToggleGroups
  Breadcrumbs
  Paginations
  ScrollAreas
  AspectRatios
  Collapsibles
  Popovers
  AlertDialogs
  HoverCards
  InputOtps
  Sheets
  Menubars
  Calendars
  DatePickers
  Spinners
  NativeSelects
  ButtonGroups
  InputGroups
  ContextMenus
  Drawers
  Sidebars
  Commands
  Resizables
  DataTables
  Carousels
  Comboboxes
  NavigationMenus
  Empties
  Items
  FormValidation
  Searches
  Ratings
  NavigationBars
  Steppers
  TreeViews
  TimePickers
  Multiselects
  Timelines
  CanvasStressTest
  WidgetDashboard
  HeatmapComparison
  ThreatIntelNetwork
}

pub type Model {
  Model(
    route: Route,
    // ID of the dropdown widget to be open
    open_dropdown: Option(String),
    // Active tab ID for the Tabs preview page
    active_tab: String,
    // Whether the demo dialog is open
    is_dialog_open: Bool,
    // List of active toasts
    toasts: List(toast.Toast(Message)),
    form_name: String,
    form_email: String,
    form_message: String,
    form_submitted_values: List(#(String, String)),
    // Switch preview state: keyed by switch ID
    switch_notifications: Bool,
    switch_marketing: Bool,
    // Slider preview state
    slider_volume: Int,
    slider_brightness: Int,
    // Select preview state
    select_fruit: String,
    select_timezone: String,
    // Accordion preview state
    accordion_open: List(String),
    // Toggle group preview state
    toggle_group_selected: List(String),
    // Pagination preview state
    pagination_page: Int,
    // Collapsible preview state
    collapsible_open: Bool,
    // Popover preview state
    popover_open: Bool,
    // Alert dialog preview state
    alert_dialog_open: Bool,
    // Hover card preview state
    hover_card_open: Bool,
    // Input OTP preview state
    input_otp_value: String,
    // Sheet preview state
    sheet_open: Bool,
    // Menubar preview state
    menubar_open: String,
    // Toggle pressed states
    toggle_bold: Bool,
    toggle_italic: Bool,
    // Calendar / DatePicker preview state
    calendar_selected: Option(Date),
    calendar_view_year: Int,
    calendar_view_month: Month,
    date_picker_1_state: DatePickerState,
    date_picker_2_state: DatePickerState,
    // Native select preview state
    native_select_value: String,
    // Context menu preview state
    context_menu_open: Bool,
    context_menu_x: Int,
    context_menu_y: Int,
    // Drawer preview state
    drawer_open: Bool,
    // Sidebar preview state
    sidebar_open: Bool,
    sidebar_collapsed: Bool,
    // Command preview state
    command_query: String,
    command_highlighted: Int,
    // Resizable preview state
    resizable_split_sizes: List(Float),
    // Data table preview state
    data_table_state: data_table.DataTableState,
    // Carousel preview state
    carousel_horizontal: CarouselState,
    carousel_vertical: CarouselState,
    // Combobox preview state
    combobox_value: Option(String),
    combobox_query: String,
    // Navigation menu preview state
    nav_menu_open: Option(String),
    // Active color theme
    theme: theme.Theme,
    // Tracks current OS color scheme for System theme
    os_color_scheme: theme.OsColorScheme,
    // Form validation demo (signup form)
    signup_name: String,
    signup_email: String,
    signup_password: String,
    signup_confirm: String,
    signup_errors: Dict(String, String),
    signup_success: Bool,
    // Batch 11 widget preview state
    search_query: String,
    rating_value: Int,
    stepper_step: Int,
    tree_open_ids: List(String),
    time_picker_value: Option(TimeValue),
    multiselect_values: List(String),
    // Canvas stress test
    stress_offset: Int,
    stress_zoom: Int,
    stress_selected: Option(String),
    // Widget dashboard
    dash_search: String,
    dash_page: Int,
    dash_drawer_open: Bool,
    dash_selected_id: Option(String),
    // Threat Intelligence Network demo
    threat_selected_ids: List(String),
    threat_severity_filter: List(String),
    threat_search: String,
    threat_map_country_filter: Option(String),
    threat_graph_positions: List(NodePosition),
    threat_graph_layout_done: Bool,
    threat_graph_pan: #(Float, Float),
    threat_graph_zoom: Float,
    threat_graph_hovered: Option(String),
    threat_table_state: data_table.DataTableState,
    threat_timeline_entity: Option(String),
    // Heatmap comparison
    heatmap_size: Int,
    heatmap_cell_px: Int,
    heatmap_scheme: String,
    heatmap_seed: Int,
    heatmap_anim_time: Float,
    heatmap_last_ts: Float,
    heatmap_painted: Dict(String, Bool),
    heatmap_painting: Bool,
    heatmap_ripple_count: Int,
    heatmap_svg_ripple: Option(HeatmapRipple),
    heatmap_canvas_ripple: Option(HeatmapRipple),
    heatmap_svg_hover: Option(HeatmapHover),
    heatmap_canvas_hover: Option(HeatmapHover),
  )
}

pub type CarouselState {
  CarouselState(index: Int, has_prev: Bool, has_next: Bool)
}

pub type DatePickerState {
  DatePickerState(
    selected_date: Date,
    open: Bool,
    viewed_year: Int,
    viewed_month: Month,
  )
}

pub type Message {
  OnRouteChange(Route)
  // Hold the ID of the Dropdown to be toggled
  ToggleDropdown(String)
  TabChanged(String)
  OpenDialog
  CloseDialog
  // User clicked outside an open widget (dropdown, dialog, popover, etc.),
  // we will close all open widgets when receiving this message.
  // When to emit this message depends on particular page.
  UserClickedOutside
  AddToast(toast.Toast(Message))
  DismissToast(String)
  FormNameChanged(String)
  FormEmailChanged(String)
  FormMessageChanged(String)
  FormSubmitted(List(#(String, String)))
  StartedTrial
  SwitchToggled(id: String, value: Bool)
  SliderChanged(id: String, value: String)
  SelectChanged(id: String, value: String)
  AccordionToggled(String)
  ToggleGroupChanged(List(String))
  PaginationChanged(Int)
  CollapsibleToggled
  PopoverOpened
  PopoverClosed
  AlertDialogOpened
  AlertDialogConfirmed
  AlertDialogCancelled
  HoverCardOpened
  HoverCardClosed
  InputOtpChanged(String)
  SheetOpened
  SheetClosed
  MenubarOpened(String)
  MenubarClosed
  ToggleBoldChanged(Bool)
  ToggleItalicChanged(Bool)
  CalendarDateSelected(Date)
  CalendarMonthChanged(Int, Month)
  DatePicker1Changed(DatePickerMessage)
  DatePicker2Changed(DatePickerMessage)
  NativeSelectChanged(String)
  ContextMenuOpened(Int, Int)
  ContextMenuClosed
  DrawerOpened
  DrawerClosed
  SidebarToggled
  SidebarCollapsedToggled
  CommandQueryChanged(String)
  CommandNavUp
  CommandNavDown
  CommandSelected(String)
  ResizableSplitSizesChanged(List(Float))
  DataTableSortChanged(String)
  DataTableFilterChanged(String)
  DataTablePageChanged(Int)
  DataTableSelectChanged(List(String))
  CarouselHorizontalMessage(CarouselMessage)
  CarouselVerticalMessage(CarouselMessage)
  ComboboxQueryChanged(String)
  ComboboxSelected(String)
  NavMenuOpenChanged(Option(String))
  ThemeSelected(theme.Theme)
  SignupNameChanged(String)
  SignupEmailChanged(String)
  SignupPasswordChanged(String)
  SignupConfirmChanged(String)
  SignupSubmitted
  SignupReset
  SystemOsDarkChanged(theme.OsColorScheme)
  // Batch 11
  SearchQueryChanged(String)
  RatingChanged(Int)
  StepperStepClicked(Int)
  TreeNodeToggled(String)
  TimePickerChanged(TimeValue)
  MultiselectChanged(List(String))
  // Canvas stress test
  StressOffsetChanged(Int)
  StressZoomChanged(Int)
  StressBarClicked(String)
  // Widget dashboard
  DashSearchChanged(String)
  DashPageChanged(Int)
  DashRowClicked(String)
  DashDrawerClosed
  // Heatmap comparison
  // Threat Intelligence Network
  ThreatIntelRouteEntered
  ThreatEntitySelected(String)
  ThreatEntityDeselected
  ThreatNodeHovered(Option(String))
  ThreatSeverityFilterChanged(List(String))
  ThreatSearchChanged(String)
  ThreatSearchCleared
  ThreatGraphPanned(Float, Float)
  ThreatGraphZoomed(Float)
  ThreatTableSortChanged(String)
  ThreatTablePageChanged(Int)
  ThreatTableRowSelected(List(String))
  ThreatTimelineEntityChanged(Option(String))
  ThreatLayoutReceived(graph_layout.LayoutResult)
  ThreatFiltersCleared
  ThreatMapCountryClicked(String)
  // Heatmap comparison
  HeatmapSizeChanged(Int)
  HeatmapCellPxChanged(Int)
  HeatmapSchemeChanged(String)
  HeatmapRandomize
  HeatmapSvgHovered(Float, Float)
  HeatmapSvgHoverLeft
  HeatmapCanvasHovered(Float, Float)
  HeatmapCanvasHoverLeft
  HeatmapSvgCellClicked(Int, Int)
  HeatmapCanvasCellClicked(Int, Int)
  HeatmapPaintStarted(Int, Int)
  HeatmapPaintEnded
  HeatmapAnimTick(Float)
}

pub type CarouselMessage {
  CarouselHasChanged(Int, Bool, Bool)
  CarouselNavPrevClicked
  CarouselNavNextClicked
}

pub type DatePickerMessage {
  DatePickerDateSelected(Date)
  DatePickerMonthChanged(Int, Month)
  DatePickerOpen
  DatePickerClose
}
