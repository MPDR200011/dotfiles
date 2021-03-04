local lspconfig = require('lspconfig');

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
