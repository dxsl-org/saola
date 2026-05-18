# Saola

UI widgets for [Lustre]-based frontent projects.

Inspired from Shadcn, based on the [Basecoat] port.

While many other UI kits call "components", we call "widgets" because the "[component]" in Lustre is something bigger,
coming with its own Lustre runtime instance.

## Folder structure

```
.
├── gleam.toml
├── src
│   ├── saola/
│   └── saola.gleam
├── assets/
├── dev/
│   ├── basecoat/
│   ├── saola/
│   │   ├── preview/
│   │   └── preview.gleam
│   └── split-lucide-icons.nu
├── justfile
├── README.md
└── test
    └── saola_test.gleam
```

The project is in form of a library, where the to-be-distributed code is in _src_ folder.
We have a small "Gallery" app to see how the widgets are rendered, which is the _preview.gleam_ code.
To run the preview server, run `just vite-dev-preview` (detailed command in _justfile_.)
This preview app code should not be packaged.

Some code are tools for development, placed in _dev_ folder.
The _dev/basecoat_ is a Git submodule of the [Basecoat] source.
It is chosen because it already ported the React-based Shadcn code to pure HTML.

*Notes*:

The `just preview` does not work for now, due to the bug #167 in "Lustre Dev Tools".

## How to develop

The development will involve two steps:

1. Use [`html_lustre_converter`][html_lustre_converter] to convert the HTML from Basecoat to view functions in Gleam code.

1. Redesign the API for our widgets, so that user won't be confused which values that the widget accepts,
   how to not pass useless data.

To think: Where the generated code in step 1 is placed to? Could be _src/saola/raw/_.

## Icons

We use icons from [Lucide]. Because the number of icons is big, we split them to modules whose names match the starting letter of the icon name.

```
src/saola/icon/
├── la.gleam
├── lb.gleam
├── lz.gleam
```

We need to use "code generation" technique to maintain them.

- We use tool from [lucide_lustre] to generate a big *lucide.gleam* file. The import line is changed to using alias to make code shorter, then we move it
  to *src/saola/icon/lucide.gleam*.
- We the use *dev/split-lucide-icons.nu* script to split that *lucide.gleam* file to smaller *l\_\*.gleam* files.

TODO: How to tree-shake?

## Developer tools

- [Gleam], of course.
- [Just]
- [Bun]
- Recommend to use Fish shell, so that it can autocomplete the commands listed in _justfile_.
- [Nushell]: For writing script to process data.

[basecoat]: https://basecoatui.com/
[bun]: https://bun.sh/
[component]: https://hexdocs.pm/lustre/lustre.html#component
[gleam]: https://gleam.run/
[html_lustre_converter]: https://hexdocs.pm/html_lustre_converter/
[just]: https://just.systems/
[lucide]: https://lucide.dev/
[lucide_lustre]: https://hexdocs.pm/lucide_lustre/
[lustre]: https://hexdocs.pm/lustre
[nushell]: https://www.nushell.sh/
