/// Returns the host element's size in the drag direction.
/// `root` is the component's shadow root (from effect.before_paint).
export function measureRoot(root, direction) {
  const host = root.host ?? root
  return direction === 'vertical' ? host.offsetHeight : host.offsetWidth
}
