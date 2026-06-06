let _worker = null

export function request_layout(nodes, edges, callback) {
  if (typeof Worker === 'undefined') return

  if (!_worker) {
    _worker = new Worker(
      new URL('./graph_layout_worker.js', import.meta.url),
      { type: 'module' },
    )
  }

  const id = Math.random()
  const handler = (e) => {
    if (e.data.id !== id) return
    _worker.removeEventListener('message', handler)
    callback(e.data.result)
  }
  _worker.addEventListener('message', handler)
  _worker.postMessage({ id, nodes, edges })
}
