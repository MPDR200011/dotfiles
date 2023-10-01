return {
    'echasnovski/mini.surround',
    dependencies = {
        { 'echasnovski/mini.nvim' }
    },
    name = "surround",
    config = function ()
        require("mini.surround").setup({})
    end,
}
