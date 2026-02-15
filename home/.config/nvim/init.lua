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

vim.g.maplocalleader = " "
vim.g.mapleader = " "

if vim.fn.has('macunix') then
    vim.opt.clipboard = ""
else
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
end

vim.o.autoread = true
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = { "*" },
})

require("lazy").setup({
    { import = "plugins" },
    { import = "plugins.themes" },

    -- telescope
    { 'nvim-telescope/telescope-fzy-native.nvim' },

    -- treesitter
    'nvim-treesitter/playground',

    -- Some themes require colorbuddy so I'm installing it
    { 'tjdevries/colorbuddy.nvim' },
    -- Color Themes
    { 'xiantang/darcula-dark.nvim' },
    { 'dracula/vim',                name = 'dracula' },
    { 'marko-cerovac/material.nvim' },
    { 'bluz71/vim-moonfly-colors' },
    { 'ayu-theme/ayu-vim' },
    { 'tomasiser/vim-code-dark' },
    { 'rafamadriz/neon' },
    {
        "navarasu/onedark.nvim",
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require('onedark').setup {
                style = 'darker'
            }
        end
    },
}, {
    defaults = {
        lazy = false
    }
})

require('mpdr')
