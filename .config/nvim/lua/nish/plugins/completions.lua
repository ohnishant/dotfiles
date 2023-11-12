return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",

    dependencies = {
        -- Completion
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "saadparwaiz1/cmp_luasnip",
        -- Snippets
        "L3MON4D3/LuaSnip",
        "rafamadriz/friendly-snippets",
    },

    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")

        -- load vscode style snippets (for friendly snippets)
        require("luasnip.loaders.from_vscode").lazy_load()

        cmp.setup({
            completion = {
                completeopt = "menu,menuone,preview,noselect",
            },
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },

            mapping = cmp.mapping.preset.insert({
                ["<C-k>"] = cmp.mapping.select_prev_item(),
                ["<C-j>"] = cmp.mapping.select_next_item(),
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.abort(), -- Close the thingy
                ["<CR>"] = cmp.mapping.confirm({ select = false }),
            }),

            sources = cmp.config.sources({
                -- order = priority here
                { name = "nvim_lsp" }, -- Snippets
                { name = "luasnip" }, -- Snippets
                { name = "buffer" }, -- Contents of the file
                { name = "path" }, -- Filesystem paths
            }),
        })
    end,
}

