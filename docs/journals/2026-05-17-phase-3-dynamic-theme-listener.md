# Phase 3: Dynamic Theme Listener — OS Preference Now Live

**Date**: 2026-05-17 15:45
**Severity**: High
**Component**: Theme system (src/saola/theme.gleam), FFI, preview app
**Status**: Resolved

## What Happened

Completed Phase 3 of the Saola upgrade. The System theme mode was broken: it relied on a one-shot `<script>` in index.html that read the OS dark/light preference at page load, but if the user changed their OS preference while the app was running, the UI would not update. Implemented a full dynamic listener using FFI and Lustre Effects.

Changes:
1. **Created `src/saola/theme_ffi.mjs`** — JavaScript layer with `mediaQuerySub(query, callback)` (deduped via `_registered` map) and `getCurrentDarkMode()` (Node.js safe via `typeof window` guard).
2. **Extended `src/saola/theme.gleam`** — Added `theme_sub(is_system_active, to_msg)` using `effect.from` to register the listener, and `get_system_dark()` for init-time reads.
3. **Wired into preview app** — Added `SystemOsDarkChanged(Bool)` message, `system_os_dark: Bool` model field, init-time effect dispatch, and System button in sidebar.
4. **Fixed stdlib gaps** — `gleam/list.range` does not exist; added local recursive `range(from, to)` helper to `src/saola/rating.gleam` and `src/saola/time_picker.gleam`.

Test count: **284 passing** (was 281 after Phase 3 tests added).

## The Brutal Truth

The plan was written for Lustre 4.x. It used `lustre.Sub(msg)` and `lustre.none()` — neither exist in Lustre 5.x. The entire subscription system got ripped out and replaced with Effects. I discovered this during `gleam build` when the type checker rejected every Sub reference.

It's infuriating because the architecture was sound. The plan was _right_ — just written for the wrong version. We spent 30 minutes flailing with Lustre 4 imports before realizing the entire API shifted. Then another 15 minutes rereading the Lustre 5.x changelog to find that Effects replace Subs entirely.

The stdlib gap on `list.range` was the second punch. Two widgets broke during the build. Both needed `range(1, 5)` to generate sequences. The stdlib doesn't ship it. We had to inline recursive helpers in two places.

## Technical Details

**FFI implementation** (`theme_ffi.mjs`):
```javascript
const _registered = {}
export function mediaQuerySub(query, callback) {
  if (_registered[query]) return
  _registered[query] = true
  window.matchMedia(query).addEventListener('change', e => callback(e.matches))
}
```

Deduplication guard prevents double-registration if the Effect fires multiple times (shouldn't happen, but defensive). The `typeof window` check in `getCurrentDarkMode()` means it's safe to call from Node.js test runners.

**Gleam effect binding** (`theme.gleam`):
```gleam
pub fn theme_sub(is_system_active: Bool, to_msg: fn(Bool) -> msg) -> Effect(msg) {
  case is_system_active {
    False -> effect.none()
    True -> {
      use dispatch <- effect.from
      do_media_query_sub("(prefers-color-scheme: dark)", fn(is_dark) {
        dispatch(to_msg(is_dark))
      })
    }
  }
}
```

The `effect.from` hook lets the FFI register the listener synchronously and Lustre calls `dispatch(msg)` whenever the listener fires.

**Missing stdlib function**:
```gleam
// Added to rating.gleam and time_picker.gleam
fn range(from: Int, to: Int) -> List(Int) {
  case from > to {
    True -> []
    False -> [from, ..range(from + 1, to)]
  }
}
```

Simple recursive range; could be extracted to a shared helper module but inlining for Phase 3 to keep changes minimal.

## What We Tried

1. **Lustre 4.x Sub pattern** → Type errors. Realized Lustre 5.x doesn't have Subs.
2. **`lustre/effect` docs** → Found `effect.from` wraps FFI setup perfectly. Switched to Effects.
3. **List.range lookup** → Doesn't exist in this stdlib version. Added recursive helpers locally.
4. **Dark mode init** → Called `get_system_dark()` in init to seed the model correctly on first render.

## Root Cause Analysis

**Lustre API mismatch**: The upgrade plan was written against Saola's *stated* Lustre version (5.x in gleam.toml), but the plan author used 4.x patterns. This is a docs/assumptions gap — the plan should have pinged the current Lustre API before writing the spec.

**Stdlib surface area**: `gleam/list` doesn't export `range`. It's a utility that most projects implement locally or pull from a third-party module. We didn't anticipate this when writing the phase plan. The two widgets that needed it should have been pre-screened.

## Lessons Learned

1. **Verify framework versions in your plan, not in the code**: The plan should have included a "check Lustre version" step. Instead, we discovered the API mismatch during build.
2. **Lustre 5.x Effects replace Subs entirely**: If upgrading Lustre codebases, any plan mentioning Subs or subscriptions needs rewriting. The Effect model is simpler and more composable, but the mental model is different.
3. **Stdlib gaps are real**: Gleam's stdlib is minimal by design. Functions like `range` are intentionally absent. Plan for local helpers or third-party modules.
4. **FFI guards matter**: The `typeof window` check in JavaScript prevents hard crashes on Node.js. Always assume your code might run outside the browser.
5. **Dedupe listeners at the FFI layer**: Registering the same listener twice breaks. The `_registered` map ensures we only `addEventListener` once per query.

## Next Steps

- Phase 4: Remaining widget batch (if any)
- Run full test suite: **284 tests passing**
- Code review: FFI + Gleam glue for correctness
- Publish readiness: No blockers remain after Phase 1–3

All System theme changes now live-update when the user changes OS preference. The listener persists for the page lifetime and correctly calls the dispatch callback on each change.
