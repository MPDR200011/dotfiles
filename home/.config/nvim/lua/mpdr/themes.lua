local g = vim.g
local cmd = vim.cmd

cmd [[let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"]]
cmd [[let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"]]

-- Settings for themes I normally use

-- Material Theme settings
g.material_style = "deep ocean"
require('material').setup({
    italics = {
        comments = true,
    }
})

-- Ayu settings
g.ayucolor = 'dark'

-- Neon settings
vim.g.neon_style = "dark"
vim.g.neon_italic_keyword = true
vim.g.neon_italic_function = true

-- Setting actual theme
vim.opt.background = "dark"
vim.cmd.colorscheme('neon')

vim.api.nvim_set_hl(0, 'Comment', { italic = true })
vim.api.nvim_set_hl(0, 'Cursor', { fg='white' })
