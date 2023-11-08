return function()
  vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>Neotree reveal<cr>',
    { noremap = true, silent = true, desc = "Toggle Explorer" })

  vim.api.nvim_set_keymap('n', '<leader>bo', '<cmd>BufOnly<cr>',
    { noremap = true, silent = true, desc = "Close all buffers except current one" }
  )
end
