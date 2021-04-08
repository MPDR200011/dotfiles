local lspconfig = require('lspconfig');

vim.g['completion_confirm_key'] = ''

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

