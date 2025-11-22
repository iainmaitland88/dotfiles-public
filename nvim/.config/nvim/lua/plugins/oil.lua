return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	-- Optional dependencies
	-- dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,
	config = function()
		require("oil").setup({
			columns = {
				"icon",
				"permissions",
				"size",
			},
			keymaps = {
				["<C-h>"] = false,
				["<C-l>"] = false,
				["<C-r>"] = "actions.refresh",
			},
			view_options = {
				show_hidden = true,
			},
		})
		-- Open Oil in parent directory
		vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>", { desc = "[O]il" })
	end,
}
