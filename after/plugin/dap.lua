local dap = require('dap')


vim.keymap.set('n', '<leader>bp', dap.toggle_breakpoint)
vim.keymap.set('n', '<F8>', dap.step_over)
vim.keymap.set('n', '<F9>', dap.continue)
vim.keymap.set('n', '<F7>', dap.step_into)
vim.keymap.set('n', '<F11>', dap.step_out)
vim.keymap.set('n', '<leader>debug', dap.repl.open
)
