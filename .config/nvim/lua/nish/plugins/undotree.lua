return {
	"mbbill/undotree",
	cmd = "UndotreeToggle",
	config = function()
		vim.kemap.set("n", "<leader>u", ":UndotreeToggle<CR>")
	end,
}
