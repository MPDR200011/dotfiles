return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {'williamboman/mason.nvim'},           -- Optional
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
    },
    config = function ()
        local lsp = require('lsp-zero')

        lsp.preset("recommended")

        lsp.ensure_installed({
            'ts_ls',
            'eslint',
            'clangd',
            'lua_ls',
            'svelte',
            'zls',
            'rust_analyzer',
            'gopls'
        })



        local cmp = require('cmp')
        local cmp_select = {behavior = cmp.SelectBehavior.Select}
        local cmp_mappings = lsp.defaults.cmp_mappings({
            ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
            ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
            ['<Tab>'] = cmp.mapping.confirm({ select = true }),
            ["<C-Space>"] = cmp.mapping.complete(),
            ['<S-Tab>'] = nil,
        })

        lsp.setup_nvim_cmp({
            mapping = cmp_mappings
        })

        lsp.set_preferences({
            suggest_lsp_servers = false,
            sign_icons = {
                error = 'E',
                warn = 'W',
                hint = 'H',
                info = 'I'
            }
        })

        lsp.on_attach(function(_, bufnr)
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

        end)

        function MyTelescopeLspCodeActions()
            local ivy_theme = require('telescope.themes').get_ivy()
            ivy_theme ['layout_config']['height'] = 10
            require('telescope.builtin').lsp_code_actions(ivy_theme)
        end

        require('lspconfig').lua_ls.setup {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = {'vim', 'use'},
                    },
                },
            },
        }

        lsp.setup()

        vim.diagnostic.config({
            virtual_text = true
        })

        vim.lsp.handlers["textDocument/hover"] =
        vim.lsp.with(vim.lsp.handlers.hover, {
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

    end
}
