# vimrc configuration

This repository houses my `~/.vimrc` configuration for the [VIM text editor](https://www.vim.org/).

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

