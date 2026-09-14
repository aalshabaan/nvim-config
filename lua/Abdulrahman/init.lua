require("Abdulrahman.remap")
require("Abdulrahman.lazy")
require("Abdulrahman.altravis")
require("Abdulrahman.autocmd-group")
require("Abdulrahman.filetype-indent")
require("Abdulrahman.helm")

ColorMe()

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

-- Autosave when leaving a buffer/window or losing focus
vim.api.nvim_create_autocmd({"BufLeave", "WinLeave", "FocusLost"}, {
    pattern = {"*"},
    group = "MyGroup",
    callback = function (args)
        local buf = args.buf
        if vim.bo[buf].buftype ~= "" or not vim.bo[buf].modifiable or not vim.bo[buf].modified then
            return
        end
        if vim.api.nvim_buf_get_name(buf) == "" then
            return
        end
        vim.api.nvim_buf_call(buf, function ()
            vim.cmd("silent! write")
        end)
    end
})

