require'nvim-treesitter.configs'.setup {
    ensure_installed = { 
        "cpp", 
        "typescript",
        "javascript",
        "tsx",
        "python",
        "lua",
        "html",
        "json",
    },
    indent = {
        enable = true,
    },
    highlight = {
        enable = true,
    },
    rainbow = {
        enable = true,
    },
}
