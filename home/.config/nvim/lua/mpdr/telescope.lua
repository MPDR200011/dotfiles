local actions = require('telescope.actions')
local map = require('mpdr.utils').map

-- Global remapping
------------------------------
require('telescope').setup{
    defaults = {
        file_sorter = require('telescope.sorters').get_fzy_sorter,

        color_devicons = true,

        file_previewer = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

        mappings = {
            i = {
                ["<C-p>"] = false,
                ["<C-n>"] = false,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-q>"] = actions.close -- aditional close bind
            },
        },
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    },
}

require('telescope').load_extension('fzy_native')

map('n', '<c-p>', '<Cmd>Telescope find_files<CR>')
map('n', '<leader>fr', '<Cmd>Telescope live_grep<CR>')
map('n', '<leader>fb', '<Cmd>Telescope buffers<CR>')
map('n', '<leader>fh', '<Cmd>Telescope help_tags<CR>')
map('n', '<leader>ft', "<Cmd>lua require'telescope.builtin'.treesitter{}<CR>")
