local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
	'ruff_lsp'
})

lsp.skip_server_setup({'rust_analyzer'})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings {
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<cr>'] = cmp.mapping.confirm({ select = true }),
	['<c-cr>'] = cmp.mapping.complete()
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

local rust_tools = require('rust-tools')

rust_tools.setup({
    server = {
        on_attach = function()
            vim.keymap.set('n', '<leader>ca', rust_tools.hover_actions.hover_actions, {buffer = bufnr})
        end
    }
})
