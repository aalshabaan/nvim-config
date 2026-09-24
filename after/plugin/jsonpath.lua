local json = require('jsonpath')

vim.api.nvim_create_autocmd('FileType', {
    group = vim.api.nvim_create_augroup('JsonPathKeymap', { clear = true }),
    pattern = 'json',
    callback = function(args)
        vim.keymap.set('n', 'yp', function()
            vim.fn.setreg('0', json.get())
            vim.fn.setreg('"', json.get())
        end, { buffer = args.buf, desc = 'Yank JSON Path' })
    end,
})
