local utils = require('mpdr.utils') 
local opt = utils.opt
local map = utils.map
local g = vim.g

opt('o', 'shell', 'fish')


g.mapleader = ' '
g.maplocalleader = ' '
g.polyglot_disabled = { "autoindent", "sensible" }

map('v', '<leader>y', '"+y')
map('n', '<leader>Y', '"+yg_', {silent=false})
map('n', '<leader>y', '"+y')
map('n', '<leader>p', '"+p')
map('n', '<leader>P', '"+P')

require('mpdr.firenvim')
require('mpdr.lsp')
require('mpdr.themes')
