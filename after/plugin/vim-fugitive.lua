vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
vim.keymap.set('n', '<leader>gl', function()
	vim.cmd("G log --oneline --graph --decorate")
end)
