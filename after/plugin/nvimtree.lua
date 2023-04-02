local api = require("nvim-tree.api")

vim.keymap.set('n', '<leader>a', function() api.tree.toggle() end)
vim.keymap.set('n', 'n', function() api.fs.create() end)
