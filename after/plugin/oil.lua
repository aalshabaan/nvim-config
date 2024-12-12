require('oil').setup({
    columns = {
        'icon',
        'permissions'
    },
    view_options = {
        show_hidden = true
    },
    keymaps = {
        ['cd'] = {'actions.cd', mode='n',}
    }
})

vim.keymap.set("n", "<leader>e", function ()
    if vim.bo.filetype == 'oil' then
        return
    end
    vim.cmd('Oil')
end)
