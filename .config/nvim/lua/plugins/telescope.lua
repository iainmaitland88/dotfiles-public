return {
	"nvim-telescope/telescope.nvim",
	-- tag = '0.1.8',
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"BurntSushi/ripgrep",
	},
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
			},
		})

		telescope.load_extension("fzf")

		vim.keymap.set("n", "<leader>ff", builtin.find_files, {}) -- searches files in cwd
		vim.keymap.set("n", "<leader>fg", builtin.git_files, {}) -- searches files in Git repo (ignores files in .gitignore)
		vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {}) -- searches recent files
		vim.keymap.set("n", "<leader>fb", builtin.buffers, {}) -- searches files in buffer
		vim.keymap.set("n", "<leader>fs", builtin.live_grep, {}) -- searches content of all files in cwd
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, {}) -- searches in help tags
	end,
}
