" Detect dark / light mode from system
let darkmode=split(system('defaults read -g AppleInterfaceStyle'))
if len(darkmode) > 0 && tolower(darkmode[0]) == 'dark'
  let darkmode=1
else
  let darkmode=0
endif

syntax enable
if darkmode == 0
  set background=light
  colorscheme dawnfox
else
  set background=dark
  colorscheme nightfox
endif

