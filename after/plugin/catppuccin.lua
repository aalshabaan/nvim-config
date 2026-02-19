require("catppuccin").setup {
    highlight_overrides = {
        all = function(colors)
            return {
                LineNr = { fg = colors.red },
                CmpBorder = { fg = colors.blue },
            }
        end
    },
    transparent_background = true,
    show_end_of_buffers = false,
    float = {
        transparent = false,
        solid = false
    },
}
