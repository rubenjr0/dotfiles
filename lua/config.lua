vim.opt.title = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4
vim.opt.guicursor = 'i:ver25'
vim.opt.termguicolors = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true

vim.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8 -- or 16
vim.opt.signcolumn = 'no'
vim.opt.isfname:append('@-@')

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.opt.hidden = true
vim.opt.ignorecase = true
vim.opt.spelllang = {"en", "es"}
-- vim.opt.so = 999

vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.formatoptions:append("l")
vim.opt.linebreak = true

