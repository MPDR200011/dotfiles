local opt = require('mpdr.utils').opt
local g = vim.g
local cmd = vim.cmd

opt('o', 't_Co', '256')
opt('o', 'termguicolors', true)

cmd [[let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"]]
cmd [[let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"]]

-- Settings for themes I normally use

-- Deus settings
g.deus_termcolors=256

-- Material Theme settings
g.material_style = 'deep ocean'
g.material_italic_comments = 1

-- Gruvbox settings
g.gruvbox_bold=0
g.gruvbox_italic=1
g.gruvbox_contrast_dark='hard'

-- Ayu settings
g.ayucolor='dark'

-- Sonokai settings
g.sonokai_style = 'andromeda'
g.sonokai_enable_italic = 1
g.sonokai_disable_italic_comment = 1

-- Setting actual theme
opt('o', 'background', 'dark')
cmd [[colorscheme material]]
g.airline_theme='zenburn'

cmd [[hi Comment gui=italic]]

