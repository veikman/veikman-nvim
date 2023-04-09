This is `veikman-nvim`, a personal Neovim configuration.

I try to keep to this minimal because I feel that Neovim’s default behaviour
is both good to know and often good enough.

In the interest of minimalism, this configuration does not include or require a
virtual environment or plugin manager. Instead, it relies on Neovim’s built-in
plugin management. For that reason, this entire Git repo should be cloned into:

    ~/.local/share/nvim/site/pack/veikman-nvim

That path, where `~` represents your home directory, is automatically
identified by Neovim as a collection of plugins.

## Plugins

The following are included as submodules of this Git repository.
To activate them, clone recursively or run:

    git submodule update --init --recursive

For documentation including full and current installation instructions, see the
source URL of each plugin in [`.gitmodules`](.gitmodules).

### `ale` (ALE)

General linter framework. Configured in `base.vim`.

### `deoplete.nvim`

A general autocompleter that integrates spontaneously with ALE. Enabled in
`base.nvim`.

**Setup**: You may need to `:UpdateRemotePlugins` to get this to work.

### `deoplete-jedi`

A Python-specific extension of `deoplete`.

**Setup**: This needs the `jedi` Python package.

### `nuuid.vim`

`<leader>u` inserts a new v4 UUID. Good for data entry.

### `palenight`

A color sheme. Enabled in `base.vim`.

### `parinfer-rust`

An autoformatter for lots of Lisp dialects.

**Setup**: This needs Rust and `clang` (incl. `libclang-dev`), then you `cargo
build --release` it in place.
