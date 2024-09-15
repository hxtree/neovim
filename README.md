# hxtree/neovim

This repo contains a complete neovim setup, tailored for an efficient and productive development environment.

## Features

- AI Autocompletion - Github Copilot AI pair programming tool, account required.
- VSCode theme.
- LSP support, Typescript, Lua, and more.

## Installation

On MacOS, the default terminal emulator is not compatible with neovim.
To use Neovim, you can install [wezterm](https://wezfurlong.org/wezterm/), a GPU-accelerated terminal emulator.

For Neovim installation instructions, see the [neovim installation guide](https://github.com/neovim/neovim/blob/master/INSTALL.md).

Note packer install plugins to the following directory:

```sh
~/.local/share/nvim/site/pack/packer/start
```

## Tips & Tricks

> Note: The leader key is set to the space bar. You can change this by editing the `init.lua` file.

Find and replace in the current buffer:

```vim
:%s/old/new/g
```

Add a file by pressing "a" in the file explorer. Rename a file by pressing "r". Delete a file by pressing "d".
To make a folder, press "a" in the file explorer and type the folder name with a trailing slash.

Happy coding! If you have any questions or feedback, don't hesitate to reach out.
