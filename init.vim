set title
set number
set relativenumber
" set mouse=a

set nowrap

" set cursorline
set colorcolumn=80

set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround

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
call plug#end()

colorscheme srcery

nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <A-f> :Rg<CR>

let g:ale_linters = { 'rust': ['analyzer'] }
let g:ale_completion_enabled = 1

map <F2> :NERDTreeToggle<CR>
