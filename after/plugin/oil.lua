require('oil').setup({
    columns = {
        'icon',
        'permissions'
    },
    view_options = {
        show_hidden = true
    }
})
vim.keymap.set("n", "<leader>e", function ()
    if vim.bo.filetype == 'oil' then
        return
    end
    vim.cmd('Oil')
end)
