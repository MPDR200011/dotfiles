call plug#begin(stdpath('data') . '/plugged')
" Editor tools 
Plug 'tpope/vim-surround' 
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'KabbAmine/vCoolor.vim'

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

Plug 'mattn/emmet-vim'
Plug 'airblade/vim-rooter'

" Color Themes
Plug 'gruvbox-community/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'MPDR200011/material.vim', {'branch': 'main'}
Plug 'ayu-theme/ayu-vim'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

set nocompatible

" limits and tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set colorcolumn=120
set signcolumn=yes
set scrolloff=5

" default settings
set exrc
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set encoding=utf-8
set shortmess+=c

set cmdheight=2
set updatetime=50


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
nnoremap <Leader>n <cmd>NERDTreeFind<CR>

nnoremap <c-p> <cmd>Telescope find_files<cr>
nnoremap <leader>fr <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

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


" NERDTree
let g:NERDTreeQuitOnOpen=1

" CTRLP
let g:ctrlp_by_filename = 1

" Syntax hl and line numbers
syntax enable
filetype plugin indent on
set laststatus=2
set cursorline

" Theme

" Settings for themes I normally use

" Material Theme settings
let g:material_theme_style='ocean'
let g:material_terminal_italics = 1

" Gruvbox settings
let g:gruvbox_bold=1
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='hard'

" Ayu settings
let ayucolor='dark'
set background=dark

" Setting actual theme
colorscheme gruvbox
let g:airline_theme='gruvbox'

" autocomplete settings
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

" Use tab to cicle autocomplete sugestions
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

lua << EOF
local lspconfig = require'lspconfig';

lspconfig.clangd.setup{
    on_attach = require'completion'.on_attach
}

lspconfig.tsserver.setup {
    on_attach = require'completion'.on_attach;
    root_dir = lspconfig.util.root_pattern('tsconfig.json');
}
EOF

" TreeSitter Settings
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "cpp", "typescript", "javascript" }; -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  };
}
EOF
