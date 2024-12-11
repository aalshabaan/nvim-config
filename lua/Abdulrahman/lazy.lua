local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.4",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "BurntSushi/ripgrep" }
    },
    { "catppuccin/nvim",                  name = "catppuccin",                             priority = 1000 },
    { "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate" },
    { "ThePrimeagen/harpoon" },
    { "tpope/vim-surround" },
    { "tpope/vim-fugitive" },
    { "mbbill/undotree" },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    { 'tpope/vim-commentary' },
    { 'mfussenegger/nvim-jdtls',          enabled = false },
    { 'nvim-lualine/lualine.nvim',        dependencies = { 'nvim-tree/nvim-web-devicons' } },
    { 'smjonas/inc-rename.nvim' },
    { 'towolf/vim-helm' },
    { 'nvim-tree/nvim-tree.lua',          enabled = false },
    { 'stevearc/oil.nvim',                dependencies = { "nvim-tree/nvim-web-devicons" } },
}, {})
