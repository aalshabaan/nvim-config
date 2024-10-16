local lspzero = require('lsp-zero')

lspzero.preset('recommended')
lspzero.setup()

-- lspzero.on_attach(function(_, bufnr)
--   -- see :help lsp-zero-keybindings
--   -- to learn the available actions
--   lspzero.default_keymaps({buffer = bufnr})
-- end)

lspzero.on_attach(function(_, bufnr)
  local opts = {buffer = bufnr, remap = false}
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
  vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "<leader>vr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>rn", ":IncRename ", opts)
  vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end)

require('mason').setup()
require('mason-lspconfig').setup({
    handlers = {
		lspzero.default_setup,
    },
    ensure_installed = {'basedpyright', 'lua_ls', 'jdtls', 'dockerls', 'docker_compose_language_service', 'omnisharp', 'eslint'}
})
lspzero.setup_servers({'basedpyright', 'lua_ls', 'jdtls', 'dockerls', 'docker_compose_language_service', 'omnisharp', 'eslint'})

lspzero.new_client({
  name = 'docker_compose_language_service',
  cmd = {"C:\\Users\\TAASHAB2\\AppData\\Local\\nvim-data\\mason\\bin\\docker-compose-langserver.cmd"},
  filetypes = {'compose'},
  root_dir = function()
	  return vim.fn.getcwd()
  end,
})

