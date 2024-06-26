require("catppuccin").setup {
    highlight_overrides = {
        all = function(colors)
            return {
                LineNr = { fg = "#e0351f" },
                CmpBorder = { fg = colors.grey },
                StatusLine = { fg = "#333333", bg = colors.green },
            }
        end
    },
    transparent_background = true,
    show_end_of_buffers = false
}
