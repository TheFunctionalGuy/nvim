local lsp = require('lsp-zero')
local cmp = require('cmp')

lsp.preset('recommended')
lsp.ensure_installed({
	'rust_analyzer',
})

lsp.set_preferences({
	sign_icons = {
		error = 'E',
		warn  = 'W',
		hint  = 'H',
		info  = 'I',
	}
})

local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings,
})

-- TODO: Insert ThePrimeagen remaps here

lsp.setup()
