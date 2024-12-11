vim.g.mapleader = " "
vim.keymap.set("n", "<leader>v", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("n", "<leader>P", "\"+P")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>p", "\"+p")
vim.keymap.set("v", "<leader>P", "\"+P")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "G", "Gzz")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set('n', '<leader>h', vim.cmd.bprevious)
vim.keymap.set('n', '<leader>l', vim.cmd.bnext)
vim.keymap.set('n', '<leader>c', vim.cmd.bdelete)

-- Autoclose brackets, quotes, and other things
vim.keymap.set('i', '{<Enter>', '{<Enter>}<Esc>O')
vim.keymap.set('i', '[<Enter>', '[<Enter>]<Esc>O')
vim.keymap.set('i', '(<Enter>', '(<Enter>)<Esc>O')
vim.keymap.set('i', '{', '{}<Left>')
vim.keymap.set('i', '[', '[]<Left>')
vim.keymap.set('i', '(', '()<Left>')
vim.keymap.set('i', '{<BS>',  '{<BS>')
vim.keymap.set('i', '(<BS>',  '(<BS>')
vim.keymap.set('i', "'", "''<Left>")
vim.keymap.set('i', '"', '""<Left>')
--
-- vim.keymap.set('i', '<Tab>', '    ')
