return {
	"arkav/lualine-lsp-progress",
	requires = { "hoob3rt/lualine.nvim" },
	config = function()
		require("lualine").setup({
			sections = {
				lualine_c = {
					"lsp_progress",
				},
			},
		})
	end,
}
