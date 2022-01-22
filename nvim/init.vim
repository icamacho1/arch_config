set nocompatible
filetype off

"Plugin installer
call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'Mofiqul/dracula.nvim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'KarimElghamry/vim-auto-comment'
Plug 'KarimElghamry/vim-auto-comment'
call plug#end()


"Color settings:
colorscheme dracula

"Key mappings:
map <silent> <C-n> :NERDTreeFocus<CR>

"Personal configuration:
filetype plugin indent on
syntax on
set colorcolumn=100
set background=dark
highlight ColorColumn ctermbg=0 guibg=lightgrey
set number
set relativenumber
"set nowrap
set smartindent
set smartcase
set hlsearch
set noerrorbells
set tabstop=4 softtabstop=4
set autoindent
set expandtab
set shiftwidth=4
