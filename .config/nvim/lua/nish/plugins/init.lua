return {
	{ "nvim-lua/plenary.nvim", dev = false },
	{ "stevearc/dressing.nvim", event = "VeryLazy" }, -- Pretty UI Input and Selection

	"mbbill/undotree",
	"nvim-tree/nvim-web-devicons",
	"tpope/vim-sleuth",
	"tpope/vim-surround", -- Use bind: `cs(original)(new)` to replace the surrounding symbols | cst(new) for tag
	"tpope/vim-fugitive",
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
		config = function()
			local ibl = require("ibl")
			ibl.setup({
				enabled = false,
				scope = { enabled = true },
			})
		end,
	},
	{
		"tpope/vim-commentary",
	},
}
