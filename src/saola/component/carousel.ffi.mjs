const timers = new WeakMap()

export function addScrollListener(root, callback) {
  const vp = root.querySelector('.viewport')
  if (!vp) return
  vp.addEventListener('scroll', () => {
    clearTimeout(timers.get(vp))
    timers.set(vp, setTimeout(() => {
      const horiz = root.host.getAttribute('orientation') !== 'vertical'
      const pos = horiz ? vp.scrollLeft : vp.scrollTop
      const sz = horiz ? vp.clientWidth : vp.clientHeight
      if (sz === 0) return
      const count = root.host.children.length
      if (count === 0) return
      const idx = Math.max(0, Math.min(count - 1, Math.round(pos / sz)))
      callback(idx)
    }, 80))
  }, { passive: true })
}

export function addSlotChangeListener(root, callback) {
  const slot = root.querySelector('slot')
  if (!slot) return
  slot.addEventListener('slotchange', () => {
    callback(root.host.children.length)
  })
}

export function scrollViewportTo(root, index, orientation) {
  const vp = root.querySelector('.viewport')
  if (!vp) return
  const horiz = orientation !== 'vertical'
  const sz = horiz ? vp.clientWidth : vp.clientHeight
  vp.scrollTo({ [horiz ? 'left' : 'top']: index * sz, behavior: 'smooth' })
}

export function slideCount(root) {
  return root.host ? root.host.children.length : 0
}
