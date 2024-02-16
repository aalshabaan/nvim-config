local builtin = require('telescope.builtin')
local telescope = require('telescope')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fs', function ()
    local input = vim.fn.input "Grep > "
    if string.len(input) == 0 then
        return
    end
	builtin.grep_string({ search = input })
end)

telescope.setup({
	file_ignore_patterns = {
		'node%_modules',
		'target',
	}
})
