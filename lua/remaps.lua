vim.g.mapleader = ' '
vim.keymap.set('n', '<leader><leader>', vim.cmd.so)
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('v', '<C-Down>', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', '<C-Up>', ":m '>-2<CR>gv=gv")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
