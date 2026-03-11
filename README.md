# Doric themes

WIP Neovim port of the [Doric
themes](https://github.com/protesilaos/doric-themes) for GNU Emacs.

<table>
  <tr>
    <td><img src="media/light.png" /></td>
    <td><img src="media/dark.png" /></td>
  </tr>
  <tr>
    <td><img src="media/oak.png" /></td>
    <td><img src="media/water.png" /></td>
  </tr>
</table>

## Overview

From the original project:
> The Doric themes use few colours and will appear monochromatic in many
> contexts. They are my most minimalist themes. Styles involve the careful use
> of typographic features and subtleties in colour gradients to establish
> a consistent rhythm.

See the
[screenshots](https://github.com/aymenhafeez/doric-themes.nvim#screenshots)
section for screenshots of all the colourscheme variants.

## Requirements

Neovim >= 0.8.0

## Installation

[vim.pack](https://neovim.io/doc/user/pack/#vim.pack) (Neovim >=0.12)

```lua
vim.pack.add({ "https://github.com/aymenhafeez/doric-themes.nvim" })
```

[lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{ "aymenhafeez/doric-themes.nvim", priority = 1000 }
```

## Usage

Set a specific variant, for example:

```lua
vim.cmd "colorscheme doric-marble"
```

The colorscheme also comes with some configurable options:

```lua
require("doric").setup({
  -- set a default light and dark variant
  -- these will automatically sync with vim.o.background
  light = "doric-light",
  dark = "doric-dark",
  -- enable/disable italic and bold styles
  -- enabled by default
  styles = {
    italic = true,
    bold = true,
  },
})

vim.cmd "colorscheme doric"
```

Setting `vim.cmd "colorscheme doric"` without calling `setup()` will use
`doric-light` and `doric-dark` by default. Similarly, both italic and bold
styles will be enabled.

## Screenshots

### Light variants

<details>
<summary>doric-beach</summary>

![doric-beach](media/doric-beach.png)

</details>

<details>
<summary>doric-cherry</summary>

![doric-cherry](media/doric-cherry.png)

</details>

<details>
<summary>doric-earth</summary>

![doric-earth](media/doric-earth.png)

</details>

<details>
<summary>doric-jade</summary>

![doric-jade](media/doric-jade.png)

</details>

<details>
<summary>doric-light</summary>

![doric-light](media/doric-light.png)

</details>

<details>
<summary>doric-marble</summary>

![doric-marble](media/doric-marble.png)

</details>

<details>
<summary>doric-oak</summary>

![doric-oak](media/doric-oak.png)

</details>

<details>
<summary>doric-siren</summary>

![doric-siren](media/doric-siren.png)

</details>

<details>
<summary>doric-wind</summary>

![doric-wind](media/doric-wind.png)

</details>

### Dark variants

<details>
<summary>doric-copper</summary>

![doric-copper](media/doric-copper.png)

</details>

<details>
<summary>doric-dark</summary>

![doric-dark](media/doric-dark.png)

</details>

<details>
<summary>doric-fire</summary>

![doric-fire](media/doric-fire.png)

</details>

<details>
<summary>doric-mermaid</summary>

![doric-mermaid](media/doric-mermaid.png)

</details>

<details>
<summary>doric-obsidian</summary>

![doric-obsidian](media/doric-obsidian.png)

</details>

<details>
<summary>doric-pine</summary>

![doric-pine](media/doric-pine.png)

</details>

<details>
<summary>doric-plum</summary>

![doric-plum](media/doric-plum.png)

</details>

<details>
<summary>doric-valley</summary>

![doric-valley](media/doric-valley.png)

</details>

<details>
<summary>doric-water</summary>

![doric-water](media/doric-water.png)

</details>

## TODO

* Support for more plugins
* Options to override highlight groups
* Complementary themes for terminal emulators

## Credit

* [Doric themes](https://github.com/protesilaos/doric-themes) for the original
  palette
* [modus-theme.nvim](https://github.com/miikanissi/modus-themes.nvim/) for the
  colourscheme file structure
