return require('packer').startup(function()
    use({'wbthomason/packer.nvim'})

    -- telescope
    use({
        'nvim-telescope/telescope.nvim', tag='0.1.2', 
        requires={{'nvim-lua/plenary.nvim'}}
    })
    use({'nvim-telescope/telescope-fzy-native.nvim'})

    -- treesitter
    use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
    use('nvim-treesitter/playground')

    -- harpoon
    use({'ThePrimeagen/harpoon'})

    -- undotree
    use({'mbbill/undotree'})

    -- lsp
    use({
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {'williamboman/mason.nvim'},           -- Optional
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
      }
    })

    -- Git
    use {
        'TimUntersberger/neogit',
        requires = {
          'sindrets/diffview.nvim'
        }
    }

    use {'jiangmiao/auto-pairs'}
    use {'kyazdani42/nvim-tree.lua'}

    use {'airblade/vim-rooter'}
    use {'akinsho/toggleterm.nvim'}




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
    use {'rebelot/kanagawa.nvim'}

    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- Firenvim, nvim in browser
    use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](42) end }
end)
