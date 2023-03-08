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

let unixpath = "~/.config/nvim/plugged"
let winpath  = "~/AppData/Local/nvim/plugged"

let ultimatepath = winpath
if has('unix')
    ultimatepath = unixpath
endif

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
call plug#end()

set background=light
colorscheme rose-pine

lua vim.opt.runtimepath:append(',C:\\Users\\OwenD\\AppData\\Local\\nvim\\lua')
lua vim.opt.runtimepath:append(',~/.config/nvim/lua')
lua require('nvimcmp')
lua require('lsp')
lua require('lsp_lines').setup()
lua require('tsitter')


nnoremap <silent> <leader>t :FloatermNew<CR>
nnoremap <leader>n :NERDTreeToggle<CR>

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
nmap <leader>+ <Plug>AirlineSelectNextTab
