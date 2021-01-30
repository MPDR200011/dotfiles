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
