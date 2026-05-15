# Phase 03: Stateful Interactive Components

**Components:** `tabs`, `dialog`
**Priority:** Medium — consumer-owned state, follows existing dropdown_menu pattern
**Status:** 🔲 Pending

## Context Links

- Source reference: `reference/shadcn-ui/apps/v4/registry/new-york-v4/ui/tabs.tsx`
- Source reference: `reference/shadcn-ui/apps/v4/registry/new-york-v4/ui/dialog.tsx`
- Existing stateful pattern: `src/saola/dropdown_menu.gleam` — `is_open: Bool`, `trigger_click: a`
- CSS reference: `assets/basecoat.css` — `.tabs`, `.dialog`

## Key Architectural Decisions

Both components have **internal state** in shadcn/Radix UI. In saola:
- Consumer owns the state (Lustre model)
- Widget receives current state + message to emit on change
- Visibility/active-state driven by `aria-hidden` (same as dropdown popover)

---

## 1. tabs.gleam

### Basecoat CSS Classes
- `.tabs` — outer container

### shadcn Tabs anatomy
```
TabsList → TabsTrigger (×N) → TabsContent (×N)
```
In saola: one flat function receiving typed tab definitions.

### Types

```gleam
pub type TabsVariant {
  Default
  Line
}

/// A single tab definition: its ID (used for matching), label, and content
pub type Tab(msg) {
  Tab(id: String, label: String, content: Element(msg))
  TabWithIcon(id: String, icon: Element(msg), label: String, content: Element(msg))
}

pub type TabsExtraAttrs {
  TabsExtraAttrs(class: String)
}

pub const default_tabs_attrs = TabsExtraAttrs("")
```

### Functions

```gleam
/// Render a tab group. `active_id` is the ID of the currently active tab.
/// `on_tab_change` is the message constructor called with the new tab ID when user clicks.
pub fn tabs_full(
  tabs: List(Tab(msg)),
  variant: TabsVariant,
  active_id: String,
  on_tab_change: fn(String) -> msg,
  extra_attrs: TabsExtraAttrs,
) -> Element(msg)

/// Simple tabs with default styling
pub fn tabs_simple(
  tabs: List(Tab(msg)),
  active_id: String,
  on_tab_change: fn(String) -> msg,
) -> Element(msg)
```

### Rendered HTML Structure

```html
<div class="tabs [tabs-line]">
  <div role="tablist" aria-label="...">
    <button role="tab" aria-selected="true|false" aria-controls="panel-{id}" id="tab-{id}" ...>
      label
    </button>
    ...
  </div>
  <div role="tabpanel" id="panel-{id}" aria-labelledby="tab-{id}" aria-hidden="true|false">
    content
  </div>
  ...
</div>
```

### Key Implementation Notes

- Active tab: `a.aria_selected(tab.id == active_id)`
- Active panel: `a.aria_hidden(tab.id != active_id)` (same pattern as dropdown)
- Tab click: `e.on_click(on_tab_change(tab.id))`
- Generate stable IDs: `"tab-" <> tab.id` and `"panel-" <> tab.id` — no typeid needed since IDs come from the consumer
- CSS for line variant: `"tabs tabs-line"` (check basecoat.css for exact class)

### Implementation Steps

1. Create `src/saola/tabs.gleam`
2. Define `TabsVariant`, `Tab(msg)`, `TabsExtraAttrs` types
3. Implement private `render_tab_trigger(tab, is_active, on_tab_change)` helper
4. Implement private `render_tab_panel(tab, is_active)` helper
5. Implement `tabs_full(tabs, variant, active_id, on_tab_change, extra_attrs)`
6. Add `tabs_simple(tabs, active_id, on_tab_change)` convenience function
7. Create `dev/saola/preview/tabs.gleam` with a 3-tab example:
   - Tabs must use `model.active_tab` for state
   - Add `active_tab: String` field to `dev/saola/preview/model.gleam`'s `Model` type
   - Add `TabChanged(String)` to `Msg` type
   - Handle `TabChanged` in update (set `model.active_tab`)
8. Add `Tabs` route to model + view
9. Compile check

### Todo

- [ ] `src/saola/tabs.gleam` created
- [ ] Preview model updated with `active_tab` field and `TabChanged` message
- [ ] Preview `tabs.gleam` created
- [ ] `Tabs` route added to model + view
- [ ] Compile passes

---

## 2. dialog.gleam

### Basecoat CSS Classes
- `.dialog` — the modal panel

### shadcn Dialog anatomy
```
DialogRoot → DialogOverlay + DialogContent
  DialogHeader → DialogTitle + DialogDescription
  DialogFooter
```
In saola: one flat function with labeled args. No portal needed — Lustre renders a single DOM tree, and `.dialog` CSS uses `position: fixed` to overlay the page.

