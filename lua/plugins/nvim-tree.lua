return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			diagnostics = {
				enable = true,
				icons = {
					hint = "H",
					info = "i",
					warning = "W",
					error = "E",
				},
				show_on_dirs = true,
			},
			view = {
				signcolumn = 'yes'
			}
		})
	end,
}
