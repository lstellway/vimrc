" Tell vim to use 256 colors
if !has('nvim')
  set t_Co=256
endif

" If you're using a symlink to your script, but your resources are in
" the same directory as the actual script, you'll need to do this:
"   1: Get the absolute path of the script
"   2: Resolve all symbolic links
"   3: Get the folder of the resolved absolute file
let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" Vim Plug initialization
" @see https://github.com/junegunn/vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : s:path
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin()
  Plug 'EdenEast/nightfox.nvim'
  Plug 'andymass/vim-matchup'
  Plug 'github/copilot.vim'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-commentary'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ 'coc-html',
    \ 'coc-prettier',
    \ 'coc-css',
    \ 'coc-docker',
    \ 'coc-go',
    \ 'coc-emmet',
    \ 'coc-eslint',
    \ 'coc-xml',
    \ 'coc-yaml',
    \ 'coc-toml',
    \ 'coc-json',
    \ 'coc-solargraph',
    \ 'coc-tailwindcss'
    \ ]
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'vimwiki/vimwiki'
call plug#end()

" Source all configuration files in the `init` directory
" Breaking config into multiple files makes things easier to manage.
for FILE in split(glob(data_dir . '/init/*.vim'), '\n')
  exe 'source' FILE
endfor

