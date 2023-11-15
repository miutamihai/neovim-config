-- Mihai Explains: This file handlers _most_ shortcuts

return function()
  -- Neotree
  vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>Neotree reveal<cr>',
    { noremap = true, silent = true, desc = "Toggle Explorer" })

  -- Buffers
  vim.api.nvim_set_keymap('n', '<leader>bo', '<cmd>BufOnly<cr>',
    { noremap = true, silent = true, desc = "Close all buffers except current one" }
  )

  -- Git
  vim.api.nvim_set_keymap('n', '<leader>gd', '<cmd>lua require("gitsigns").diffthis() <cr>',
    { noremap = true, silent = true, desc = "View Git diff" }
  )
end
