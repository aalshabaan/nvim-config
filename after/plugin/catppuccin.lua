require("catppuccin").setup {
    auto_integrations =true,
    highlight_overrides = {
        all = function(colors)
            return {
                LineNr = { fg = "#e0351f" },
            }
        end
    },
    transparent_background = true,
    show_end_of_buffers = false,
    float = {
        transparent = true,
        solid = false
    }
}
