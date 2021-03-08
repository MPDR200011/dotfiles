return require('packer').startup(function()
    use {'wbthomason/packer.nvim'}
    -- Editor tools 
    use {'sheerun/vim-polyglot'}
    use {'tpope/vim-surround' }
    use {'tpope/vim-fugitive'}
    use {'jiangmiao/auto-pairs'}
    use {'preservim/nerdtree'}
    use {'mattn/emmet-vim'}
    use {'airblade/vim-rooter'}
    use {'iamcco/markdown-preview.nvim', run = 'cd app && npm install'}

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

    -- For colors in css files, very helpful
    use {'ap/vim-css-color'}

    -- Color Themes
    use {'gruvbox-community/gruvbox'}
    use {'dracula/vim', as = 'dracula'}
    use {'MPDR200011/material.vim', branch = 'main'}
    use {'ayu-theme/ayu-vim'}
    use {'ajmwagar/vim-deus'}
    use {'glepnir/zephyr-nvim'}
    use {'herrbischoff/cobalt2.vim'}

    -- Airline
    use {'vim-airline/vim-airline'}
    use {'vim-airline/vim-airline-themes'}
end)
