local telescope = require('telescope')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function ()
	builtin.grep_string({ search = vim.fn.input "Grep > "})
end)
vim.keymap.set('n', '<leader>fb', builtin.buffers)


telescope.setup({
	file_ignore_patterns = {
		'node%_modules',
		'target',
		'site-packages'
	}
})
