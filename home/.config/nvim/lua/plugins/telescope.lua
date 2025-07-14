return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    dependencies = { { 'nvim-lua/plenary.nvim' } },
    config = function()
        local actions = require('telescope.actions')
        local builtin = require('telescope.builtin')
        local previewers = require('telescope.previewers')

        require('telescope').setup {
            defaults = {
                file_sorter = require('telescope.sorters').get_fzy_sorter,

                color_devicons = true,

                file_previewer = previewers.vim_buffer_cat.new,
                grep_previewer = previewers.vim_buffer_vimgrep.new,
                qflist_previewer = previewers.vim_buffer_qflist.new,

                mappings = {
                    i = {
                        ["<C-p>"] = false,
                        ["<C-n>"] = false,
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-k>"] = actions.move_selection_previous,
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

        vim.keymap.set('n', '<C-p>', builtin.git_files, {})

        vim.keymap.set('n', '<leader>fr', function()
            builtin.grep_string({ search = vim.fn.input("Grep >") })
        end)

        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>ft', builtin.treesitter, {})
    end
}
