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

  -- Dbee
  vim.api.nvim_set_keymap('n', '<leader>wde', '<cmd>lua require("dbee").toggle()<cr>',
    { noremap = true, silent = true, desc = "Dbee: Toggle View" }
  )
  vim.api.nvim_set_keymap('n', '<leader>wdn', '<cmd>lua require("dbee").next()<cr>',
    { noremap = true, silent = true, desc = "Dbee: Next Result Page" }
  )
  vim.api.nvim_set_keymap('n', '<leader>wdp', '<cmd>lua require("dbee").prev()<cr>',
    { noremap = true, silent = true, desc = "Dbee: Previous Result Page" }
  )

  -- Bookmarks

  vim.api.nvim_set_keymap('n', '<leader>mm', '<cmd>lua require("bookmarks").bookmark_toggle()<cr>',
    { noremap = true, silent = true, desc = "Bookmarks: Toggle bookmark" }
  )
  vim.api.nvim_set_keymap('n', '<leader>mi', '<cmd>lua require("bookmarks").bookmark_clean()<cr>',
    { noremap = true, silent = true, desc = "Bookmarks: Clean all bookmarks in current buffer" }
  )
  vim.api.nvim_set_keymap('n', '<leader>mn', '<cmd>lua require("bookmarks").bookmark_next()<cr>',
    { noremap = true, silent = true, desc = "Bookmarks: Jump to next mark in current buffer" }
  )
  vim.api.nvim_set_keymap('n', '<leader>mp', '<cmd>lua require("bookmarks").bookmark_prev()<cr>',
    { noremap = true, silent = true, desc = "Bookmarks: Jump to previous mark in current buffer" }
  )
  vim.api.nvim_set_keymap('n', '<leader>ml', '<cmd>lua require("bookmarks").bookmark_list()<cr>',
    { noremap = true, silent = true, desc = "Bookmarks: Show marked file list in quickfix window" }
  )
  vim.api.nvim_set_keymap('n', '<leader>sm', '<cmd>lua require("telescope").extensions.bookmarks.list()<cr>',
    { noremap = true, silent = true, desc = "Bookmarks: Search Bookmarks" }
  )
end
