lua require('mpdr.plugins')

set mouse=a

" Clear keybinds
nmapc
imapc
tmapc
xmapc
smapc
vmapc

lua require('mpdr.init')

"Key Binds
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
tnoremap JJ <C-\><C-n>

" Syntax hl and line numbers
syntax enable
filetype plugin indent on

