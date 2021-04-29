return require('packer').startup(function()
    use {'wbthomason/packer.nvim'}
    -- Editor tools 
    use {'tpope/vim-surround' }
    use {'tpope/vim-fugitive'}
    use {'jiangmiao/auto-pairs'}
    use {'preservim/nerdtree'}
    use {'mattn/emmet-vim'}
    use {'airblade/vim-rooter'}
    use {'iamcco/markdown-preview.nvim', run = 'cd app && npm install'}
    use {'sheerun/vim-polyglot'}
    use {'ThePrimeagen/git-worktree.nvim'}
    use {'akinsho/nvim-toggleterm.lua'}

    -- harpoon
    use {'ThePrimeagen/harpoon'}

    -- Proper indentation in tsx/jsx files
    use {'maxmellon/vim-jsx-pretty'}

    -- treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use {'p00f/nvim-ts-rainbow'}

    -- telescope
    use {'nvim-lua/popup.nvim'}
    use {'nvim-lua/plenary.nvim'}
    use {'nvim-telescope/telescope.nvim'}
    use {'nvim-telescope/telescope-fzy-native.nvim'}

    -- autocomplete
    use {'neovim/nvim-lspconfig'}
    use {'nvim-lua/completion-nvim'}
    use {'norcalli/snippets.nvim'}

    -- For colors in css files, very helpful
    use {'ap/vim-css-color'}

    -- Some themes use colorbuddy so I'm installing it
    use {'tjdevries/colorbuddy.nvim'}
    -- Color Themes
    use {'gruvbox-community/gruvbox'}
    use {'dracula/vim', as = 'dracula'}
    use {'yonlu/omni.vim'}
    use {'marko-cerovac/material.nvim', branch = 'pure-lua'}
    use {'bluz71/vim-moonfly-colors'}
    use {'ayu-theme/ayu-vim'}
    use {'ajmwagar/vim-deus'}
    use {'glepnir/zephyr-nvim'}
    use {'herrbischoff/cobalt2.vim'}
    use {'RishabhRD/nvim-rdark'}
    use {'sainnhe/sonokai'}
    use {'sainnhe/edge'}
    use {'ghifarit53/tokyonight-vim'}

    -- Airline 
    -- TODO: look into alternative, I'm sure there is some new hot plugin for this
    use {'vim-airline/vim-airline'}
    use {'vim-airline/vim-airline-themes'}

    -- Firenvim, nvim in browser
    use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](42) end }
end)
