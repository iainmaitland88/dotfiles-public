return {
	"catppuccin/nvim",
	lazy = false,
	priority = 900,
	config = function()
		vim.cmd.colorscheme("catppuccin-mocha")
	end,
}
