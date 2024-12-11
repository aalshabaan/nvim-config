require("catppuccin").setup {
    highlight_overrides = {
        all = function(colors)
            return {
                LineNr = { fg = "#e0351f" },
                CmpBorder = { fg = colors.grey },
            }
        end
    },
    transparent_background = true,
    show_end_of_buffers = false
}

