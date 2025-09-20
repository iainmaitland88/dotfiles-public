return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	config = function()
		-- import nvim-treesitter plugin
		local treesitter = require("nvim-treesitter.configs")

		-- configure treesitter
		treesitter.setup({
      -- enable syntax highlighting
			highlight = {
				enable = true,
			},

      -- Autoinstall languages that are not installed
      auto_install = true,

			-- enable indentation
			indent = { enable = true },

			-- ensure these language parsers are installed
      ensure_installed = {
        "bash",
        "css",
        "diff",
        "dockerfile",
        "gitignore",
        "html",
        "javascript",
        "json",
        "lua",
        "luadoc",
        "markdown",
        "markdown_inline",
        "python",
        "toml",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml"
			},
		})
	end,
}
