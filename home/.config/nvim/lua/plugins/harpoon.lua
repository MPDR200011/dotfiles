return {
    'ThePrimeagen/harpoon',
    branch='harpoon2',
    dependencies={
        'nvim-lua/plenary.nvim'
    },
    config = function ()
        local harpoon = require("harpoon")

        harpoon:setup()

        local ui = harpoon.ui

        vim.keymap.set('n', '<C-M>', function() harpoon:list():append() end, {})
        vim.keymap.set('n', '<leader>hg', function() ui:toggle_quick_menu(harpoon:list()) end, {})
        vim.keymap.set('n', '<C-H>', function() harpoon:list():prev() end, {})
        vim.keymap.set('n', '<C-L>', function() harpoon:list():next() end, {})
    end
}

