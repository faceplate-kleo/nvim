vim.opt.compatible = false
vim.opt.tabstop = 4
vim.opt.title = true
vim.opt.mouse = "v"
vim.opt.hlsearch = true
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wildmode={"longest","list"}
vim.opt.cc="80"
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.ttyfast = true
vim.cmd([[
    syntax on
    filetype plugin on
    filetype plugin indent on
]])

vim.g.mapleader = " "
Unixpath = "~/.config/nvim/plugged"
Winpath = "~/AppData/Local/nvim/plugged"

Ultimatepath = Winpath
if vim.fn.has('unix') or vim.fn.has('linux') then
    Ultimatepath = Unixpath
end

vim.g.plug_shallow = 0

vim.call("plug#begin", Ultimatepath)
local Plug = vim.fn['plug#']

Plug('ryanoasis/vim-devicons')
Plug('preservim/nerdtree')
Plug('vim-airline/vim-airline')
Plug('vim-airline/vim-airline-themes')
Plug('dracula/vim')
Plug('edeneast/nightfox.nvim')
Plug('rose-pine/neovim')
Plug('neovim/nvim-lspconfig')
Plug('https://git.sr.ht/~whynothugo/lsp_lines.nvim')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
Plug('nvim-treesitter/nvim-treesitter')
Plug('voldikss/vim-floaterm')
Plug('tpope/vim-fugitive')
Plug('catppuccin/nvim', {['as'] = 'catppuccin'})
Plug('catppuccin/vim', {['as'] = 'catppuccin-vim'})
Plug('iamcco/markdown-preview.nvim', { ['do'] = 'cd app && npx --yes yarn install' })
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.5' })
Plug('norcalli/nvim-colorizer.lua')
vim.call("plug#end")

vim.opt.encoding = "UTF-8"
vim.opt.termguicolors = true

require('colors')
vim.opt.background = "dark"
vim.cmd.colorscheme("catppuccin")
vim.g.airline_theme = 'catppuccin_mocha'
vim.opt.guifont = "JetBrainsMono NF Medium 11"
vim.g.airline_powerline_fonts = 1
vim.g['airline#extensions#tabline#enabled'] = 1

vim.opt.runtimepath:append(',C:\\Users\\OwenD\\AppData\\Local\\nvim\\lua')
vim.opt.runtimepath:append(',~/.config/nvim/lua')
require('nvimcmp')
require('lsp')
require('lsp_lines').setup()
require('tsitter')
require('colorizer').setup()

vim.keymap.set('n', '<leader>t', ':FloatermNew<CR>')
vim.keymap.set('n', '<leader>n', ':NERDTreeToggle<CR>')

vim.keymap.set('n', '<leader>1', '<Plug>AirlineSelectTab1')
vim.keymap.set('n', '<leader>2', '<Plug>AirlineSelectTab3')
vim.keymap.set('n', '<leader>3', '<Plug>AirlineSelectTab3')
vim.keymap.set('n', '<leader>4', '<Plug>AirlineSelectTab4')
vim.keymap.set('n', '<leader>5', '<Plug>AirlineSelectTab5')
vim.keymap.set('n', '<leader>6', '<Plug>AirlineSelectTab6')
vim.keymap.set('n', '<leader>7', '<Plug>AirlineSelectTab7')
vim.keymap.set('n', '<leader>8', '<Plug>AirlineSelectTab8')
vim.keymap.set('n', '<leader>9', '<Plug>AirlineSelectTab9')
vim.keymap.set('n', '<leader>0', '<Plug>AirlineSelectTab0')
vim.keymap.set('n', '<leader>-', '<Plug>AirlineSelectPrevTab')
vim.keymap.set('n', '<leader>=', '<Plug>AirlineSelectNextTab')

-- Find files using Telescope command-line sugar.
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')
