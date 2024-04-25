require('lualine').setup({
	sections = {
        lualine_a = {'mode',},
        lualine_b = {'branch', 'filename', 'diff'},
		lualine_c = {function ()
			return 'And fear a day in which you shall return to God, then every soul will be given the full due of what it has done, and no injustice will be done unto them'
		end}
	}
})
