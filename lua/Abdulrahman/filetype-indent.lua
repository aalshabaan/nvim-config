vim.api.nvim_create_autocmd({"BufEnter"}, {
    pattern = {"*.html"},
    group = "MyGroup",
    callback = function (args)
        vim.bo[args.buf].shiftwidth=2
        vim.bo[args.buf].tabstop=2
    end
})
