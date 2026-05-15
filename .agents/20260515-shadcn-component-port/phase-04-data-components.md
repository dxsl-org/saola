# Phase 04: Data & Notification Components

**Components:** `table`, `toast`
**Priority:** Medium — table is data-display only; toast requires a message queue pattern
**Status:** 🔲 Pending

## Context Links

- Source reference: `reference/shadcn-ui/apps/v4/registry/new-york-v4/ui/table.tsx`
- Source reference: `reference/shadcn-ui/apps/v4/registry/new-york-v4/ui/sonner.tsx`
- Existing pattern: `src/saola/dropdown_menu.gleam` — typed item lists, recursive rendering
- CSS reference: `assets/basecoat.css` — `.table`, `.toast`, `.toast-content`, `.toaster`

---

## 1. table.gleam

### Basecoat CSS Classes
- `.table` — applied to the `<table>` element

### shadcn Table anatomy
```
Table → TableHeader → TableRow → TableHead (×N)
     → TableBody  → TableRow → TableCell (×N)
     → TableFooter (optional)
     → TableCaption (optional)
```
In saola: two-level API — `table_simple(headers, rows)` for common use + `table_raw(attrs, children)` for full control.

### Types

```gleam
/// A table cell can be text or an element (e.g. a badge, a button)
pub type TableCell(msg) {
  TextCell(String)
  ElementCell(Element(msg))
}

pub type TableRow(msg) {
  TableRow(cells: List(TableCell(msg)))
}

pub type TableExtraAttrs {
  TableExtraAttrs(caption: String, class: String)
}

pub const default_table_attrs = TableExtraAttrs("", "")
```

### Functions

```gleam
/// Render a table from typed headers and rows
pub fn table_simple(
  headers: List(String),
  rows: List(TableRow(msg)),
  extra_attrs: TableExtraAttrs,
) -> Element(msg)
```

Renders:
```html
<div class="table-wrapper">   <!-- overflow-x: auto for responsive -->
  <table class="table">
    <caption>caption</caption>  <!-- only if non-empty -->
    <thead>
      <tr>
        <th>header1</th>
        ...
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>cell1</td>
        ...
      </tr>
    </tbody>
  </table>
</div>
```

Convenience:
```gleam
/// Minimal table — headers + rows, no caption
pub fn table(headers: List(String), rows: List(List(String))) -> Element(msg)
```
(`table` converts `List(List(String))` → `List(TableRow(msg))` internally)

### Key Implementation Notes

- `TableCell` handles both text and arbitrary elements — important for tables with action buttons or badges in cells
- Wrap in a `<div class="overflow-auto">` for responsive horizontal scrolling (check if basecoat.css provides a wrapper class)
- Headers render as `<th scope="col">` for accessibility
- No state needed — pure data rendering

### Implementation Steps

1. Create `src/saola/table.gleam`
2. Define `TableCell(msg)`, `TableRow(msg)`, `TableExtraAttrs` types
3. Implement private `render_cell(cell)` helper
4. Implement private `render_row(row)` helper
5. Implement `table_simple(headers, rows, extra_attrs)`
6. Add `table(headers, string_rows)` convenience with string-only rows
7. Create `dev/saola/preview/table.gleam` with a sample data table (3 cols × 4 rows)
8. Add `Tables` route to model + view
9. Compile check

### Todo

- [ ] `src/saola/table.gleam` created
- [ ] Preview created with sample data
- [ ] `Tables` route added to model + view
- [ ] Compile passes

---

## 2. toast.gleam

### Basecoat CSS Classes
- `.toaster` — outer container (fixed position, renders all toasts)
- `.toast` — individual toast
- `.toast-content` — text content area within a toast

### Design Decision: Consumer-Owned Queue

shadcn/sonner maintains an internal toast queue. In saola (Lustre), the app model owns the list.
This is the highest-complexity component in the plan — clear API contract is critical.

**Saola toast contract:**
- App model holds `toasts: List(Toast)` where `Toast` is exported from `saola/toast`
- App renders `toast.toaster(toasts, on_dismiss)` once, near the root
- App dispatches `AddToast(Toast)` to add, `DismissToast(id)` to remove
- Toast auto-dismiss: consumer sets up a timer effect — saola does NOT do this

