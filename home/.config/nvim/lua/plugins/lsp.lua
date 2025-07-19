return {
    'neovim/nvim-lspconfig',
    dependencies = {
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},

        -- Autocompletion
        'saghen/blink.cmp',
    },
    config = function ()
        require("mason").setup()
        require("mason-lspconfig").setup()

        local cmp = require('blink.cmp')

        local lspconfig_defaults = require('lspconfig').util.default_config
        lspconfig_defaults.capabilities = vim.tbl_deep_extend(
            'force',
            lspconfig_defaults.capabilities,
            cmp.get_lsp_capabilities()
        )

        vim.api.nvim_create_autocmd('LspAttach', {
          callback = function(_, bufnr)

              -- Keymaps
              local opts = {buffer = bufnr, remap = false}

              vim.keymap.set("n", "<leader>ld", function() vim.lsp.buf.definition() end, opts)
              vim.keymap.set('n', '<leader>li', function() vim.lsp.buf.implementation() end, opts)
              vim.keymap.set("n", "<leader>lh", function() vim.lsp.buf.hover() end, opts)
              vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)

              vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
              vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
              vim.keymap.set('n', '<leader>lsd', function() vim.lsp.diagnostic.show_line_diagnostics({ border = 'single' })end,opts)


              vim.keymap.set("n", "<leader>lrr", function() vim.lsp.buf.references() end, opts)
              vim.keymap.set("n", "<leader>lrn", function() vim.lsp.buf.rename() end, opts)
              vim.keymap.set("n", "<leader>lsh", function() vim.lsp.buf.signature_help() end, opts)

              vim.keymap.set("n", "<leader>lca", function() vim.lsp.buf.code_action() end, opts)

              --vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
          end
        })

        function MyTelescopeLspCodeActions()
            local ivy_theme = require('telescope.themes').get_ivy()
            ivy_theme ['layout_config']['height'] = 10
            require('telescope.builtin').lsp_code_actions(ivy_theme)
        end


        vim.diagnostic.config({
            virtual_text = true
        })

        vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
            -- Use a sharp border with `FloatBorder` highlights
            border = "single",
        })

        -- enable border for signature
        vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
            vim.lsp.handlers.signature_help,
            {
                border = "single",
            }
        )

        vim.lsp.enable("lua_ls")
        vim.lsp.enable("zls")
        vim.lsp.enable("gopls")
        vim.lsp.enable("ts_ls")
        vim.lsp.enable("phpactor")

    end
}
