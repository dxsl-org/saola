# Saola Project Changelog

All notable changes to the Saola UI Kit are documented here.

## [2026-05-18] — Canvas Architecture: Display List Rendering & D3 Graph Layout

### Summary

Implemented a major new visualization architecture enabling efficient canvas-based rendering with hit-testing and D3 force-layout graph visualization. Gleam/Lustre now owns all visualization logic, emitting typed command lists and hit areas to a custom `<saola-canvas>` element for Hardware-accelerated drawing.

### Architecture Overview

**Display List Pattern:**
- All visualization logic lives in Gleam (stateless, purely functional)
- Gleam outputs `List(CanvasCommand)` + `List(HitArea(msg))`
- `<saola-canvas>` custom element executes commands via Canvas 2D API
- Mouse events return coordinates back to Gleam for hit-testing
- Hit-testing runs in Gleam → returns typed message

**Graph Layout Pipeline:**
- `request_layout(nodes, edges, to_msg)` launches D3 force simulation in a JS Worker
- Worker returns normalized positions [0, 1] to Gleam (no canvas coordinates baked in)
- Gleam receives `LayoutResult(positions, edge_routes)` via Lustre Effect
- Consumer assembles graph visualization with `entity_graph_canvas()`

### New Modules

**Canvas Core** (`src/saola/canvas_command.gleam`)
- `CanvasCommand` ADT: SetFill, FillRect, Arc, FillText, SetTextAlign, SetTextBaseline, Save/Restore, Transform stack, paths, etc.
- `HitArea(msg)` ADT: RectHit, CircleHit for interactive regions
- `CanvasOutput(msg)` record: pairs commands with hit areas
- `hit_test(areas, x, y) -> Option(msg)` — runs in Gleam on tap events
- JSON encoding helpers for property serialization

**Canvas Element** (`src/saola/canvas_ffi.mjs`)
- `<saola-canvas>` custom element: DPR-scaled canvas setup, ResizeObserver
- Command executor: interprets `CanvasCommand` list, updates canvas state
- Event system: tap, hover, drag, wheel → detail records with x/y/dx/dy
- Property setters for `commands` and `hitAreas` (JS properties, not attributes)

**Graph Layout** (`src/saola/graph_layout.gleam`)
- `LayoutNode(id)` and `LayoutEdge(source, target)` inputs
- `NodePosition(id, x, y)` and `EdgeRoute(source_id, target_id, points)` outputs
- `request_layout(nodes, edges, to_msg) -> Effect(msg)` — async Effect for Worker
- JSON encode/decode for IPC with Worker thread

**Graph Layout Worker** (`src/saola/graph_layout_worker.js`)
- D3 force simulation (d3-force library)
- Node repulsion, edge attraction, simulation loop
- Returns normalized [0,1] coordinates

**Graph Layout FFI** (`src/saola/graph_layout_ffi.mjs`)
- Lazy Worker spawn and message routing
- Handles Worker lifecycle and JSON IPC

**Entity Graph Canvas** (`src/saola/entity_graph_canvas.gleam`)
- `entity_graph_canvas(nodes, edges, positions, attrs, on_node_tap) -> CanvasOutput(msg)`
- Builds node/edge commands from layout positions
- Includes pan/zoom transform stack
- `entity_graph_element(output, on_tap, on_drag, on_zoom) -> Element(msg)`
- Bridges CanvasOutput to Lustre Element via `<saola-canvas>` custom element

### Modified Modules

**Bar Chart** (`src/saola/lustre_bar_chart.gleam`)
- Added `bar_chart_canvas(data, attrs, on_bar_click) -> CanvasOutput(msg)`
- Parallel to existing SVG `bar_chart()` function
- Demonstrates display-list rendering pattern for common visualization

### Deleted Modules

