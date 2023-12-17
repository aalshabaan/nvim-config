function SetColourscheme(color)
	vim.cmd.colorscheme (color or "catppuccin-mocha")
	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
	vim.api.nvim_set_hl(0, "InactiveWindow", {bg = ""})
	vim.api.nvim_set_hl(0, "Float", {bg = "none"})
end

