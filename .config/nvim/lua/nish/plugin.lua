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

local plugins = {

    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },

    {
        'Mofiqul/dracula.nvim',
        as = 'dracula',
        config = function()
            vim.cmd('colorscheme dracula')
        end
    },
    {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    },
    { 'nvim-treesitter/nvim-treesitter-context' },

    {
        'VonHeikemen/lsp-zero.nvim',
        dependencies = {
            -- LSP Support
            'neovim/nvim-lspconfig',
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',

            -- Autocompletion
            'hrsh7th/nvim-cmp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',

            -- Snippets
            'L3MON4D3/LuaSnip',
            'rafamadriz/friendly-snippets',
        }
    },

    -- Git Integrations
    'tpope/vim-fugitive',
    'lewis6991/gitsigns.nvim',


    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'kyazdani42/nvim-web-devicons', opt = true }
    },

    'jiangmiao/auto-pairs',
    'norcalli/nvim-colorizer.lua',
    'ryanoasis/vim-devicons',
    'mbbill/undotree',

    'voldikss/vim-floaterm',
    'iamcco/markdown-preview.nvim',

    'tpope/vim-commentary',

}

local opts = {}

require("lazy").setup(plugins, opts)
