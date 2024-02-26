local lspzero = require('lsp-zero')
local mason_registry = require('mason-registry')

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
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
  vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end)

require('mason').setup()
require('mason-lspconfig').setup({
    handlers = {
		-- jdtls = function (_)
		-- 	local opts = require('lspconfig').jdtls
		-- 	local install_path = mason_registry.get_package("jdtls"):get_install_path()
		-- 	local jvmArg = "--jvm-arg=-javaagent:" .. install_path .. "\\lombok.jar"
		-- 	table.insert(opts.cmd, jvmArg)
		-- 	print("Setting up jdtls")
		-- 	return opts
		-- end,
		lspzero.default_setup,
    },
    ensure_installed = {'pyright', 'lua_ls', 'jdtls', 'dockerls', 'docker_compose_language_service', 'omnisharp', 'eslint'}
})
lspzero.setup_servers({'pyright', 'lua_ls', 'jdtls', 'dockerls', 'docker_compose_language_service', 'omnisharp', 'eslint'})

lspzero.new_client({
  name = 'docker_compose_language_service',
  cmd = {"C:\\Users\\TAASHAB2\\AppData\\Local\\nvim-data\\mason\\bin\\docker-compose-langserver.cmd"},
  filetypes = {'compose'},
  root_dir = function()
	  return vim.fn.getcwd()
  end,
})

