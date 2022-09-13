" FZF
set rtp+=/opt/homebrew/opt/fzf

" Layout
let g:fzf_layout = { 'down': '40%' }

" Bind crtl-p shortcut
nnoremap <silent> <C-p> :FZF<CR>
" nmap <C-P> :FZF<CR>

" Default command
" Ref: https://github.com/junegunn/fzf/issues/337
" let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'
let $FZF_DEFAULT_COMMAND = 'fd --type f --hidden --no-ignore --ignore-case --exclude=".git"'

" ripgrep with the ability to specify a directory
command! -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".<q-args>, 1, fzf#vim#with_preview(), <bang>0)

