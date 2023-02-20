:lua require('init')

:set number
:set relativenumber

:set expandtab
:set shiftwidth=4
:set tabstop=4
:set softtabstop=4

:set smartindent

:set nowrap

:set incsearch

:set termguicolors

:set scrolloff=8

:set updatetime=50

:set colorcolumn = "80"

:set splitright


inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
