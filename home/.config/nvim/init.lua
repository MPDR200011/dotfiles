local utils = require('mpdr.utils') 
local opt = utils.opt
local map = utils.map
local cmd = vim.cmd
local g = vim.g

require('mpdr.plugins')

opt('o', 'shell', 'fish')

opt('o', 'mouse', 'a')

-- Syntax hl and line numbers
cmd [[syntax enable]]
cmd [[filetype plugin indent on]]

-- Clear keybinds
cmd [[nmapc]]
cmd [[imapc]]
cmd [[tmapc]]
cmd [[xmapc]]
cmd [[smapc]]
cmd [[vmapc]]


g.mapleader = ' '
g.maplocalleader = ' '
g.polyglot_disabled = { "autoindent", "sensible" }

-- Navigate between tabs
map('n', '<A-u>', ':tabp<CR>')
map('n', '<A-i>', ':tabn<CR>')
map('i', '<A-u>', '<C-\\><C-n>:tabp<CR>')
map('i', '<A-i>', '<C-\\><C-n>:tabn<CR>')
map('t', '<A-u>', '<C-\\><C-n>:tabp<CR>')
map('t', '<A-i>', '<C-\\><C-n>:tabn<CR>')

-- Easy normal mode shortcuts
map('i', 'jj', '<esc>')
map('t', 'JJ', '<C-\\><C-n>')

-- Keep cursor centered when searching
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')

map('n', '<leader>s', ':update<CR>')
map('n', '<leader>g', ':G')

-- Create a terminal
map('n', '<leader>cte', ':tabe<CR>:terminal<CR>')

-- Move selection by one line and keep it indented, thanks ThePrimeagen for the
-- tip
map('v', 'J', ':m \'>+1<CR>gv=gv')
map('v', 'K', ':m \'<-2<CR>gv=gv')

-- Saner clipboard commands
map('v', '<leader>y', '"+y')
map('n', '<leader>Y', '"+yg_', {silent=false})
map('n', '<leader>y', '"+y')
map('n', '<leader>p', '"+p')
map('n', '<leader>P', '"+P')

require('mpdr.firenvim')
require('mpdr.lsp')
require('mpdr.nerdtree')
require('mpdr.telescope')
require('mpdr.themes')
require('mpdr.treesitter')