### Types

```gleam
pub type ToastVariant {
  Default
  Destructive
}

pub type Toast {
  Toast(
    id: String,           // Unique ID — use typeid or consumer-generated
    title: String,
    description: String,
    variant: ToastVariant,
  )
}
```

### Helper to create a toast with auto-ID

```gleam
pub fn new_toast(title: String, description: String, variant: ToastVariant) -> Toast {
  let id = typeid.new(prefix: "toast") |> result.map(typeid.to_string) |> result.unwrap("toast")
  Toast(id:, title:, description:, variant:)
}
```

### Functions

```gleam
/// Render the toast container. Place once near the root of your view.
/// `on_dismiss` receives the toast ID to remove from model.
pub fn toaster(
  toasts: List(Toast),
  on_dismiss: fn(String) -> msg,
) -> Element(msg)
```

Renders:
```html
<div class="toaster" aria-live="polite" aria-atomic="false">
  <div class="toast [toast-destructive]" role="status" aria-live="assertive" ...>
    <div class="toast-content">
      <strong>title</strong>
      <p>description</p>
    </div>
    <button class="btn-sm-outline">×</button>  <!-- fires on_dismiss(toast.id) -->
  </div>
  ...
</div>
```

### Key Implementation Notes

- `aria-live="polite"` on toaster container — screen readers announce new toasts
- Close button: reuse `button.button_close(on_dismiss(toast.id))` from `saola/button`
- Variant class: `"toast"` or `"toast toast-destructive"` (check basecoat.css)
- Toast order: render newest first (`list.reverse(toasts)`)
- `new_toast()` helper exported so consumers don't have to think about IDs

### Preview Integration

The toast preview is special — it needs a running list in the model.

Preview model additions:
```gleam
// In model.gleam
toasts: List(saola_toast.Toast),  // add to Model type

// In Msg
AddToast(saola_toast.Toast)
DismissToast(String)
```

Preview `toast.gleam`:
- "Add Default Toast" button → dispatches `AddToast(new_toast("Success", "Saved.", Default))`
- "Add Destructive Toast" button → dispatches `AddToast(new_toast("Error", "Failed.", Destructive))`
- `toast.toaster(model.toasts, DismissToast)` rendered at the bottom of the page

### Implementation Steps

1. Create `src/saola/toast.gleam`
2. Import `saola/button` and `typeid`
3. Define `ToastVariant`, `Toast` types
4. Implement `new_toast(title, description, variant)` helper
5. Implement private `render_toast(toast, on_dismiss)` helper
6. Implement `toaster(toasts, on_dismiss)`
7. Update `dev/saola/preview/model.gleam`:
   - Add `toasts: List(toast.Toast)` to `Model`
   - Add `AddToast(toast.Toast)` and `DismissToast(String)` to `Msg`
   - Handle these in `update`
8. Create `dev/saola/preview/toast.gleam` with trigger buttons + toaster rendering
9. Add `Toasts` route to model + view
10. Compile check

### Todo

- [ ] `src/saola/toast.gleam` created with all types and functions
- [ ] Preview model updated with toast state
- [ ] Preview `toast.gleam` created
- [ ] `Toasts` route added to model + view
- [ ] Compile passes

---

## Success Criteria

- `src/saola/table.gleam` and `src/saola/toast.gleam` exist
- `gleam build` passes
- Preview app shows a table with sample data
- Preview app shows working toast: clicking "Add Toast" adds a visible toast; clicking dismiss removes it
- `Toast` type is exported — consumers can build `List(Toast)` in their own models
- `new_toast()` helper reduces friction for common use case

## Risk Assessment

| Risk | Likelihood | Mitigation |
|------|-----------|------------|
| Preview model changes break existing routes | Low | Add to existing `Model`/`Msg` types, handle new cases in update |
| `list.reverse` import not already in scope | Low | `import gleam/list` and use `list.reverse` |
| Auto-dismiss timer out of scope | N/A | Explicitly out of scope — document in widget docstring |
| basecoat.css `.toast-destructive` naming | Low | Check CSS before coding; adjust type mapping accordingly |
| Table cell containing `Element(msg)` requires the same `msg` as the table | Low | The `TableCell(msg)` ADT makes this explicit at the type level |
