return {
    "ydkulks/cursor-dark.nvim",
    config = function()
        require("cursor-dark").setup({
            -- For theme
            style = "dark-midnight",
            transparent = true,
            -- If you have dashboard-nvim plugin installed
            dashboard = true,
        })
    end,
}
