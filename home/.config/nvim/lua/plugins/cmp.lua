return {
    'saghen/blink.cmp',
    version = '1.*',

    -- optional: provides snippets for the snippet source
    dependencies = { 'L3MON4D3/LuaSnip', version = 'v2.*' },

    opts = {
        snippets = { preset = "luasnip" },

        keymap = {
            -- preset = 'default',
            ['<C-p>'] = {"select_prev"},
            ['<C-n>'] = {"select_next"},
            ['<Tab>'] = {"accept"},
            ["<C-Space>"] = { function(cmp) cmp.show({ providers = { 'snippets' } }) end },
        },

        appearance = {
            -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
            -- Adjusts spacing to ensure icons are aligned
            nerd_font_variant = 'mono'
        },

        -- (Default) Only show the documentation popup when manually triggered
        completion = { documentation = { auto_show = false } },

        -- Default list of enabled providers defined so that you can extend it
        -- elsewhere in your config, without redefining it, due to `opts_extend`
        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },

        -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
        -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
        -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
        --
        -- See the fuzzy documentation for more information
        fuzzy = { implementation = "prefer_rust_with_warning" }
    },
    opts_extend = { "sources.default" }
}
