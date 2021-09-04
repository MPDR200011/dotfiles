local g = vim.g
local map = require('mpdr.utils').map
local opt = require('mpdr.utils').opt

g['completion_confirm_key'] = ''

local snippets = require('snippets')
local lspconfig = require('lspconfig')

snippets.use_suggested_mappings()
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true;

lspconfig.clangd.setup{
    on_attach = require'completion'.on_attach,
}

lspconfig.tsserver.setup {
    capabilities = capabilities,
    on_attach = require'completion'.on_attach,
    root_dir = lspconfig.util.root_pattern('tsconfig.json'),
}

lspconfig.cssls.setup{
    capabilities = capabilities,
    on_attach = require'completion'.on_attach,
    root_dir = lspconfig.util.root_pattern('package.json', 'Gemfile'),
}

lspconfig.pylsp.setup {
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

-- autocomplete settings
opt('o', 'completeopt', 'menuone,noinsert,noselect')
g.completion_matching_strategy_list = { 'exact', 'substring', 'fuzzy' }

-- Use tab to cicle autocomplete sugestions
-- map('i', '<tab>', [[pumvisible() ? "\<C-n>" : "\<TAB>"]], {expr=true})
-- map('i', '<s-tab>', [[pumvisible() ? "\<C-p>" : "\<C-h>"]], {expr=true})

-- Snippets
local U = require('snippets.utils');
snippets.snippets = {
    _global = {
        todo = "TODO(mpdr): ";
    };
    typescriptreact = {
        ["newComponent"] = U.match_indentation [[
import React from 'react';

const $1: React.FC = () => {
    return (
        <>
        </>
    );
};

export default $1;]]
    };
}

-- lspsaga
local saga = require('lspsaga')

saga.init_lsp_saga { }

map('n', '<leader>ld', '<Cmd>lua vim.lsp.buf.definition()<CR>')
map('n', '<leader>li', '<Cmd>lua vim.lsp.buf.implementation()<CR>')
map('n', '<leader>lsh', '<Cmd>lua vim.lsp.buf.signature_help()<CR>')
map('n', '<leader>lrr', '<Cmd>lua vim.lsp.buf.references()<CR>')
map('n', '<leader>lrn', ':Lspsaga rename<CR>')
map('n', '<leader>lh', ':Lspsaga hover_doc<CR>')
map('n', '<leader>lca', ':Lspsaga code_action<CR>')
map('v', '<leader>lca', ':Lspsaga range_code_action<CR>')
map('n', '<leader>lsd', ':Lspsaga show_line_diagnostics<CR>')
map('n', '<leader>lnd', ':Lspsaga diagnostic_jump_next<CR>')

