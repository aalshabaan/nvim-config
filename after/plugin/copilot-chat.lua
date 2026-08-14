local copilot = require('CopilotChat')
local completion = require('CopilotChat.completion')

local mapping = {
    complete = {
        insert = '<C-Space>',
        callback = function()
            completion.complete()
        end
    },
    close = {
        normal = 'q',
        insert = '<Esc>',
        callback = function()
            completion.complete()
        end
    },
}

copilot.setup({
    config = {
        mappings = mapping,
    }
})

vim.keymap.set('n','<leader>cc', copilot.toggle)
