set nocompatible

set number
set relativenumber


set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent


set exrc
set nohlsearch


set hidden
set noerrorbells

set nowrap

set undodir=~/.vim/undodir
set undofile

set incsearch

set scrolloff=8

set ignorecase
set smartcase
set incsearch

set cmdheight=2
set signcolumn=yes
set cursorline

set termguicolors


call plug#begin('~/.vim/plugged')

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'gruvbox-community/gruvbox'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tomasr/molokai'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'norcalli/nvim-colorizer.lua'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

call plug#end()


colorscheme gruvbox
highlight Normal guibg=none

" required to initialize colorizer
lua require'colorizer'.setup()

"let g:molokai_original = 1

" set the leader key to space for remaps
let mapleader=" "

" set <Leader>+ps to search if telescope is installed 
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep for >  ")})<CR>


"NERDTree remaps  <C-r> stands for Ctrl+r
nnoremap <leader>n <Esc>:NERDTreeFocus<CR>
nnoremap <C-n> <Esc>:NERDTreeToggle<CR>
nnoremap <C-f> <Esc>:NERDTreeFind<CR>

inoremap <C-n> <Esc>:NERDTreeToggle<CR>
inoremap <C-f> <Esc>:NERDTreeFind<CR>


" Center cursor after jumping half page up or down using Ctrl+u/d
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz


" Common file shortcuts
nnoremap <C-s> :w<CR>
nnoremap <C-q> :bd<CR>

inoremap <C-s> <Esc>:w<CR>
inoremap <C-q> :bd<CR>


" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
