local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

require('harpoon').setup({})

vim.keymap.set('n', '<C-M>', mark.add_file, {})
vim.keymap.set('n', '<leader>hg', ui.toggle_quick_menu, {})
vim.keymap.set('n', '<C-H>', ui.nav_prev, {})
vim.keymap.set('n', '<C-L>', ui.nav_next, {})
