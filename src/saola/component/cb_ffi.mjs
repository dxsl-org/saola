// @ts-check

/**
 * Queries all matching elements from a ShadowRoot or Element.
 *
 * @param {ShadowRoot|Element} root
 * @param {string} selector
 * @returns {Element[]}
 */
export function querySelectorAll(root, selector) {
  return Array.from(root.querySelectorAll(selector))
}

/**
 * Returns true if element is scrolled out of view within its container.
 *
 * @param {Element} element
 * @param {Element} container
 * @returns {boolean}
 */
export function isOutOfView(element, container) {
  const el = element.getBoundingClientRect()
  const ct = container.getBoundingClientRect()
  const relYOffset = el.top - ct.top
  const isBelow = container.clientHeight <= relYOffset + el.height
  const isAbove = relYOffset < 0
  return isBelow || isAbove
}

/**
 * Registers a document-level click listener that fires when a click
 * lands outside the host element.
 *
 * @param {ShadowRoot|Element} root
 * @param {() => void} callback
 * @returns {void}
 */
export function addOutsideClickListener(root, callback) {
  const host = root instanceof ShadowRoot ? root.host : root
  document.addEventListener('click', (event) => {
    if (!event.composedPath().includes(host)) {
      callback()
    }
  })
}
