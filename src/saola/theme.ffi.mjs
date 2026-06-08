const DARK_QUERY = '(prefers-color-scheme: dark)'
let darkRegistered = false

/**
 * Registers a one-time listener for OS dark-mode changes.
 * Subsequent calls are no-ops — only one listener is ever attached.
 *
 * @param {function(boolean): void} callback  Receives `true` when dark, `false` when light
 * @returns {void}
 */
export function watchDarkMode(callback) {
  if (darkRegistered) return
  darkRegistered = true
  window.matchMedia(DARK_QUERY).addEventListener('change', e => callback(e.matches))
}

/**
 * Returns the current OS dark-mode preference.
 * Returns `false` in non-browser environments (e.g. Node.js test runner).
 *
 * @returns {boolean}
 */
export function getCurrentDarkMode() {
  if (typeof window === 'undefined') return false
  return window.matchMedia(DARK_QUERY).matches
}

/**
 * Adds or removes the `dark` class on `<html>` to apply the active theme.
 *
 * @param {boolean} isDark
 * @returns {void}
 */
export function setHtmlTheme(isDark) {
  if (isDark) {
    document.documentElement.classList.add('dark')
  } else {
    document.documentElement.classList.remove('dark')
  }
}
