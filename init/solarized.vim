" Detect dark / light mode from system
let darkmode=split(system('defaults read -g AppleInterfaceStyle'))
if len(darkmode) > 0 && tolower(darkmode[0]) == 'dark'
  let darkmode=1
else
  let darkmode=0
endif

" Solarized Theme
syntax enable
if darkmode == 0 " if has('gui_running')
    set background=light
else
    set background=dark
endif
colorscheme solarized

