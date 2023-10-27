local cmp = require('cmp')

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<CR>'] = cmp.mapping.confirm({ select = true }),
		['<C-u>'] = cmp.mapping.scroll_docs(-8),
		['<C-d>'] = cmp.mapping.scroll_docs(8),
		['<C-k>'] = cmp.mapping.scroll_docs(-1),
		['<C-j>'] = cmp.mapping.scroll_docs(1),
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
	}),
})