**Cytoscape Wrapper** (removed)
- `src/saola/entity_graph.gleam` — Replaced by entity_graph_canvas.gleam
- `src/saola/entity_graph_ffi.mjs` — Cytoscape blackbox eliminated
- Rationale: Canvas architecture gives full control, eliminates Cytoscape dependency, enables pan/zoom/hit-testing in Gleam

### Key Design Principles

1. **Gleam owns visualization** — No imperative JS state management; Gleam emits declarative commands
2. **Typed hit areas** — Interactive regions are strongly-typed `HitArea(msg)`, not event listeners in JS
3. **Worker isolation** — Heavy D3 layout computation off main thread
4. **Property-based binding** — Structured data via `a.property()`, not JSON-serialized attributes
5. **DPR scaling** — Canvas auto-scales to device pixel ratio for sharp rendering

### Tests

- All existing tests continue to pass
- Canvas architecture is tested indirectly through entity graph and bar chart tests
- Hit-testing logic verified in Gleam unit tests

## [2026-05-18] — Batch 11: Finalize 8 New Widgets for v1.0.0

### Summary

Added 8 new widgets with full API, ARIA attributes, and tests. Removed the `saola/form` helper
module (pattern now documented inline in README). Total: 64+ widgets, 307 passing tests.

### Changes

**New Widgets**
- `saola/rating` — star rating; `ReadOnly` (role=img) and `Interactive` (buttons) modes; `RatingAttrs` with configurable `max` and `aria_label`
- `saola/search` — search input with role=search, optional clear button (`search_clearable`), `Small`/`Large` sizes
- `saola/time_picker` — HH:MM(:SS) picker using native selects; `TwelveHour`/`TwentyFourHour` formats; optional seconds via `show_seconds`
- `saola/multiselect` — chip-based multi-value select backed by `saola-multiselect` web component; `max_selected` guard; `multiselect-change` event
- `saola/navigation_bar` — horizontal `<header>` nav bar; `Default`/`Sticky`/`Floating` variants; `nav_bar_link` helper with `aria-current="page"`
- `saola/stepper` — multi-step progress indicator; `Horizontal`/`Vertical` orientations; `stepper-step-active` + `aria-current="step"` for active step
- `saola/tree_view` — collapsible tree; consumer owns `open_ids`; `aria-expanded` on branch nodes; `role="tree"` / `role="treeitem"` / `role="group"`
- `saola/timeline` — vertical event list; `Default`/`Success`/`Warning`/`Error` item variants; omits time span when empty

**Removed**
- `src/saola/form.gleam` — `field_attrs_from_result` helper removed; equivalent consumer-side snippet now documented in README

**Tests**
- Created `test/new_widget_tests8.gleam` with 23 tests covering all 8 new widgets

## [2026-05-17] — Upgrade: Publish and Consumer DX (Phase 4)

### Summary

Phase 4 of the Saola upgrade plan is now complete. Pre-publish verification passed, consumer setup guide created, documentation synced, and test suite validated. Live publishing to Hex.pm awaits manual `gleam publish` step (requires HEXPM_API_KEY environment variable).

### Changes

**New Assets**
- Created `assets/saola-multiselect.mjs` — Complete web component implementation for multiselect widget
  - Shadow DOM encapsulation with chip-based UI
  - Dropdown panel with option list
  - `multiselect-change` custom event dispatch
  - `max-selected` guard and `disabled` state support
  - Fully accessible with ARIA attributes

**Documentation**
- Created `docs/consumer-setup-guide.md` — Comprehensive 8-section consumer onboarding guide
  - Installation: `gleam add saola`
  - CSS Setup: basecoat.css + app.css integration
  - Web Components: table of all 5 custom elements (carousel, multiselect, resizable, etc.)
  - Quick Start: minimal Lustre app example with button widget
  - Dark Mode: `theme_attr(Dark)` + System mode with `theme_sub` reactive subscription example
  - Form Validation: `field_attrs_from_result` bridge pattern and `formal` library integration
  - Icons: `lucide_lustre` integration guide
  - Widget Reference: links to full widget catalog

