set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath


if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=/home/mpdr/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('/home/mpdr/.cache/dein')
  call dein#begin('/home/mpdr/.cache/dein')

  " Let dein manage dein
  call dein#add('/home/mpdr/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  call dein#add('tpope/vim-surround')
  call dein#add('rhysd/vim-clang-format')
  call dein#add('kana/vim-operator-user')
  call dein#add('majutsushi/tagbar')
  call dein#add('scrooloose/nerdtree')
  call dein#add('kien/ctrlp.vim')
  call dein#add('sheerun/vim-polyglot')
  call dein#add('jiangmiao/auto-pairs')

  call dein#add('mattn/emmet-vim')

  call dein#add('morhetz/gruvbox')
  call dein#add('mkarmona/colorsbox')
  call dein#add('chriskempson/base16-vim')
  call dein#add('kaicataldo/material.vim')

  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  call dein#add('Shougo/deoplete-clangx')
  call dein#add('deoplete-plugins/deoplete-jedi')
  call dein#add('natebosch/vim-lsc')
  call dein#add('autozimu/LanguageClient-neovim', {
    \ 'rev': 'next',
    \ 'build': 'bash install.sh',
    \ })
   
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2017 Sep 20
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" True Colors
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

set t_ut=

set tabstop=2
set shiftwidth=2
set expandtab

" Java language server stuff
let g:lsc_server_commands = {'java': '~/DevTools/java-language-server/dist/mac/bin/launcher --quiet'}


" Clear keybinds
nmapc
imapc
tmapc

" Deoplete 
let g:deoplete#enable_at_startup = 1
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:clang_format#code_style='chromium'
let g:clang_format#style_options={
	\ "IndentWidth" : 2}

"Key Binds
nnoremap <C-K> <C-W>k
nnoremap <C-J> <C-W>j
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
nnoremap <A-u> :tabn<CR>
nnoremap <A-i> :tabp<CR>
inoremap <A-K> <Up>
inoremap <A-J> <Down>
inoremap <A-L> <Right>
inoremap <A-H> <Left>

set completeopt-=preview
set encoding=utf-8


" Syntax hl and line numbers
syntax on
set number relativenumber
set laststatus=2
set cursorline
set scrolloff=5

" Theme
let g:airline_theme = 'material'
let g:material_theme_style = 'dark'
let g:material_terminal_italics = 1
let g:gruvbox_contrast_dark = 'hard'

set t_co=256
colorscheme gruvbox
set background=dark

