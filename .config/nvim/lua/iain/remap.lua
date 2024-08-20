vim.g.mapleader = " "

-- open netrw
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- splits
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- open vertical split
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- open horizontal split
vim.keymap.set("n", "<leader>se", "<C-w>=") -- equalize splits
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close split

-- keep cursor in middle when jumping up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- move highlighted lines
-- things get weird if they're at the top or bottom of the file
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")


-- keep cursor in the middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever stolen from Primagean
-- don't replace clipboard with thing we're pasting over
vim.keymap.set("x", "<leader>p", "\"_dP")
