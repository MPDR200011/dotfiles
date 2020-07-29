call plug#begin(stdpath('data') . '/plugged')
" Editor tools 
Plug 'tpope/vim-surround' 
Plug 'jiangmiao/auto-pairs'
Plug 'jackguo380/vim-lsp-cxx-highlight'

Plug 'junegunn/fzf.vim'

Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'ap/vim-css-color'

Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-rooter'

Plug 'rbgrouleff/bclose.vim' " Required by ranger.vim
Plug 'francoiscabrol/ranger.vim'

" Color Themes
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'kaicataldo/material.vim'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" COC.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

set nocompatible

nohls
set tabstop=2
set shiftwidth=2
set expandtab
set colorcolumn=120

" Clear keybinds
nmapc
imapc
tmapc
xmapc
smapc
vmapc

" netrw settings
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
let g:netrw_browse_split = 0

"Key Binds
let g:mapleader="\<Space>"
nnoremap <C-K> <C-W>k
nnoremap <C-J> <C-W>j
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
nnoremap <A-u> :tabp<CR>
nnoremap <A-i> :tabn<CR>
nnoremap <Leader>n :NERDTreeFind<CR>
nnoremap <Leader>t :TagbarOpenAutoClose<CR>
nnoremap <c-p> :GFiles<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fr :Rg! 
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>s :update<CR>

nnoremap <leader>cte :tabe<CR>:terminal<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

inoremap <A-u> <C-\><C-n>:tabp<CR>
inoremap <A-i> <C-\><C-n>:tabn<CR>
inoremap jj <esc>

tnoremap <A-u> <C-\><C-n>:tabp<CR>
tnoremap <A-i> <C-\><C-n>:tabn<CR>

set completeopt-=preview
set encoding=utf-8

" NERDTree
let g:NERDTreeQuitOnOpen=1

" CTRLP
let g:ctrlp_by_filename = 1

" Syntax hl and line numbers
syntax enable
filetype plugin indent on
set number relativenumber
set laststatus=2
set cursorline
set scrolloff=5

" Theme
set termguicolors     " enable true colors support
let g:material_theme_style='ocean'
let g:material_terminal_italics = 1
set background=dark
colorscheme material

let g:airline_theme='material'

set mouse=a

"""" Coc
function EnableCOC()
    set hidden
    set nobackup
    set nowritebackup
    set cmdheight=2

    set updatetime=300

    set shortmess+=c

    set signcolumn=yes

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

augroup COC
    autocmd!
    autocmd FileType c,cpp,java,json,javascript,typescript,typescriptreact call EnableCOC()
augroup END

"""" NCM2
function EnableNCM()
    autocmd BufEnter * call ncm2#enable_for_buffer()

    set signcolumn=yes

    " CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
    inoremap <c-c> <ESC>

    " IMPORTANT: :help Ncm2PopupOpen for more information
    set completeopt=noinsert,menuone,noselect

    " When the <Enter> key is pressed while the popup menu is visible, it only
    " hides the menu. Use this mapping to close the menu and also start a new
    " line.
    inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

    inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
    call EnableLSP()
endfunction()
