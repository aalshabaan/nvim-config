vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
vim.keymap.set('n', '<leader>gl', function()
	vim.cmd("G log --oneline --graph --decorate")
end)
vim.keymap.set('n', '<leader>blame', ':G blame<Enter>zz<C-w>l')
vim.keymap.set('n', '<leader>gd', function() vim.cmd("Gvdiffsplit!") end)
