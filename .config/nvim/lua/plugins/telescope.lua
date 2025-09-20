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

		vim.keymap.set("n", "<leader>ff", builtin.find_files, {desc = "[F]ind [F]iles"})
		vim.keymap.set("n", "<leader>fg", builtin.git_files, {desc = "[F]ind [G]it Files"})
		vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {desc = "[F]ind [R]ecent Files"})
		vim.keymap.set("n", "<leader>fb", builtin.buffers, {desc = "[F]ind [B]uffers"})
		vim.keymap.set("n", "<leader>fs", builtin.live_grep, {desc = "[F]ind [S]tring"})
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, {desc = "[F]ind [H]elp"})

     -- It's also possible to pass additional configuration options.
      --  See `:help telescope.builtin.live_grep()` for information about particular keys
      vim.keymap.set('n', '<leader>f.', function()
        builtin.live_grep {
          grep_open_files = true,
          prompt_title = 'Live Grep in Open Files',
        }
      end, { desc = '[F]ind [.] in Open Files' })

	end,
}
