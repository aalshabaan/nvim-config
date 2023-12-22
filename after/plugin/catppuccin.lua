require("catppuccin").setup {
	highlight_overrides = {
		all = function (_)
			return {
				LineNr = {fg = "#e0351f"}
			}
		end
	},
	transparent_background = true,
	show_end_of_buffers = false
}

