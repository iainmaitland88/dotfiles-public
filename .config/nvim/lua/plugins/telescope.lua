return {
	"nvim-telescope/telescope.nvim",
	-- tag = '0.1.8',
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    { 'nvim-telescope/telescope-ui-select.nvim' },
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
		"BurntSushi/ripgrep",
	},
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")

		telescope.setup {
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown(),
        },
      },
			defaults = {
				path_display = { "smart" },
			},
		}

		telescope.load_extension("fzf")
      pcall(require('telescope').load_extension, 'ui-select')

		vim.keymap.set("n", "<leader>ff", builtin.find_files, {desc = "[F]ind [F]iles"})
		vim.keymap.set("n", "<leader>fg", builtin.git_files, {desc = "[F]ind [G]it Files"})
		vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {desc = "[F]ind [R]ecent Files"})
		vim.keymap.set("n", "<leader>fb", builtin.buffers, {desc = "[F]ind [B]uffers"})
		vim.keymap.set("n", "<leader>fs", builtin.live_grep, {desc = "[F]ind [S]tring"})
    vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = '[F]find current [W]ord' })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, {desc = "[F]ind [H]elp"})
    vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = '[F]ind [K]eymaps' })
    vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = '[F]ind [D]iagnostics' })

    vim.keymap.set('n', '<leader>f.', function()
      builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
      })
    end, { desc = '[/] Fuzzily search in current buffer' })

    vim.keymap.set('n', '<leader>f/', function()
      builtin.live_grep {
        grep_open_files = true,
        prompt_title = 'Live Grep in Open Files',
      }
    end, { desc = '[F]ind in [/] Open Files' })

    vim.keymap.set('n', '<leader>fn', function()
      builtin.find_files { cwd = vim.fn.stdpath 'config' }
    end, { desc = '[F]ind [N]eovim Files' })
	end,
}
