local api = require("nvim-tree.api")
vim.keymap.set('n', '<A-a>', function() api.tree.focus() end)
vim.keymap.set('n', '<leader>n', function() api.fs.create() end)
vim.keymap.set('n', '<leader>r', function() api.fs.remove() end)

require("nvim-tree").setup({
    view = {
        -- width = 10,
        side = 'right'
    }
})

