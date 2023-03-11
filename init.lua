require('init')

require('lua/pluginConfigs/dashboard')
require('lua/pluginConfigs/fugitive')
require('lua/pluginConfigs/indent_blankline')
require('lua/pluginConfigs/lsp')
require('lua/pluginConfigs/telescope')
require('lua/pluginConfigs/treesitter')

vim.opt.incsearch   = true
vim.opt.scrolloff   = 8
vim.opt.updatetime  = 50
--vim.opt.colorcolumn = '80' Makes weird line appear
vim.opt.splitright  = true

--Text Rendering
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.wrap = true


--UI Options
vim.opt.termguicolors = true


--Theme
vim.opt.background = "dark"
vim.cmd("colorscheme oxocarbon")
