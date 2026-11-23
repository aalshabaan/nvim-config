require('nvim-treesitter').install({
    'java', 'javascript', 'typescript', 'c_sharp', 'html', 'css',
    'python', 'yaml', 'json', 'markdown', 'markdown_inline', 'helm',
    'tsx', 'bash', 'sql', 'gitcommit', 'diff', 'scss'
})

vim.api.nvim_create_autocmd('FileType', {
    group = vim.api.nvim_create_augroup('TreesitterStart', { clear = true }),
    callback = function(args)
        if not pcall(vim.treesitter.start, args.buf) then
            return
        end
        vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
})
