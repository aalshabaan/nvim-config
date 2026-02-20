require("Abdulrahman.remap")
require("Abdulrahman.lazy")
require("Abdulrahman.altravis")
require("Abdulrahman.autocmd-group")
require("Abdulrahman.filetype-indent")
require("Abdulrahman.helm")

setColourScheme()

vim.wo.scrolloff = 15
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrap = false

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.swapfile = false
vim.opt.backup = false

local homedir = os.getenv("HOME") or os.getenv("UserProfile") -- OS-agnostic homedir
vim.opt.undodir = homedir .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.bomb = false

vim.opt.ff = 'unix'
vim.o.winborder = 'rounded'

vim.diagnostic.config({
    virtual_text = true,
})

