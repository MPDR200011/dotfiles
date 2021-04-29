local utils = require('mpdr.utils')
local map = utils.map

require('harpoon').setup({})

map('n', '<C-M>', '<Cmd>lua require("harpoon.mark").add_file()<CR>')
map('n', '<leader>hg', '<Cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>')
map('n', '<C-H>', '<Cmd>lua require("harpoon.ui").nav_prev()<CR>')
map('n', '<C-L>', '<Cmd>lua require("harpoon.ui").nav_next()<CR>')
