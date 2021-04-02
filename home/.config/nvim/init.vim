lua require('plugins')

set mouse=a

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
nnoremap <silent> <C-Up> :resize -3<CR>
nnoremap <silent> <C-Down> :resize +3<CR>
nnoremap <silent> <C-Left> :vertical resize +3<CR>
nnoremap <silent> <C-Right> :vertical resize -3<CR>
nnoremap <A-u> :tabp<CR>
nnoremap <A-i> :tabn<CR>

nnoremap n nzzzv
nnoremap N Nzzzv

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

