return {
	"nvim-treesitter/nvim-treesitter",
	lazy = true,
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "typescript", "javascript", "python", "c", "lua", "rust" },
			sync_install = false,
			auto_install = false,
			highlight = {
				enable = true,
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-Space>",
					node_incremental = "<C-Space>",
					scope_incremental = "<Tab>",
					node_decremental = "<S-Tab>",
				},
			},
			-- treesitter based indentation
			indent = {
				enable = true,
			},
		})
	end,
}
