return require('packer').startup(function()
    use {'wbthomason/packer.nvim'}

    -- Editor tools 
    -- use {'tpope/vim-surround' }
    use {
        "blackCauldron7/surround.nvim"
    }
    -- use {'tpope/vim-fugitive'} -- remove?

    -- Git
    use {
        'TimUntersberger/neogit',
        requires = {
          'sindrets/diffview.nvim'
        }
    }

    use {'jiangmiao/auto-pairs'}
    -- use {'preservim/nerdtree'} -- remove?
    use {'kyazdani42/nvim-tree.lua'}
    use {'mattn/emmet-vim'}
    use {'airblade/vim-rooter'}
    use {'iamcco/markdown-preview.nvim', run = 'cd app && npm install'}
    use {'sheerun/vim-polyglot'}
    use {'ThePrimeagen/git-worktree.nvim'}
    use {'akinsho/nvim-toggleterm.lua'}

    use {
        'lewis6991/spellsitter.nvim',
        config = function()
            require('spellsitter').setup({
                hl = 'SpellBad',
                captures = {},
            })
        end
    }

    -- vimwiki
    use {'vimwiki/vimwiki'}

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

    -- lsp-stuff
    use {'neovim/nvim-lspconfig'}
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/nvim-cmp'}
    -- use {'SirVer/ultisnips'}
    -- use {'quangnguyen30192/cmp-nvim-ultisnips'}
    use {'folke/lsp-colors.nvim'}


    -- For colors in css files, very helpful
    use {'ap/vim-css-color'}

    -- Some themes use colorbuddy so I'm installing it
    use {'tjdevries/colorbuddy.nvim'}
    -- Color Themes
    use {'gruvbox-community/gruvbox'}
    use {'dracula/vim', as = 'dracula'}
    use {'yonlu/omni.vim'}
    use {'marko-cerovac/material.nvim'}
    use {'bluz71/vim-moonfly-colors'}
    use {'ayu-theme/ayu-vim'}
    use {'sainnhe/sonokai'}
    use {'sainnhe/edge'}
    use {'folke/tokyonight.nvim'}
    use {'tomasiser/vim-code-dark'}
    use {'rafamadriz/neon'}
    use {'mcchrish/zenbones.nvim'}
    use {'EdenEast/nightfox.nvim'}


    -- Airline 
    -- TODO: look into alternative, I'm sure there is some new hot plugin for this
    -- use {'vim-airline/vim-airline'}
    -- use {'vim-airline/vim-airline-themes'}

    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- Firenvim, nvim in browser
    use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](42) end }
end)
