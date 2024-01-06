-- English language of ui
vim.api.nvim_exec("language en_US", true)
-- Enable relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true
-- Indents
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Always 8 free lines when scroll down
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- See where editor space should end
vim.opt.colorcolumn = "80"
-- Disable left gap
vim.opt.signcolumn = "no"
