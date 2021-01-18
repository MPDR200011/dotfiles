call plug#begin(stdpath('data') . '/plugged')
" Editor tools 
Plug 'tpope/vim-surround' 
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'KabbAmine/vCoolor.vim'

" For colors in css files, very helpful
Plug 'ap/vim-css-color'

Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-rooter'

" Color Themes
Plug 'gruvbox-community/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'MPDR200011/material.vim', {'branch': 'main'}
Plug 'ayu-theme/ayu-vim'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" COC.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

set nocompatible

" limits and tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set colorcolumn=120

" default settings
set exrc
set guicursor=a:block-blinkon0
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
set scrolloff=5
set completeopt-=preview
set encoding=utf-8
set signcolumn=yes


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
nnoremap <Leader>n :NERDTreeFind<CR>

nnoremap <c-p> :GFiles<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fr :Rg! 
nnoremap <leader>fb :Buffers<CR>

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
colorscheme material
let g:airline_theme='material'

"""" Coc
function EnableCOC()
    set hidden
    set nobackup
    set nowritebackup
    set cmdheight=2

    set updatetime=300

    set shortmess+=c

    inoremap <silent><expr> <TAB>
                \ pumvisible() ? "\<C-n>" :
                \ <SID>check_back_space() ? "\<TAB>" :
                \ coc#refresh()
    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

    function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

    " Use <c-space> to trigger completion.
    inoremap <silent><expr> <c-space> coc#refresh()

    if exists('*complete_info')
        inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
    else
        inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
    endif

    nmap <silent> <leader>ld <Plug>(coc-definition)
    nmap <silent> <leader>lt <Plug>(coc-type-definition)
    nmap <silent> <leader>li <Plug>(coc-implementation)
    nmap <silent> <leader>lr <Plug>(coc-references)
    nmap <silent> <leader>ln <Plug>(coc-diagnostic-next)
    nmap <silent> <leader>lp <Plug>(coc-diagnostic-prev)
endfunction()

call EnableCOC()
