call plug#begin('~/.config/nvim/plugged')
" below are some vim plugin for demonstration purpose
Plug 'junegunn/seoul256.vim'
Plug 'iCyMind/NeoSolarized'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'abecodes/tabout.nvim'
call plug#end()


syntax enable
syntax on
set mouse=a
set number
set cursorline
inoremap jj <esc>

" the length of Tab
set tabstop=4
set shiftwidth=4
set softtabstop=4
" set the auto complete
inoremap ( ()<Left>
" inoremap < <><Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap { {}<Left>