**Updated Documentation**
- Root `CHANGELOG.md` — Updated metrics: 50+ → 56+ widgets, 281 → 284 tests, added Phase 3 entry for reactive theme

**Testing**
- Final validation: `gleam test` — **284 tests passing, 0 failures**

**Plan Artifacts**
- Updated `plan.md` — Phase 4 marked Complete
- Updated `phase-04-publish-and-dx.md` — Status Complete, success criteria checked
- Pre-publish verification passed: `.gitignore` covers build artifacts, assets included in dry-run

### Publishing Status

**Ready to Publish:**
- All blockers resolved from Phase 1 (formal → dev deps, README.md, CHANGELOG.md all in place)
- `gleam publish --dry-run` verified correct file list
- Test suite passes with 284 tests
- Documentation complete

**Manual Step Required:**
- Set environment variable: `$env:HEXPM_API_KEY = "<your-api-key>"` (from https://hex.pm/settings)
- Run: `gleam publish` from project root
- Verify: Check package on Hex.pm for correct README and CHANGELOG rendering

### Impact

- **Consumer Experience:** Setup guide removes onboarding friction; covers theming, form validation, web components, icons
- **Library Status:** Ready for publication to Hex.pm; all code, tests, and docs validated
- **Next Phase:** Post-publish monitoring and community feedback integration

## [2026-05-17] — Upgrade: Dynamic Theme Listener (Phase 3)

### Summary

Implemented reactive OS dark-mode preference detection. When `Theme.System` is active, the UI now updates in real-time as the user toggles their OS appearance preference, without requiring a page reload.

### Changes

**New Module Additions**
- Created `src/saola/theme_ffi.mjs` — JavaScript FFI layer for media query listening
  - `mediaQuerySub(query, toMsg)` — addEventListener on matchMedia, returns unsubscribe teardown function
  - Guards against duplicate listeners with closure pattern
  - Integrates with Lustre's subscription lifecycle

**Theme Module Enhancements** (`src/saola/theme.gleam`)
- Added `theme_sub(is_system_active: Bool, to_msg: fn(Bool) -> msg) -> lustre.Sub(msg)`
  - Subscription that fires whenever OS dark-mode preference changes
  - Only active when `is_system_active == True`; returns `lustre.none()` otherwise
  - Consumer must dispatch returned message to update UI theme
- Added `get_system_dark() -> Bool`
  - Safe init-time OS preference detection
  - Guards against non-browser environments (returns False if `window` undefined)
  - Useful for seeding initial theme state from OS preference

**Preview App Wiring** (`dev/saola/preview/`)
- Updated `preview/model.gleam`:
  - Added `system_os_dark: Bool` field to track current OS preference
  - Added `SystemOsDarkChanged(Bool)` message variant
- Updated `preview.gleam`:
  - Wired `theme_sub` subscription in init effect batch
  - Added `SystemOsDarkChanged` update handler (syncs to model, updates root `.dark` class dynamically)
  - Sidebar theme toggle now includes System button that activates subscription
- View now applies `.dark` class dynamically when `theme == System && model.system_os_dark == True`

**Bug Fixes**
- Fixed `src/saola/rating.gleam` — replaced `list.range` (not available in this stdlib version) with local recursive `range` helper
- Fixed `src/saola/time_picker.gleam` — same `list.range` → local `range` fix

**Tests**
- Added 3 tests to `test/new_widget_tests7.gleam`:
  - `test_theme_sub_compiles_when_inactive` — verifies `theme_sub(False, ...)` builds
  - `test_theme_sub_compiles_when_active` — verifies `theme_sub(True, ...)` builds
  - `test_get_system_dark_compiles` — verifies `get_system_dark()` is callable
- Total test suite: **284 tests passing** (no failures)

### Impact

- **User Experience:** Dark mode theme now responds instantly to OS preference changes without page reload
- **API:** New opt-in subscription API; existing `theme_attr` and themes unchanged
- **Stdlib Compatibility:** Removed uses of `list.range` (not in earlier Gleam versions); all utilities now self-contained

## [2026-05-17] — Upgrade: Fix Publish Blockers

### Summary

Resolved three Hex.pm publishing blockers: added root `README.md`, added root `CHANGELOG.md`, and moved `formal` library from runtime dependencies to dev-only.

### Changes

**Dependency Management**
- Moved `formal` from `[dependencies]` to `[dev_dependencies]` in `gleam.toml`
  - Consumers using `saola` no longer receive `formal` as a transitive dependency
  - The `saola/form.gleam` bridge module now imports a dev-only dep; Gleam allows this because it's in `src/` and only the dev preview app and tests call it at compile-time from the library perspective

**Deleted**
- `src/saola/form.gleam` — Removed the bridge module that imported formal directly
  - **Migration path:** Form validation integration is now documented in `README.md` under "Form Validation" section; consumers can copy the bridge pattern from there

**Documentation**
- Created `README.md` at project root
  - Installation instructions (`gleam add saola`)
  - CSS setup section (basecoat.css + app.css)
  - Quick-start button example
  - Widget catalogue (link to `docs/`)
  - Dark mode / theming section
  - Form validation integration section with example bridge code
  - License and contributing links

- Created `CHANGELOG.md` at project root
  - Follows [Keep a Changelog](https://keepachangelog.com) format
  - Single entry for `[1.0.0] — 2026-05-17` with condensed highlights from batches 1–10
  - References `docs/project-changelog.md` for full history

**Preview Updates**
- Removed `import saola/form` from `dev/saola/preview/field.gleam`
  - Inlined field construction code; no behavioral change

**Tests**
- Removed `import saola/form` and 3 form-bridge tests from `test/new_widget_tests7.gleam`
  - Tests covered deleted code; form integration is now a consumer concern per README documentation
- **Result:** `gleam test` still passes with 281 tests

### Impact

- **Public API:** No breaking changes to existing modules; only deletion of an optional bridge (form.gleam) that was never stable/documented
- **Install size:** Consumers no longer pull ~4 KB of `formal` library when they don't use form validation
- **Publishing:** All three Hex.pm blockers are now resolved; ready for Phase 2 (complete remaining widgets)

## [2026-05-17] — Batch 10: Theme System, Form Validation Enhancement

### Added

**New Modules**
- **Theme** (`src/saola/theme.gleam`) — System-level theme management
  - `Theme` ADT: `Light`, `Dark`, `System` variants
  - `theme_attr(Theme) -> Attribute(msg)` — Returns `.dark` class for Dark theme, or `a.none()` for Light/System (System preference handled by index.html script)
  - Enables dark mode theming throughout the UI kit

- **Form** (`src/saola/form.gleam`) — Bridge for formal library integration
  - `field_attrs_from_result(Result(String, String), FieldAttrs) -> FieldAttrs` — Maps validation results to field error state
  - `Ok(_)` clears error, `Error(e)` sets error message
  - Simplifies form validation workflows with formal library

### Modified

**Field Enhancement** (`src/saola/field.gleam`)
  - Added `required: Bool` field to `FieldAttrs`
  - Added `hint: String` field to `FieldAttrs`
  - When `required: True`: renders `aria-required="true"` on wrapper + asterisk (`*`) indicator in label
  - When `hint` non-empty: renders `<p class="field-hint">` below description
  - Backward compatible: new fields default to `False` and empty string

**Dark Mode Support** (`index.html`)
  - Added system-preference dark mode detection script (3 lines)
  - Automatically applies `.dark` class to root element based on `prefers-color-scheme` media query
  - Defers to explicit `Theme.Dark` when set

**Styling** (`assets/app.css`)
  - Added `.field-hint` — gray text below field description
  - Added `.field-required` — styles for required indicator and asterisk
  - Added `.theme-toggle` — styles for dark mode toggle button

### Preview Updates

- Added dark mode toggle button in sidebar
- Created required field + hint demos in Fields page
- Showcases required indicator, hint text, and validation integration with field_attrs_from_result

### Tests

- `test/new_widget_tests7.gleam` — New comprehensive test suite
  - 12 new tests covering Theme system and field enhancements
  - Total suite now at **284 tests passing**
  - Coverage includes: theme_attr output, required field aria-required, required asterisk rendering, hint paragraph rendering, field_attrs_from_result mapping

### Documentation

- Updated `docs/development-roadmap.md` — Updated last-updated timestamp and project metrics (284 tests)
- Updated `docs/project-changelog.md` — Added Batch 10 entry and metrics

## [2026-05-17] — Batch 9: Empty, Item Widgets

### Added

**New Widgets**
- **Empty** (`src/saola/empty.gleam`) — Empty-state panel for "no results", onboarding, error placeholders
  - Two media variants: Default, Icon (with rounded bg-muted wrapper)
  - Flat API: `empty_full(media, media_variant, title, description, content, attrs)`, `empty_simple(icon, title, description_text, action)`
  - Renders centered dashed-border container with optional header (media + title + description) and content area
  - Omits header/content sections when all sub-fields are empty
  - Pure-Gleam, no JS, stateless

- **Item** (`src/saola/item.gleam`) — Row-layout primitive for lists (settings rows, navigation, gallery)
  - 3 variants: Default, Outline, Muted; 2 sizes: Large (lg), Small (sm)
  - 3 media variants: Default, Icon (with border bg-muted), Image (with object-fit cover)
  - Flat API: `item_full(variant, size, media, media_variant, title, description, actions, attrs)`
  - Shortcut functions: `item_simple(title, description, action)`, `item_link(href, title, description, action, attrs)` (emits `<a>` root)
  - Group support: `item_group(children)` with `role="list"`, `item_separator()` with `role="separator"`
  - Pure-Gleam, no JS, stateless
  - Flexbox layout: media + content (title + description) + actions

### Modified

- `dev/saola/preview/model.gleam` — Added `Empties`, `Items` routes to Route ADT
- `dev/saola/preview.gleam` — Wired `/empties` and `/items` URL routes, sidebar nav links, main_pane dispatcher cases
- `dev/saola/preview/view.gleam` — Added 2 dispatch functions: `view_empties()`, `view_items()`

### Preview

- Created `dev/saola/preview/empty_preview.gleam` — 3 empty-state demos: bare, with icon, with action
- Created `dev/saola/preview/item_preview.gleam` — 5 demos: variants, sizes, media variants, grouped with separators, link-item

### Tests

- `test/new_widget_tests6.gleam` — New comprehensive test suite
  - 19 new tests covering Empty and Item widgets
  - Total suite now at **272 tests passing**
  - Coverage includes: variants, sizes, media variants, shortcut functions, role attributes, CSS classes, omission of empty sections

### CSS Changes

- Added ~90 lines of CSS (empty + item styles)
- **Empty** (`.empty-*` classes):
  - Root: dashed border, flex center, gap/padding rules
  - Header: centered max-width 24rem, sub-elements: media, title (h2), description (p)
  - Media: default transparent, icon variant with 2.5rem box + rounded corners + bg-muted
  - Description: text color muted-foreground, nested `<a>` with underline
  - Content: flex column, centered, 24rem max-width
- **Item** (`.item-*` classes):
  - Root: flex wrap, gap 1rem, border/border-radius, transition on hover
  - Variants: default (transparent), outline (border), muted (bg-muted)
  - Sizes: lg (1rem gap/padding), sm (0.625rem gap, 0.75rem/1rem padding)
  - Media: flex, shrink-0; icon variant (2rem box + border), image variant (2.5rem + object-fit)
  - Content: flex-1, flex-column, title + description (2-line clamp)
  - Actions: flex, gap 0.5rem
  - Group & Separator: flex-column layout, hr border-top only
- All styles use Basecoat design tokens (--color-muted, --color-border, --color-foreground, --color-muted-foreground, --radius-md, --radius-lg)

### Documentation

- Updated `docs/development-roadmap.md` — Marked Empty, Item as Complete; updated metrics (47 widgets, +2)
- Updated project metrics: Batch 9 in key milestones

## [2026-05-17] — Batch 8: Carousel, Combobox, Navigation Menu, Toast Enhancement

### Added

**New Widgets**
- **Carousel** (`src/saola/carousel.gleam`) — Horizontal/vertical scroll-snap carousel with prev/next navigation
  - Backed by `assets/saola-carousel.mjs` web component
  - Orientation support: Horizontal (default) or Vertical
  - Loop mode for infinite scrolling
  - Slide change detection via `slide-change` CustomEvent
  - Full API: `carousel_full`, `carousel_simple`
  - Responsive scroll-snap viewport

- **Combobox** (`src/saola/combobox.gleam`) — Searchable select with filterable option list
  - Case-insensitive substring filtering via `combobox_filter` helper
  - Query/value/open state managed by consumer
  - Check icon for selected option
  - Full API: `combobox_full`, `combobox_simple`
  - Keyboard accessible: role="combobox", role="listbox"

- **Navigation Menu** (`src/saola/navigation_menu.gleam`) — Click-driven top navigation with dropdowns
  - Link items with active state styling
  - Dropdown support with click-to-open/close
  - Two dropdown content modes: NavMenuSimple (list of links) or NavMenuRich (custom Element)
  - Full API: `navigation_menu_full`, `navigation_menu_simple`

### Modified

**Toast Enhancement** (`src/saola/toast.gleam`) — BREAKING CHANGE: Now generic over `msg`
  - Added variants: `Success`, `Warning`, `Info` (previous: Default, Destructive)
  - Added optional action buttons via `ToastAction(label, on_click)` 
  - Type signature changed from `Toast` → `Toast(msg)` (requires migration in consumers)
  - New convenience function `new_toast_simple` (no action)
  - CSS variants for new toast types (`toast-success`, `toast-warning`, `toast-info`)

### Migration Guide

For existing toast consumers:
- Change `List(toast.Toast)` → `List(toast.Toast(Msg))`
- Change `AddToast(toast.Toast)` → `AddToast(toast.Toast(Msg))`
- Replace `toast.new_toast(t, d, v)` with `toast.new_toast_simple(t, d, v)` OR use `toast.new_toast(t, d, v, Some(ToastAction(...)))`

### Preview

- Updated `dev/saola/preview/model.gleam` — Added Carousels, Comboboxes, NavigationMenus routes; migrated Toast to generic msg
- Updated `dev/saola/preview.gleam` — Wired all 3 new routes, init handlers, update branches, sidebar nav links, main_pane dispatchers
- Updated `dev/saola/preview/view.gleam` — Added 3 dispatch functions for new widgets
- Created `dev/saola/preview/carousel_preview.gleam` — Horizontal + vertical carousel demos
- Created `dev/saola/preview/combobox_preview.gleam` — Simple + full search combobox demos
- Created `dev/saola/preview/navigation_menu_preview.gleam` — Navigation menu with simple + rich dropdowns
- Migrated `dev/saola/preview/toast.gleam` — Added Success/Warning/Info/action button demos

### Tests

- `test/new_widget_tests5.gleam` — New comprehensive test suite
  - 27 new tests covering Carousel, Combobox, Navigation Menu, Toast variants & actions
  - Total suite now at 253 tests passing
  - Coverage includes: tag rendering, attribute presence, filter logic, open/closed states, variant classes, action button detection

### CSS Changes

- Added styles for `.carousel-root` (flex/overflow viewport)
- Added ~50 lines for combobox (trigger, panel, options, search, empty state)
- Added ~50 lines for navigation menu (menu, items, dropdowns, content panels)
- Added toast variant CSS: `.toast-success`, `.toast-warning`, `.toast-info` with appropriate colors
- All styles use Basecoat design tokens (--color-popover, --color-border, --radius-md, etc.)

### Documentation

- Updated `docs/development-roadmap.md` — Marked carousel, combobox, navigation_menu, toast as Complete
- Updated project metrics: 45 widgets complete, 253 total tests passing

## [2026-05-17] — Batch 7: Navigation, Layout & Data Widgets

### Added

**New Widgets**
- **Sidebar** (`src/saola/sidebar.gleam`) — Collapsible sidebar navigation panel
  - Side position control: Left (primary) or Right
  - Variant support: Default or Minimal
  - Collapsible state with toggle trigger
  - Sub-components: `sidebar_header`, `sidebar_footer`, `sidebar_content`, `sidebar_group`, `sidebar_menu_item`
  - Full API: `sidebar_full`, `sidebar_simple`
  - Accessible with proper ARIA labels and keyboard navigation

- **Command** (`src/saola/command.gleam`) — Command palette with search and keyboard navigation
  - Search input filtering
  - Keyboard navigation: ArrowUp/Down/Enter to select items
  - Grouped commands with labels
  - Keyboard shortcuts display
  - Disabled item state
  - Helper functions: `command_nav_up`, `command_nav_down`, `command_get_value_at`, `command_item_count`
  - Full API: `command_full`

- **Resizable** (`src/saola/resizable.gleam`) — Drag-to-resize panels for flexible layouts
  - Backed by `assets/saola-resizable-panels.mjs` web component
  - Horizontal (default) and vertical direction support
  - Smooth dragging with resize handles
  - Full API: `resizable_full`, `resizable_simple`

- **Data Table** (`src/saola/data_table.gleam`) — Generic typed column data table with sorting, filtering, pagination
  - Strongly-typed columns via `DataTableColumn(row, msg)` type
  - Sortable column headers with direction indicators
  - Global filter input with live filtering
  - Row pagination with jump-to-page capability
  - Row selection with multi-select checkboxes
  - Helpers: `toggle_sort`, `set_filter`, `set_page`, `toggle_row`, `total_pages`
  - Full API: `data_table_full`, `data_table_simple`

### Tests

- `test/new_widget_tests4.gleam` — New comprehensive test suite
  - 37 new tests covering Command, Sidebar, Resizable, Data Table
  - Total suite now at 230 tests passing
  - Coverage includes: default rendering, variants, keyboard navigation, state transitions, ARIA attributes

### Documentation

- Updated `README.md` — Added 4 new widgets to widget table with full/shortcut API references
- Updated `docs/development-roadmap.md` — Marked Sidebar, Command, Resizable, Data Table as Complete; updated phase status
- Updated project metrics: 41 widgets complete, 230 total tests passing

## [2026-05-17] — Batch 6: Specialized Widgets

### Added

**New Widgets**
- **Spinner** (`src/saola/spinner.gleam`) — Animated loading indicator
  - Three sizes: Small (1rem), Medium (1.5rem, default), Large (2rem)
  - CSS animation with configurable colors via CSS variables
  - Accessible with `role="status"` and `aria-label="Loading"`

- **Native Select** (`src/saola/native_select.gleam`) — Native HTML select wrapper
  - Styled dropdown with custom icon overlay
  - Support for `<optgroup>` hierarchies
  - Two sizes: Default (2rem), Small (1.75rem)
  - Disabled state with opacity reduction
  - Full keyboard accessibility

- **Button Group** (`src/saola/button_group.gleam`) — Fused button sets
  - Horizontal (default) and vertical orientations
  - CSS border fusion removes internal borders
  - Accessible with `role="group"`
  - Works with any button element

- **Input Group** (`src/saola/input_group.gleam`) — Compound input control
  - Prefix and suffix addon slots
  - Wraps input or textarea with visual grouping
  - `aria-invalid` propagation for error states
  - Works with saola/input and native textarea

- **Context Menu** (`src/saola/context_menu.gleam`) — Right-click menu system
  - Full menu item hierarchy: actions, destructive items, disabled items, separators, groups
  - Keyboard shortcut display
  - Automatic positioning via clientX/clientY event capture
  - Fixed positioning with backdrop
  - Nested group support with labels

- **Drawer** (`src/saola/drawer.gleam`) — Side/bottom slide-out panel
  - Four positions: Bottom (primary), Top, Left, Right
  - Handle bar for Bottom/Top (visual affordance)
  - Optional description and footer slots
  - Fixed positioning with backdrop dismiss
  - Configurable z-index stacking

### Modified

- `dev/saola/preview/model.gleam` — Added routes and model fields for new widgets
- `dev/saola/preview.gleam` — Added URL routes, update handlers, nav links
- `dev/saola/preview/view.gleam` — Added preview dispatchers for all 6 widgets
- `assets/app.css` — Added ~340 lines of CSS for all 6 widgets

### Tests

- `test/new_widget_tests3.gleam` — New comprehensive test suite
  - 193 total tests passing across all 6 widgets
  - Coverage includes: default rendering, size variants, disabled states, ARIA attributes, positioning, CSS classes
  - All tests in `gleam test` suite pass

### Documentation

- Created `docs/development-roadmap.md` — Project-wide widget progress tracking
- Created `docs/project-changelog.md` — Historical record of all changes

### CSS Changes

Added styles for:
- `.spinner`, `.spinner-sm`, `.spinner-md`, `.spinner-lg` with @keyframes spin animation
- `.native-select-wrapper`, `.native-select`, `.native-select-icon` with focus states
- `.button-group`, `.button-group-vertical` with border fusion rules
- `.input-group`, `.input-group-addon`, `.input-group-control` with grouped styling
- `.context-menu-*` classes for popup, items, shortcuts, separators, groups
- `.drawer`, `.drawer-bottom/top/left/right` with position-specific styles

## [2026-05-16] — Batch 5: Date/Time Widgets

### Added

- **Calendar** (`src/saola/calendar.gleam`) — Interactive month/year calendar grid
- **Date Picker** (`src/saola/date_picker.gleam`) — Date selection with calendar

### Modified

- `dev/saola/preview.gleam` — Routes and handlers for calendar/date picker

## Previous Releases

### Phase 1-3 Summary (29 widgets)

Core widgets through form controls, including:
- Button, Input, Textarea, Label, Badge, Alert, Card
- Checkbox, Radio, Switch
- Dropdown Menu, Select, Combobox, Dialog, Popover, Tooltip, Tabs, Accordion, Carousel
- Toast, Alert Dialog, Hover Card
- Form Field, Slider, Range Slider, Toggle Group, Segmented Control
- Breadcrumb, Pagination
- Radio Group (13-widget batch)
- Scroll Area, Aspect Ratio, Collapsible, Sheet, Menubar, Input OTP

---

## Metrics

| Metric | Value |
|--------|-------|
| Total widgets shipped | 47 |
| Test suite coverage | 284 tests passing |
| New tests (Batch 10) | 12 |
| New tests (Batch 9) | 19 |
| New tests (Batch 8) | 27 |
| New tests (Batch 7) | 37 |
| Total phases | 6 |
| Completed phases | 2 (Phases 1-2) |
| In progress phases | 4 (Phases 3-6) |

## Notes

- All widgets follow Saola naming conventions: stateless design, full+shortcut pattern, CSS variable theming
- Widget tests use `gleam/html` element rendering with `a.to_string()` and string assertions
- Web components (Resizable) use Shadow DOM + property setters for structured data
- CSS uses Basecoat class names; no Tailwind or shadcn/ui class dependencies post-porting
- ARIA attributes explicit and uncoupled from Radix UI
- Data Table uses generic type parameters for fully-typed column definitions
