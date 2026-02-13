local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local bufnr = args.buf
        local opts = { buffer = bufnr, remap = false }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
        vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
        vim.keymap.set("n", "[d", function()
            vim.diagnostic.jump({ count = 1 })
        end, opts)
        vim.keymap.set("n", "]d", function()
            vim.diagnostic.jump({ count = -1 })
        end, opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "<leader>vr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "<leader>rn", ":IncRename ", opts)
        vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
        vim.keymap.set("n", "<leader>dd", function()
            vim.diagnostic.setqflist(vim.diagnostic.toqflist(vim.diagnostic.get()))
        end, opts)
        vim.lsp.inlay_hint.enable(true,{ bufnr = bufnr })
    end
})


vim.lsp.config('*', {
    capabilities = capabilities
})

require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = {'basedpyright', 'lua_ls', 'jdtls', 'dockerls', 'docker_compose_language_service', 'omnisharp', 'eslint'}
})
