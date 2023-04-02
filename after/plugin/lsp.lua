local lsp = require('lsp-zero').preset({})

lsp.preset('recommended')

lsp.ensure_installed({
	'rust_analyzer',
	'ruff_lsp'
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings {
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<CR>'] = cmp.mapping.confirm({ select = true }),
	['<C-CR>'] = cmp.mapping.complete()
}

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
  vim.keymap.set('n', 'df', function() vim.lsp.buf.definition() end)
  vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end)
end)


lsp.setup()
