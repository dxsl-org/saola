# Run server to preview the widgets.
preview $ERL_FLAGS="+B":
	@echo "Run Lustre app for preview"
	gleam run -m lustre/dev start saola/preview

build:
	@echo "Build to JS"
	gleam run -m lustre/dev build


build-preview:
	@echo "Build the preview app"
	gleam run -m lustre/dev build saola/preview

vite-build-preview:
	@echo "Build the preview app with Vite"
	bun run vite build

vite-dev-preview:
	@echo "Run preview app with Vite's dev server"
	bun run vite

