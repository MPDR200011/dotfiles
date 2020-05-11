call plug#begin(stdpath('data') . '/plugged')
" Editor tools 
Plug 'tpope/vim-surround' 
Plug 'jiangmiao/auto-pairs'

Plug 'rhysd/vim-clang-format'
Plug 'kana/vim-operator-user'

Plug 'junegunn/fzf.vim'

Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'

Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-rooter'

Plug 'rbgrouleff/bclose.vim'
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
Plug 'noahfrederick/vim-laravel'

" Js completion
Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}

" Java
"Plug 'ObserverOfTime/ncm2-jc2', {'for': ['java', 'jsp']}
"Plug 'artur-shaik/vim-javacomplete2', {'for': ['java', 'jsp']}

call plug#end()

set nocompatible

nohls
set tabstop=4
set shiftwidth=4
set expandtab

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
nnoremap <Leader>t :TagbarToggle<CR>
nnoremap <c-p> :Files<CR>
nnoremap <leader>g :GFiles<CR>
nnoremap <leader>r :Rg! 

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
inoremap <A-u> <C-\><C-n>:tabp<CR>
inoremap <A-i> <C-\><C-n>:tabn<CR>

tnoremap <Esc> <C-\><C-n>
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
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

"""" NCM2
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"""" LSP
set hidden

let g:LanguageClient_settingsPath='/home/mpdr/.config/nvim/settings.json'

let g:LanguageClient_serverCommands = {
            \'c': ['clangd'],
            \'cpp': ['clangd'],
            \'java': ['jdtls', '-data', getcwd()],
            \ 'php': ['intelephense', '--stdio'],
            \}

"""" Filetypes
" Java completion
"autocmd FileType java setlocal omnifunc=javacomplete#Complete
"autocmd FileType java JCEnable
"let g:JavaComplete_GradleExecutable = 'gradle'
