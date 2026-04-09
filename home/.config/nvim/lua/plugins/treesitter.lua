return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter').install { "c", "lua", "vim", "vimdoc", "luadoc", "markdown" }
    end
}
