call plug#begin(stdpath('data') . '/plugged')
" Editor tools 
Plug 'tpope/vim-surround' 
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'KabbAmine/vCoolor.vim'
Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-rooter'

" Proper indentation in tsx/jsx files
Plug 'maxmellon/vim-jsx-pretty'

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" autocomplete
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

" For colors in css files, very helpful
Plug 'ap/vim-css-color'

" Color Themes
Plug 'gruvbox-community/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'MPDR200011/material.vim', {'branch': 'main'}
Plug 'ayu-theme/ayu-vim'
Plug 'ajmwagar/vim-deus'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Clear keybinds
nmapc
imapc
tmapc
xmapc
smapc
vmapc

"Key Binds
let g:mapleader=" "
nnoremap <C-K> <C-W>k
nnoremap <C-J> <C-W>j
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
nnoremap <A-u> :tabp<CR>
nnoremap <A-i> :tabn<CR>

nnoremap <leader>s :update<CR>
nnoremap <leader>g :G

nnoremap <leader>cte :tabe<CR>:terminal<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

inoremap <A-u> <C-\><C-n>:tabp<CR>
inoremap <A-i> <C-\><C-n>:tabn<CR>
inoremap jj <esc>

tnoremap <A-u> <C-\><C-n>:tabp<CR>
tnoremap <A-i> <C-\><C-n>:tabn<CR>

" Syntax hl and line numbers
syntax enable
filetype plugin indent on

