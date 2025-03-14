return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function ()
        vim.keymap.set('n', '<leader>t', '<cmd>Neotree action=focus toggle=true reveal=true<cr>')
        vim.keymap.set('n', '<leader>nb', '<cmd>Neotree action=show source=buffers position=right toggle=true<cr>')
    end
}

