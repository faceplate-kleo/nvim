set nocompatible
set tabstop=4
set title
set mouse=v
set hlsearch
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set number
set relativenumber
set wildmode=longest,list
set cc=80
filetype plugin indent on
syntax on
set mouse=a
set clipboard=unnamedplus
filetype plugin on
set ttyfast

call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim'
Plug 'edeneast/nightfox.nvim'
Plug 'rose-pine/neovim'
Plug 'neovim/nvim-lspconfig'
Plug 'https://git.sr.ht/~whynothugo/lsp_lines.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'voldikss/vim-floaterm'
call plug#end()

set background=light
colorscheme rose-pine

lua vim.opt.runtimepath:append(',C:\\Users\\OwenD\\AppData\\Local\\nvim\\lua')
lua require('nvimcmp')
lua require('lsp')
lua require('lsp_lines').setup()
lua require('tsitter')


nnoremap <silent> <leader>t :FloatermNew<CR>
nnoremap <leader>n :NERDTreeToggle<CR>

let g:airline#extensions#tabline#enabled=1
