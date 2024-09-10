return {
  'nvim-telescope/telescope.nvim',
  -- tag = '0.1.8',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    local telescope = require('telescope')
    local builtin = require('telescope.builtin')

    telescope.setup({
      defaults = {
        path_display = {"smart"},
      }
    })

    telescope.load_extension('fzf')

    vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) -- searches all files in cwd
    vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {}) -- searches recent files
    vim.keymap.set('n', '<leader>fs', builtin.live_grep, {}) -- searches content of all files in cwd
    vim.keymap.set('n', '<leader>fg', builtin.git_files, {}) -- like find_files except ignores files in .gitignore
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
  end
}
