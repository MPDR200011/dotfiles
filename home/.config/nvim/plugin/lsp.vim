nnoremap <leader>ld :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>li :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>lsh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>lrr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>lrn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>lh :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>lca :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>lsd :lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <leader>lnd :lua vim.lsp.diagnostic.goto_next()<CR>

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

lspconfig.jedi_language_server.setup {
    on_attach = require'completion'.on_attach;
}
EOF
