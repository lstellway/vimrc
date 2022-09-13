" Logan
set number
" set relativenumber

" tell vim where to put its backup files
set backupdir=/private/tmp

" tell vim where to put swap files
set dir=/private/tmp

" Change default direction of splits
set splitbelow splitright

" change the mapleader
" let mapleader="\<Space>"

" Always show status line
set laststatus=2

" Always show tab line
set showtabline=2

" Indentation
autocmd FileType javascript,javascriptreact,typescript,typescriptreact,php setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab smarttab

" Helper function to set Indentation
" Usage:
"   :Indentation [NUMBER]
function! SetIndentation(...) abort
  let size = get(a:, 1, 2)
  let cmd = 'setlocal shiftwidth='.size.' tabstop='.size.' softtabstop='.size.' expandtab smarttab'
  execute cmd
endfunction
command! -nargs=* Indentation call SetIndentation(<q-args>)

" Go to definition
nnoremap <leader>i :vsplit \| :call CocAction('jumpDefinition')<CR>
nnoremap <Esc>i :split \| :call CocAction('jumpDefinition')<CR>

" Map tab to switch tabs
nmap <Tab> :tabnext<CR>
map <S-Tab> :tabprevious<CR>

" Fix slow TypeScript
" @see https://jameschambers.co.uk/vim-typescript-slow
syntax on
" Use new regular expression engine
set re=0

" Optimize syntax highlighting for large files
" @see https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim
" autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
" autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" Keep cursor vertically centered
:set scrolloff=999

