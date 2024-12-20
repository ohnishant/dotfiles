return {
	"williamboman/mason.nvim",
	event = "VeryLazy",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"ts_ls",
				"tailwindcss",
				"lua_ls",
				"clangd",
				"rust_analyzer",
				"html",
				"cssls",
				"emmet_ls",
				-- "eslint",
			},
			automatic_installation = true,
		})
	end,
}
