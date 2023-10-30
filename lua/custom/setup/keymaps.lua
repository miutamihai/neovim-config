return function()
  vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>Neotree toggle<cr>',
    { noremap = true, silent = true, desc = "Toggle Explorer" })
end
