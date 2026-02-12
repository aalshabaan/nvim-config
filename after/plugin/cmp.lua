local cmp = require('cmp')
local luasnip = require('luasnip')

cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    },
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end
    },
	preselect = 'item',
	completion = {
		completeopt = 'menu,menuone,noinsert'
	},
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
	mapping = cmp.mapping.preset.insert({
		-- `Enter` key to confirm completion
		['<tab>'] = cmp.mapping.confirm({select = true}),
		['<CR>'] = cmp.mapping.confirm({select = false}),

		-- Ctrl+Space to trigger completion menu
		['<C-Space>'] = cmp.mapping.complete(),

		-- Navigate between snippet placeholder
		-- ['<C-f>'] = cmp.mapping(function(fallback)
            -- if luasnip.locally_jumpable(1) then
                -- luasnip.jump(1)
            -- else
                -- fallback()
            -- end

        -- end, {'i', 's'}),
		-- ['<C-b>'] = cmp.mapping(function(fallback)
            -- if luasnip.locally_jumpable(-1) then
                -- luasnip.jump(-1)
            -- else
                -- fallback()
            -- end

        -- end, {'i', 's'}),

		-- Scroll up and down in the completion documentation
		['<C-u>'] = cmp.mapping.scroll_docs(-4),
		['<C-d>'] = cmp.mapping.scroll_docs(4),
	})
})
