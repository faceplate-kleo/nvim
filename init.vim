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

let mapleader = " "
let unixpath = "~/.config/nvim/plugged"
let winpath  = "~/AppData/Local/nvim/plugged"


let ultimatepath = winpath
if has('unix') || has('linux')
    let ultimatepath = unixpath
endif

let g:plug_shallow=0
call plug#begin(ultimatepath)

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
Plug 'tpope/vim-fugitive'
Plug 'catppuccin/nvim', {'as' : 'catppuccin'}
Plug 'catppuccin/vim', {'as' : 'catppuccin-vim'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'norcalli/nvim-colorizer.lua'
call plug#end()

set encoding=UTF-8
set termguicolors

lua require('colors')
set background=dark
colorscheme catppuccin
let g:airline_theme='catppuccin_mocha'
set guifont=JetBrainsMono\ NF\ Medium\ 11

lua vim.opt.runtimepath:append(',C:\\Users\\OwenD\\AppData\\Local\\nvim\\lua')
lua vim.opt.runtimepath:append(',~/.config/nvim/lua')
lua require('nvimcmp')
lua require('lsp')
lua require('lsp_lines').setup()
lua require('tsitter')
lua require('colorizer').setup()


nnoremap <silent> <leader>t :FloatermNew<CR>
nnoremap <leader>n :NERDTreeToggle<CR>

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled=1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>0 <Plug>AirlineSelectTab0
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>= <Plug>AirlineSelectNextTab

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
