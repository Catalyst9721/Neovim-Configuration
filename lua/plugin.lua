-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'


    --####################################################
    -- Other
    --####################################################

    --use('theprimeagen/harpoon')
    use { 'tpope/vim-fugitive' }
    use { 'lukas-reineke/indent-blankline.nvim' }
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
<<<<<<< HEAD
<<<<<<< HEAD
=======
    use { 'glepnir/dashboard-nvim', event = 'VimEnter', requires = {'nvim-tree/nvim-web-devicons'} }
    use {'nyoom-engineering/oxocarbon.nvim'}
>>>>>>> e83f562 (Re-orginised the file structure a bit, changed the theme, and added the 'Neorg' plugin, and maybe another one that I'm forgetting)


    --####################################################
    -- Gitsigns
    --####################################################
<<<<<<< HEAD
    --
    use {
        'lewis6991/gitsigns.nvim',
=======

    use {
        'lewis6991/gitsigns.nvim',

>>>>>>> e83f562 (Re-orginised the file structure a bit, changed the theme, and added the 'Neorg' plugin, and maybe another one that I'm forgetting)
        config = function()
            require('gitsigns').setup()
        end
    }
<<<<<<< HEAD
=======
>>>>>>> e667492af0355db24605a343634fc98cff8233f7
=======


    --####################################################
    -- Treesitter
    --####################################################

    use {
        'nvim-treesitter/nvim-treesitter',

        config = function()
            require 'nvim-treesitter.configs'.setup {
                ensure_installed = { 'norg' },

                highlight = {
                    enable = true,
                }
            }
        end
    }


    --####################################################
    -- Neorg
    --####################################################

    use {
        "nvim-neorg/neorg",
        run = ":Neorg sync-parsers",
        config = function()
            require('neorg').setup {
                load = {
                    ["core.defaults"] = {}, -- Loads default behaviour
                    ["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
                    ["core.norg.dirman"] = { -- Manages Neorg workspaces
                        config = {
                            workspaces = {
                                notes = "~/notes",
                            },
                        },
                    },
                },
            }
        end,
        requires = "nvim-lua/plenary.nvim",
    }
>>>>>>> e83f562 (Re-orginised the file structure a bit, changed the theme, and added the 'Neorg' plugin, and maybe another one that I'm forgetting)

    --####################################################
    -- Trouble.nvim
    --####################################################

    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }


    --####################################################
    -- Nvim Autopairs
    --####################################################

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }


    --####################################################
    -- Telescope
    --####################################################

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }


<<<<<<< HEAD
    --####################################################
    -- Rose Pine
    --####################################################

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            require("rose-pine").setup({
                dark_variant = 'moon'
            })
            vim.cmd('colorscheme rose-pine')
        end
    })


=======
>>>>>>> e83f562 (Re-orginised the file structure a bit, changed the theme, and added the 'Neorg' plugin, and maybe another one that I'm forgetting)
    --####################################################
    -- LuaLine
    --####################################################

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function()
            require('lualine').setup()
        end
    }


    --####################################################
    -- NvimTree
    --####################################################

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly', -- optional, updated every week. (see issue #1193)

        config = function()
            require("nvim-tree").setup()
        end
    }



    --####################################################
    -- LSP Zero
    --####################################################

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }

end)
