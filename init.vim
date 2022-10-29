set title
set number
set relativenumber
set termguicolors
" set mouse=a
set nowrap
" set cursorline
" set colorcolumn=80
set expandtab
set tabstop=2
set shiftwidth=2
" set softtabstop=2
set shiftround
set autoindent
set hidden
set ignorecase
set smartcase
set spelllang=en,es
:set so=999

call plug#begin('~/.vim/plugged')
  " Plug 'feline-nvim/feline.nvim'
  Plug 'itchyny/lightline.vim'
	Plug 'srcery-colors/srcery-vim'
	Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
  " Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
  Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'romgrk/barbar.nvim'
  Plug 'folke/noice.nvim'
  Plug 'MunifTanjim/nui.nvim'
  Plug 'wbthomason/packer.nvim' 
  Plug 'neovim/nvim-lspconfig'
call plug#end()

lua require'lspconfig'.rust_analyzer.setup({})

let g:catppuccin_flavour = "mocha" " latte, frappe, macchiato, mocha
let g:lightline = {'colorscheme': 'catppuccin'}
lua require("noice").setup()
lua require("catppuccin").setup({barbar = true, coc_nvim = true, telescope = true, noice = true})
lua require("toggleterm").setup()
colorscheme catppuccin

" colorscheme srcery

" inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use K to show documentation in preview window.
" nnoremap <silent> <A-d> :call ShowDocumentation()<CR>

noremap <F1> :Telescope find_files<cr>
noremap <F2> :Telescope buffers<cr>
nnoremap <silent> <A-<> :ToggleTerm<CR>

" Goto buffer in position...
nnoremap <silent>    <A-left> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-right> <Cmd>BufferNext<CR>
nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>
nnoremap <silent>    <A-q> <Cmd>BufferClose<CR>
