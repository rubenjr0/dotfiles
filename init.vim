set title
set number
set relativenumber
" set mouse=a

set nowrap

" set cursorline
set colorcolumn=80

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

call plug#begin('~/.vim/plugged')
	Plug 'junegunn/vim-easy-align'
	Plug 'srcery-colors/srcery-vim'
	Plug 'junegunn/fzf.vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'NoahTheDuke/vim-just'
	Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let g:catppuccin_flavour = "mocha" " latte, frappe, macchiato, mocha
lua require("catppuccin").setup()
colorscheme catppuccin
" colorscheme srcery

inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <A-f> :Rg<CR>

let g:ale_linters = { 'rust': ['analyzer'] }
let g:ale_completion_enabled = 1

map <F2> :NERDTreeToggle<CR>
