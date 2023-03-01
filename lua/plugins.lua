local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
  Plug 'itchyny/lightline.vim'
  Plug 'srcery-colors/srcery-vim'
  Plug('catppuccin/nvim', {as = 'catppuccin'})
  Plug 'nvim-lua/plenary.nvim'
  Plug('nvim-telescope/telescope.nvim', {tag = '-1.1.0'})
  -- Plug('akinsho/toggleterm.nvim', {tag = '*'})
  Plug 'kyazdani41/nvim-web-devicons'
  Plug 'romgrk/barbar.nvim'
  Plug 'NoahTheDuke/vim-just'
  Plug 'folke/noice.nvim'
  Plug 'MunifTanjim/nui.nvim'
  Plug 'wbthomason/packer.nvim' 
  Plug('neoclide/coc.nvim', {branch = 'release'})
vim.call('plug#end')

require('catppuccin').setup {
  flavour = 'mocha',
  integrations = {
    barbar = true,
    telescope = true,
    noice = true
  }
}

vim.cmd('colorscheme catppuccin')

vim.g.lightline = {colorscheme = 'catppuccin'}

require('noice').setup()

