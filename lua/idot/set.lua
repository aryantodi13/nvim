vim.opt.guicursor = ""

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.ruler = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
--vim.cmd("colorscheme slate")
--vim.cmd("colorscheme gruvbox")
vim.cmd("colorscheme kanagawa-lotus")

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.updatetime = 50

vim.g.mapleader = " "
vim.api.nvim_set_hl(0, "TabLineSel", {fg="#ffffff", bg="#009500", bold=true})
vim.api.nvim_set_hl(0, "TabLine", {fg="#000000", bg="#009500"})
