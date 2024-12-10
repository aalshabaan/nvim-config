require("Abdulrahman.remap")
require("Abdulrahman.lazy")
require("Abdulrahman.altravis")
require("Abdulrahman.autocmd-group")
require("Abdulrahman.filetype-indent")

SetColourscheme()

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
vim.opt.undodir = os.getenv("UserProfile") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.ff = 'unix'
