call plug#begin(stdpath('data') . '/plugged')
" Editor tools 
Plug 'tpope/vim-surround' 
Plug 'jiangmiao/auto-pairs'

Plug 'rhysd/vim-clang-format'
Plug 'kana/vim-operator-user' " Required by clang-format

Plug 'junegunn/fzf.vim'

Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'

Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-rooter'

Plug 'rbgrouleff/bclose.vim' " Required by ranger.vim
Plug 'francoiscabrol/ranger.vim'

" Color Themes
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" NCM2
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" PHP cpmpletion
Plug 'phpactor/phpactor', {'for': 'php', 'branch': 'master', 'do': 'composer install --no-dev -o'}
Plug 'phpactor/ncm2-phpactor'
Plug 'noahfrederick/vim-laravel'

" Js completion
Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}

" COC.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

set nocompatible

nohls
set tabstop=4
set shiftwidth=4
set expandtab
set colorcolumn=120

" Clear keybinds
nmapc
imapc
tmapc
xmapc
smapc
vmapc

" Clang formatting
let g:clang_format#code_style='chromium'
let g:clang_format#style_options={
	\ "IndentWidth" : 4}

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

nnoremap <leader>nte :tabe<CR>:terminal<CR>

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
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_bold='0'
colorscheme dracula
set background=dark

let g:airline_theme='dracula'

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
    autocmd FileType java,json call EnableCOC()
augroup END

"""" NCM2
function EnableNCM()
    autocmd BufEnter * call ncm2#enable_for_buffer()

    set signcolumn=yes

    " IMPORTANT: :help Ncm2PopupOpen for more information
    set completeopt=noinsert,menuone,noselect

    inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
    call EnableLSP()
endfunction()

augroup NCM
    autocmd!
    autocmd FileType c,cpp,python,php call EnableNCM()
    autocmd FileType php call SetupPHPactor()
augroup END

function SetupPHPactor()
    let $PATH .= ":" . stdpath('data') . '/plugged/phpactor/bin'
    let g:phpactorUseOpenWindows="true"
endfunction()

"""" LSP
function EnableLSP()
    set hidden

    nnoremap <silent> <leader>ld :call LanguageClient#textDocument_definition()<CR>
    nnoremap <silent> <leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
    nnoremap <silent> <leader>lr :call LanguageClient#textDocument_references()<CR>
    nnoremap <silent> <leader>lm :call LanguageClient_contextMenu()<CR>
    nnoremap <silent> <leader>ls :call LanguageClient#textDocument_documentSymbol()<CR>

    let g:LanguageClient_settingsPath='/home/mpdr/.config/nvim/settings.json'

    let g:LanguageClient_serverCommands = {
                \'c': ['clangd'],
                \'cpp': ['clangd'],
                \'python': ['pyls'],
                \}
    " \ 'php': [ 'phpactor', 'server:start', '--stdio']
endfunction()
