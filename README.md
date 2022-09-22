# vimrc configuration

This repository houses my `~/.vimrc` configuration for the [VIM text editor](https://www.vim.org/).

*Notes:*<br />
*Some of the configuration here relies on [LUA](https://www.lua.org/) and may only be compatible with versions of VIM compiled with LUA.*<br />
*(MacOS users can install a newer version VIM compiled with LUA support via homebrew: `brew install vim`)*<br />
*I am also transitioning to use of [Neovim (`nvim`)](https://neovim.io/).*

## Installation

Remove *(or backup)* any pre-existing configuration:

```shell
rm -rf "${HOME}/.vim/"
```

Clone the repository to your home directory.
*(Alternatively, you can clone the repository elsewhere and symlink it from the home directory)*

```shell
git clone https://github.com/lstellway/vimrc.git "${HOME}/.vim"
```

Place the following contents in your `.vimrc` file to load the configuration:

```vim
exe 'source' $HOME . '/.vim/init.vim'
```

Open VIM and install plugins via the `PlugInstall` command.
*(Refer to the [junegunn/vim-plug](https://github.com/junegunn/vim-plug) page for more information)*.

## NVIM Setup

NVIM stores configuration in different directories than a standard VIM installation. 
To get NVIM to share configuraiton with VIM:

```sh
# Create a directories for the NVIM configuration
mkdir -p "${HOME}/.local/share/nvim"
mkdir -p "${HOME}/.config/nvim"

# Symlink the VIM config and plugin directories
ln -s "${HOME}/.vim" "${HOME}/.local/share/nvim/site"
ln -s "${HOME}/.vim/plugged" "${HOME}/.local/share/nvim/plugged"
ln -s "${HOME}/.vimrc" "${HOME}/.config/nvim/init.vim"
ln -s "${HOME}/.vim/coc-settings.json" "${HOME}/.config/nvim/coc-settings.json"
```
