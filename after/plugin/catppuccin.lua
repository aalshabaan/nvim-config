require("catppuccin").setup {
	highlight_overrides = {
		all = function (colors) 
			return {
				LineNr = {fg = "#e0351f"}
			}
		end
	}
}

