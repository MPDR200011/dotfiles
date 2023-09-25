local g = vim.g
local cmd = vim.cmd

cmd [[let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"]]
cmd [[let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"]]

-- Settings for themes I normally use

-- Deus settings
g.deus_termcolors = 256

-- Material Theme settings
g.material_style = "deep ocean"
require('material').setup({
    italics = {
        comments = true,
    }
})

-- Gruvbox settings
g.gruvbox_bold = 0
g.gruvbox_italic = 1
g.gruvbox_contrast_dark = 'hard'

-- Ayu settings
g.ayucolor = 'dark'

-- Sonokai settings
g.sonokai_style = 'andromeda'
g.sonokai_enable_italic = 1
g.sonokai_disable_italic_comment = 1

-- Tokyonight settings
vim.g.tokyonight_style = "night"

-- Neon settings
vim.g.neon_style = "dark"
vim.g.neon_italic_keyword = true
vim.g.neon_italic_function = true

-- Nigthfox settings
-- require('nightfox').setup({
--   options = {
--     styles = {
--       comments = "italic", -- change style of comments to be italic
--     },
--     inverse = {
--       match_paren = false, -- inverse the highlighting of match_parens
--     }
--   },
--   groups = {
--     TSPunctDelimiter = { fg = "${red}" }, -- Override a highlight group with the color red
--     LspCodeLens = { bg = "#000000", style = "italic" },
--   }
-- })

-- Setting actual theme
vim.opt.background = "dark"
vim.cmd.colorscheme('catppuccin')

vim.api.nvim_set_hl(0, 'Comment', { italic = true })
vim.api.nvim_set_hl(0, 'Cursor', { fg='white' })
