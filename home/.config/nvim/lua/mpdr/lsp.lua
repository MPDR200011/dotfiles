local lspconfig = require('lspconfig')

local g = vim.g
local map = require('mpdr.utils').map
local opt = require('mpdr.utils').opt

g['completion_confirm_key'] = ''

require'snippets'.use_suggested_mappings()

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true;

lspconfig.clangd.setup{
    on_attach = require'completion'.on_attach,
}

lspconfig.tsserver.setup {
    on_attach = require'completion'.on_attach,
    root_dir = lspconfig.util.root_pattern('tsconfig.json'),
}

lspconfig.cssls.setup{
    capabilities = capabilities,
    on_attach = require'completion'.on_attach,
    root_dir = lspconfig.util.root_pattern('package.json', 'Gemfile'),
}

lspconfig.jedi_language_server.setup {
    on_attach = require'completion'.on_attach,
}

vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        underline = true,
        virtual_text = true,
        signs = true,
        update_in_insert = true,
    }
)

map('n', '<leader>ld', '<Cmd>lua vim.lsp.buf.definition()<CR>')
map('n', '<leader>li', '<Cmd>lua vim.lsp.buf.implementation()<CR>')
map('n', '<leader>lsh', '<Cmd>lua vim.lsp.buf.signature_help()<CR>')
map('n', '<leader>lrr', '<Cmd>lua vim.lsp.buf.references()<CR>')
map('n', '<leader>lrn', '<Cmd>lua vim.lsp.buf.rename()<CR>')
map('n', '<leader>lh', '<Cmd>lua vim.lsp.buf.hover()<CR>')
map('n', '<leader>lca', '<Cmd>lua vim.lsp.buf.code_action()<CR>')
map('n', '<leader>lsd', '<Cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')
map('n', '<leader>lnd', '<Cmd>lua vim.lsp.diagnostic.goto_next()<CR>')

-- autocomplete settings
opt('o', 'completeopt', 'menuone,noinsert,noselect')
g.completion_matching_strategy_list = { 'exact', 'substring', 'fuzzy' }

-- Use tab to cicle autocomplete sugestions
map('i', '<tab>', [[pumvisible() ? "\<C-n>" : "\<TAB>"]], {expr=true})
map('i', '<s-tab>', [[pumvisible() ? "\<C-p>" : "\<C-h>"]], {expr=true})
