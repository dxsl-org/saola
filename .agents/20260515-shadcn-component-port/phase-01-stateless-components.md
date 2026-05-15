# Phase 01: Stateless Components

**Components:** `badge`, `alert`, `card`, `kbd`
**Priority:** High — no state management, CSS classes already in Basecoat
**Status:** 🔲 Pending

## Context Links

- Source reference: `reference/shadcn-ui/apps/v4/registry/new-york-v4/ui/badge.tsx`
- Source reference: `reference/shadcn-ui/apps/v4/registry/new-york-v4/ui/alert.tsx`
- Source reference: `reference/shadcn-ui/apps/v4/registry/new-york-v4/ui/card.tsx`
- Source reference: `reference/shadcn-ui/apps/v4/registry/new-york-v4/ui/kbd.tsx`
- Existing pattern: `src/saola/button.gleam`
- CSS reference: `assets/basecoat.css`

---

## 1. badge.gleam

### Basecoat CSS Classes
- `.badge` — default (primary)
- `.badge-secondary`
- `.badge-destructive`
- `.badge-outline`

### Types

```gleam
pub type BadgeVariant {
  Default
  Secondary
  Destructive
  Outline
}
```

### Functions

```gleam
pub fn badge(label: String, variant: BadgeVariant) -> Element(msg)
```

Renders a `<span>` with the appropriate badge class.

```gleam
let css = case variant {
  Default -> "badge"
  Secondary -> "badge-secondary"
  Destructive -> "badge-destructive"
  Outline -> "badge-outline"
}
h.span([a.class(css)], [h.text(label)])
```

Convenience shortcuts:
```gleam
pub fn badge_default(label: String) -> Element(msg)
pub fn badge_secondary(label: String) -> Element(msg)
pub fn badge_destructive(label: String) -> Element(msg)
pub fn badge_outline(label: String) -> Element(msg)
```

### Implementation Steps

1. Create `src/saola/badge.gleam`
2. Define `BadgeVariant` ADT
3. Implement `badge(label, variant)`
4. Add 4 convenience shortcuts
5. Create `dev/saola/preview/badge.gleam` with showcase
6. Add `Badges` route to `dev/saola/preview/model.gleam`
7. Add `Badges -> views.view_badges()` case to `dev/saola/preview/view.gleam`
8. Compile check: `just dev` or `gleam build`

### Todo

- [ ] `src/saola/badge.gleam` created
- [ ] Preview added
- [ ] Compile passes

---

## 2. alert.gleam

### Basecoat CSS Classes
- `.alert` — default
- `.alert-destructive`

### shadcn Structure
shadcn Alert has two sub-elements: `AlertTitle` and `AlertDescription`.
In saola: flat function with labeled args — no compound components.

### Types

```gleam
pub type AlertVariant {
  Default
  Destructive
}
```

### Functions

```gleam
/// Full alert with optional title and icon
pub fn alert_full(
  variant: AlertVariant,
  title title: String,
  description description: String,
  icon icon: Option(Element(msg)),
) -> Element(msg)
```

Renders:
```html
<div class="alert [alert-destructive]" role="alert">
  <!-- icon if provided -->
  <div class="alert-title">title</div>        <!-- only if title non-empty -->
  <div class="alert-description">description</div>
</div>
```

Convenience:
```gleam
pub fn alert_default(description: String) -> Element(msg)
pub fn alert_destructive(title: String, description: String) -> Element(msg)
```

### Implementation Steps

1. Create `src/saola/alert.gleam`
2. Define `AlertVariant` ADT
3. Implement `alert_full(variant, title:, description:, icon:)`
   - CSS: `"alert"` or `"alert alert-destructive"` (check basecoat.css for exact class composition)
   - `role("alert")` ARIA attribute
   - Conditionally render title div only when title is non-empty
   - Conditionally render icon only when `Some(icon)`
4. Add convenience shortcuts
5. Create `dev/saola/preview/alert.gleam` — shows all variants
6. Add `Alerts` route to model + view (route already exists in preview model)
7. Compile check

### Todo

- [ ] `src/saola/alert.gleam` created
- [ ] Preview added to `Alerts` route
- [ ] Compile passes

---

## 3. card.gleam

### Basecoat CSS Classes
- `.card` — the container

### shadcn Structure
shadcn Card has: CardHeader, CardTitle, CardDescription, CardAction, CardContent, CardFooter.
In saola: one flat function. Card is purely layout — no logic.

### Types

```gleam
pub type CardAttrs(msg) {
  CardAttrs(
    header: Option(Element(msg)),
    title: String,
    description: String,
    content: List(Element(msg)),
    footer: Option(Element(msg)),
  )
}

pub const default_card_attrs = CardAttrs(None, "", "", [], None)
```

### Functions

```gleam
pub fn card(attrs: CardAttrs(msg)) -> Element(msg)
```

Renders:
```html
<div class="card">
  <div class="card-header">   <!-- only if header provided or title/description non-empty -->
    <header element>          <!-- if provided -->
    <h3 class="card-title">title</h3>   <!-- if non-empty -->
    <p class="card-description">desc</p>  <!-- if non-empty -->
  </div>
  <div class="card-content">
    ...content
  </div>
  <div class="card-footer">   <!-- only if footer provided -->
    ...footer
  </div>
</div>
```

Convenience:
```gleam
pub fn card_simple(title: String, content: List(Element(msg))) -> Element(msg)
```

### Implementation Steps

1. Check `assets/basecoat.css` for `.card-header`, `.card-title`, `.card-content`, `.card-footer` — use them if they exist, else use utility classes
2. Create `src/saola/card.gleam`
3. Define `CardAttrs` type + `default_card_attrs`
4. Implement `card(attrs)` with conditional rendering
5. Add `card_simple(title, content)` shortcut
6. Create `dev/saola/preview/card.gleam` with examples
7. Add `Cards` route to model + view
8. Compile check

### Todo

- [ ] Check basecoat.css for card sub-element classes
- [ ] `src/saola/card.gleam` created
- [ ] Preview added
- [ ] Compile passes

---

## 4. kbd.gleam

### Basecoat CSS Classes
- `.kbd`

### Types

None needed — trivially simple.

### Functions

```gleam
pub fn kbd(key: String) -> Element(msg)
```

Renders `<kbd class="kbd">key</kbd>`.

### Implementation Steps

1. Create `src/saola/kbd.gleam`
2. Implement `kbd(key: String) -> Element(msg)`
3. No preview needed — can be shown in the alerts or buttons preview as inline examples
4. Compile check

### Todo

- [ ] `src/saola/kbd.gleam` created
- [ ] Compile passes

---

## Success Criteria

- All 4 files exist in `src/saola/`
- `gleam build` passes with no errors
- Preview app shows badge and alert components in the existing `Alerts` route
- All variants render with correct Basecoat CSS classes
- No state management in any of these widgets

## Risk Assessment

| Risk | Likelihood | Mitigation |
|------|-----------|------------|
| basecoat.css missing `.card-header` sub-classes | Medium | Check CSS first; use utility classes as fallback |
| Badge `Default` variant conflicts with Gleam keyword | Low | `Default` is allowed as a custom type constructor in Gleam |
| Alert class composition (`.alert.alert-destructive` vs `.alert-destructive` alone) | Low | Read basecoat.css to confirm |
