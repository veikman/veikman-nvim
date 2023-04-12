This is `veikman-nvim`, a personal Neovim configuration.

## Introduction

I try to keep this minimal because I feel that Neovim’s default behaviour is
both good to know and often good enough.

In the interest of minimalism, this configuration does not include or require a
virtual environment or plugin manager. Instead, it relies on Neovim’s built-in
plugin management.

`veikman-nvim` serves my needs programming mainly in Python and various Lisp
dialects. It is designed specifically for use with `sway` (Wayland) and the
Concertina keyboard. That keyboard uses the Colemak key layout by default,
where `hjkl` is useless. Its arrow keys are readily accessible.

## Installation

This entire Git repo should be cloned recursively to a path where Neovim will
identify it as a collection of plugins.

```sh
git clone https://github.com/veikman/veikman-nvim ~/.local/share/nvim/site/pack/veikman-nvim --recursive
```

You then need to activate various parts of the collection as shown below.

### Configuration

`veikman-nvim` comes with a Vimscript configuration file, `base.vim`. You’re
supposed to include that file in your own configuration by editing your
`~/.config/nvim/init.vim`, adding a `source` statement like this:

```nvim
if filereadable(expand("~/.local/share/nvim/site/pack/veikman-nvim/config/base.vim"))
  source ~/.local/share/nvim/site/pack/veikman-nvim/config/base.vim
endif
```

## List of plugins

The following are included as submodules of this Git repository, sourced from
the original creators of each.

For documentation including full and current installation instructions, see the
source URL of each plugin in [`.gitmodules`](.gitmodules). Especially notable
plugin-specific setup instructions are noted below, but will not be as well
researched or maintained as the originals.

### `ale` (ALE)

General linter framework. Configured in `base.vim`.

### `deoplete.nvim`

A general autocompleter that integrates spontaneously with ALE. Enabled in
`base.nvim`.

**Setup**: In Neovim, run `:UpdateRemotePlugins`.

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

## Legal

`veikman-nvim` itself is provided under a Creative Commons Attribution (CC BY)
license. The many plugins referenced within `veikman-nvim` are licensed
separately.