### Types

```gleam
pub type DialogAttrs(msg) {
  DialogAttrs(
    title: String,
    description: String,
    content: List(Element(msg)),
    footer: Option(Element(msg)),
    show_close_button: Bool,
    on_close: msg,
    class: String,
  )
}
```

### Constants

```gleam
// Use button.button_close to render the close button — no new dependency needed
```

### Functions

```gleam
/// Render a dialog modal. `is_open` controls visibility.
/// `attrs.on_close` is the message emitted when the close button or overlay is clicked.
pub fn dialog_full(
  is_open: Bool,
  attrs: DialogAttrs(msg),
) -> Element(msg)

/// Simple dialog with just a title and content
pub fn dialog_simple(
  is_open: Bool,
  title: String,
  content: List(Element(msg)),
  on_close: msg,
) -> Element(msg)
```

### Rendered HTML Structure

```html
<!-- Overlay: clicking it fires on_close -->
<div class="dialog-overlay" aria-hidden="true|false" ...>
</div>

<!-- Dialog panel -->
<div class="dialog" role="dialog" aria-modal="true" aria-hidden="true|false"
     aria-labelledby="dlg-title-{id}" aria-describedby="dlg-desc-{id}">
  <!-- Close button (if show_close_button) -->
  <button class="btn-sm-outline dialog-close" ...>×</button>

  <div class="dialog-header">
    <h2 id="dlg-title-{id}">title</h2>
    <p id="dlg-desc-{id}">description</p>
  </div>

  <div class="dialog-content">
    ...content
  </div>

  <div class="dialog-footer">   <!-- only if footer provided -->
    ...footer
  </div>
</div>
```

### Key Implementation Notes

- Both overlay and panel toggle via `a.aria_hidden(!is_open)` — same pattern as dropdown
- Generate IDs via typeid for `aria-labelledby` / `aria-describedby`
- Close button uses `button.button_close(attrs.on_close)` — reuse existing widget
- Overlay click: `e.on_click(attrs.on_close)`
- Check `basecoat.css` for `.dialog-overlay`, `.dialog-header`, `.dialog-footer` sub-classes
  - If absent: use `a.class("fixed inset-0 bg-black/50")` utility classes for overlay
- Import `saola/button` for the close button

### Implementation Steps

1. Check `assets/basecoat.css` for dialog sub-element classes
2. Create `src/saola/dialog.gleam`
3. Import `saola/button` and `typeid`
4. Define `DialogAttrs(msg)` type
5. Implement `dialog_full(is_open, attrs)`:
   - Auto-generate IDs for aria-labelledby/describedby
   - Render overlay div + dialog div together in a fragment
6. Add `dialog_simple(is_open, title, content, on_close)` shortcut
7. Create `dev/saola/preview/dialog.gleam`:
   - Needs `is_dialog_open: Bool` in preview model
   - Add `OpenDialog` / `CloseDialog` to `Msg`
   - Show a "Open Dialog" button that sets `is_dialog_open = True`
8. Add `Dialogs` route to model + view
9. Compile check

### Note on Overlay Rendering

Lustre renders the virtual DOM as a tree rooted at the app's mount element.
To stack the overlay + dialog above all content, the dialog widget renders:
```gleam
h.div([a.class("dialog-wrapper"), a.aria_hidden(!is_open)], [overlay, panel])
```
The `.dialog-wrapper` should have `position: fixed; inset: 0; z-index: 50` in CSS.
If `basecoat.css` does not have this, note it as a CSS gap for the implementer to add.

### Todo

- [ ] Check basecoat.css for dialog sub-classes
- [ ] `src/saola/dialog.gleam` created
- [ ] Preview model updated with `is_dialog_open: Bool`, `OpenDialog`, `CloseDialog`
- [ ] Preview `dialog.gleam` created
- [ ] `Dialogs` route added to model + view
- [ ] Compile passes

---

## Success Criteria

- `src/saola/tabs.gleam` and `src/saola/dialog.gleam` exist
- `gleam build` passes
- Preview app shows tabs with working tab switching (state in model)
- Preview app shows dialog with open/close working (state in model)
- No internal state in either widget — 100% consumer-owned

## Risk Assessment

| Risk | Likelihood | Mitigation |
|------|-----------|------------|
| Preview model changes conflict with existing routes | Low | Add new fields to existing `Model` type with defaults |
| basecoat.css missing dialog overlay class | Medium | Use utility classes; note the CSS gap |
| basecoat.css line variant class name is different | Low | Check CSS source before coding |
| `e.on_click` on overlay div (not button) | Low | `e.on_click` works on any element in Lustre |
