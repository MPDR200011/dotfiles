local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

vim.cmd [[
let g:clipboard = {
\   'name': 'WslClipboard',
\   'copy': {
\      '+': 'clip.exe',
\      '*': 'clip.exe',
\    },
\   'paste': {
\      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
\      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
\   },
\   'cache_enabled': 0,
\ }
]]

require("lazy").setup({
    { import = "plugins" },

    -- telescope
    { 'nvim-telescope/telescope-fzy-native.nvim' },

    -- treesitter
    'nvim-treesitter/playground',

    -- Some themes  colorbuddy so I'm installing it
    { 'tjdevries/colorbuddy.nvim' },
    -- Color Themes
    { 'gruvbox-community/gruvbox' },
    { 'dracula/vim',                name = 'dracula' },
    { 'yonlu/omni.vim' },
    { 'marko-cerovac/material.nvim' },
    { 'bluz71/vim-moonfly-colors' },
    { 'ayu-theme/ayu-vim' },
    { 'sainnhe/sonokai' },
    { 'sainnhe/edge' },
    { 'folke/tokyonight.nvim' },
    { 'tomasiser/vim-code-dark' },
    { 'rafamadriz/neon' },
    { 'mcchrish/zenbones.nvim' },
    { 'EdenEast/nightfox.nvim' },
    { 'rebelot/kanagawa.nvim' }
}, {
    defaults = {
        lazy = false
    }
})

require('mpdr')
