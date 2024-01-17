function _G.moveLeftAndInsert()
  vim.cmd('wincmd h')
  -- Enters insert mode by pressing "i + backspace"
  vim.api.nvim_input('i')
  vim.api.nvim_input('<BS>')
end

function _G.moveRightAndInsert()
  vim.cmd('wincmd l')
  vim.api.nvim_input('i')
  vim.api.nvim_input('<BS>')
end

local number = 2
function _G.createNewTerminal() 
  vim.cmd(':ToggleTerm' .. number) 
  number = number + 1
end


require("toggleterm").setup{
  open_mapping = [[<C-\>]],
  terminal_mappings = true,
  close_on_exit = true,
  start_in_insert = true,
  on_open = function(term)
    vim.api.nvim_input('i')
    vim.api.nvim_input('<BS>')
    local opts = {buffer = 0}
    -- User ESC to enter normal mode in terminal
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    -- Use Ctrl + N to create new terminal in terminal mode
    vim.keymap.set('t', '<C-n>', [[<Cmd>lua createNewTerminal()<CR>]], opts)
    -- Use Ctrl + E to exit terminal
    vim.keymap.set('t', '<C-e>', [[<Cmd>:q<CR>]], opts)
    -- Use CTRL + h/j/k/l to switch windows
    vim.keymap.set('t', '<C-h>', [[<Cmd>lua moveLeftAndInsert()<CR>]], opts)
    vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
    vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
    vim.keymap.set('t', '<C-l>', [[<Cmd>lua moveRightAndInsert()<CR>]], opts)
    vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
  end,
}
