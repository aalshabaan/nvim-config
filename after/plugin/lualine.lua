require('lualine').setup({
	sections = {
		lualine_a = {'buffers'},
		lualine_c = {function ()
			return 'واتقوا يوماً ترجعون فيه إلى الله ثم توفى كل نفس ما كسبت وهم لا يظلمون'
		end}
	}
})
