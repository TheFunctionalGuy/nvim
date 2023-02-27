return require('packer').startup(function(use)
    -- Packer
    use 'wbthomason/packer.nvim'

    -- Mason
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    -- Gruvbox
    use {
        'ellisonleao/gruvbox.nvim',
        config = function()
            require('gruvbox').setup()
            vim.o.background = 'dark'
            vim.cmd('colorscheme gruvbox')
        end
    }

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Undotree
    use 'mbbill/undotree'

    -- Harpoon
    use 'theprimeagen/harpoon'

    -- Fugitive
    use 'tpope/vim-fugitive'

    -- LSP Zero
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},                  -- Required
            {'hrsh7th/cmp-nvim-lsp'},              -- Required
            {'hrsh7th/cmp-buffer'},                -- Optional
            {'hrsh7th/cmp-path'},                  -- Optional
            {'saadparwaiz1/cmp_luasnip'},          -- Optional
            {'hrsh7th/cmp-nvim-lua'},              -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},                  -- Required
            {'rafamadriz/friendly-snippets'},      -- Optional
        }
    }

    -- Which Key
    use {
        'folke/which-key.nvim',
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 1500
            require('which-key').setup {
                plugins = {
                    presets = {
                        operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
                        motions = true, -- adds help for motions
                        text_objects = true, -- help for text objects triggered after entering an operator
                        windows = true, -- default bindings on <c-w>
                        nav = true, -- misc bindings to work with windows
                        z = true, -- bindings for folds, spelling and others prefixed with z
                        g = true, -- bindings for prefixed with g
                    },
                }
            }
        end
    }

	-- Lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- smartcolumn
    use 'm4xshen/smartcolumn.nvim'

    -- vim-be-good
    use 'ThePrimeagen/vim-be-good'
end)
