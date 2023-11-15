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

  -- LSP
  vim.api.nvim_set_keymap('n', '<leader>dd', '<cmd>lua require("telescope.builtin").lsp_definitions()<cr>',
    { noremap = true, silent = true, desc = "LSP: View Definitions" }
  )
  vim.api.nvim_set_keymap('n', '<leader>dr', '<cmd>lua require("telescope.builtin").lsp_references()<cr>',
    { noremap = true, silent = true, desc = "LSP: View References" }
  )
end
