# Phase 02: Form Inputs

**Components:** `input`, `textarea`, `label`
**Priority:** High — preview route already exists (`Inputs`), `dev/saola/preview/input.gleam` is live
**Status:** 🔲 Pending

## Context Links

- Source reference: `reference/shadcn-ui/apps/v4/registry/new-york-v4/ui/input.tsx`
- Source reference: `reference/shadcn-ui/apps/v4/registry/new-york-v4/ui/textarea.tsx`
- Source reference: `reference/shadcn-ui/apps/v4/registry/new-york-v4/ui/label.tsx`
- Existing form pattern: `src/saola/checkbox.gleam` — `InitValue`/`SyncValue`, `class_input` constant
- Existing preview: `dev/saola/preview/input.gleam` — already references `checkbox`, needs `input` module

---

## 1. input.gleam

### CSS

No dedicated Basecoat class — uses `class_input = "input"` constant (already defined in checkbox.gleam).
Saola convention: export the class constant so consumers can use it directly.

### Types

```gleam
pub type InputType {
  Text
  Email
  Password
  Search
  Tel
  Url
  Number
}

pub type InputValue {
  /// One-time initial value (for use with `formal` library)
  InitValue(String)
  /// Reactive value kept in sync with app model
  SyncValue(String)
}

pub type InputExtraAttrs {
  InputExtraAttrs(
    id: String,
    name: String,
    placeholder: String,
    disabled: Bool,
    required: Bool,
    class: String,
  )
}
```

### Constants

```gleam
pub const class_input = "input"

pub const default_extra_attrs = InputExtraAttrs("", "", "", False, False, "")
```

### Functions

```gleam
/// Fully customizable text input
pub fn input_full(
  type_: InputType,
  value: Option(InputValue),
  on_input on_input: Option(fn(String) -> msg),
  extra_attrs extra_attrs: InputExtraAttrs,
) -> Element(msg)
```

Renders `<input type="..." class="input" ...>`.

- Maps `InputType` to HTML `type` string
- Maps `InputValue` to `a.default_value` (Init) or `a.value` (Sync)
- Maps `on_input` to `e.on_input` event handler
- Conditionally adds: `a.id`, `a.name`, `a.placeholder`, `a.disabled`, `a.required`
- Merges extra `class` if non-empty

Convenience:
```gleam
pub fn input_text(placeholder: String, on_input: fn(String) -> msg) -> Element(msg)
pub fn input_email(placeholder: String, on_input: fn(String) -> msg) -> Element(msg)
pub fn input_password(placeholder: String, on_input: fn(String) -> msg) -> Element(msg)
```

### Implementation Steps

1. Create `src/saola/input.gleam`
2. Define `InputType`, `InputValue`, `InputExtraAttrs` types
3. Export `class_input = "input"` constant (mirrors checkbox.gleam's pattern)
4. Implement `input_full(type_, value, on_input:, extra_attrs:)`
5. Add 3 convenience shortcuts
6. Update `dev/saola/preview/input.gleam`:
   - Add `import saola/input` at the top
   - Add `input_examples()` function showing text, email, password inputs
   - Add them to `view_inputs()` below the checkbox section
7. Compile check

### Note on Alignment with checkbox.gleam

`checkbox.gleam` already defines `pub const class_input = "input"` — the same constant.
Do NOT import checkbox just for this constant. `input.gleam` should define its own `class_input`.
If in the future these are unified, that's a separate refactor task.

### Todo

- [ ] `src/saola/input.gleam` created with all types and functions
- [ ] `dev/saola/preview/input.gleam` updated to show input examples
- [ ] Compile passes

---

## 2. textarea.gleam

### CSS

Same `class_input = "input"` pattern — Basecoat styles `<textarea class="input">` the same as inputs.

### Types

```gleam
pub type TextareaValue {
  InitValue(String)
  SyncValue(String)
}

pub type TextareaExtraAttrs {
  TextareaExtraAttrs(
    id: String,
    name: String,
    placeholder: String,
    rows: Option(Int),
    disabled: Bool,
    required: Bool,
    class: String,
  )
}
```

### Functions

```gleam
pub fn textarea_full(
  value: Option(TextareaValue),
  on_input on_input: Option(fn(String) -> msg),
  extra_attrs extra_attrs: TextareaExtraAttrs,
) -> Element(msg)

pub fn textarea_simple(placeholder: String, on_input: fn(String) -> msg) -> Element(msg)
```

### Implementation Steps

1. Create `src/saola/textarea.gleam`
2. Define `TextareaValue`, `TextareaExtraAttrs` types
3. Implement `textarea_full` and `textarea_simple`
4. Add examples to `dev/saola/preview/input.gleam` under a "Textareas" heading
5. Compile check

### Todo

- [ ] `src/saola/textarea.gleam` created
- [ ] Preview updated
- [ ] Compile passes

---

## 3. label.gleam

### CSS

Uses `class_label = "label"` — already defined in `checkbox.gleam`.
Label is used in form field compositions (input + label + error text).

### Types

```gleam
pub type LabelExtraAttrs {
  LabelExtraAttrs(for_: String, class: String)
}

pub const default_label_attrs = LabelExtraAttrs("", "")
```

### Functions

```gleam
/// Renders a styled <label> element
pub fn label(text: String, extra_attrs: LabelExtraAttrs) -> Element(msg)

/// Shortcut for a label associated with an input by ID
pub fn label_for(text: String, input_id: String) -> Element(msg)
```

### Implementation Steps

1. Create `src/saola/label.gleam`
2. Export `class_label = "label"` constant
3. Implement `label(text, extra_attrs)` and `label_for(text, input_id)` shortcuts
4. No separate preview file needed — label examples appear in the input preview
5. Compile check

### Todo

- [ ] `src/saola/label.gleam` created
- [ ] Compile passes

---

## Success Criteria

- `src/saola/input.gleam`, `src/saola/textarea.gleam`, `src/saola/label.gleam` exist
- `gleam build` passes
- `dev/saola/preview/input.gleam` shows text, email, password inputs + textarea examples
- `Inputs` route in the preview app renders real components (not just checkboxes)
- `InitValue` / `SyncValue` duality is preserved (consistent with checkbox.gleam)

## Risk Assessment

| Risk | Likelihood | Mitigation |
|------|-----------|------------|
| `class_input` duplication between input.gleam and checkbox.gleam | Low | Each module defines its own constant — DRY applies to logic, not constants in separate modules |
| `on_input` typing with generics | Low | Use `fn(String) -> msg` wrapped in `Option` — same pattern as button's `click_message` |
| Textarea `rows` attribute type in Lustre | Low | Check `lustre/attribute` for `a.rows()` — may need `a.attribute("rows", int.to_string(n))` |
