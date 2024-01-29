-- Bind space to <leader>
vim.g.mapleader = " "
-- Project view
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Format file
vim.keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format()
end)
-- Change buffers
vim.keymap.set("n", "bp", ':bp<CR>', {noremap = true, silent = true})
vim.keymap.set("n", "bn", ':bn<CR>', {noremap = true, silent = true})
