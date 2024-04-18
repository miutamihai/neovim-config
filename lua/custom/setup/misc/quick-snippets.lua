-- Mihai Explains: This one stores quick snippets

return function()
  vim.api.nvim_set_keymap('n', '<leader>pp', '<cmd>aPULA <cr>',
    { noremap = true, silent = true, desc = "[P]ut: 'PULA'" })

  vim.api.nvim_set_keymap('n', '<leader>ph', '<cmd>apulaLuiHristos<cr>',
    { noremap = true, silent = true, desc = "[P]ut: 'PulaLuiHristos'" })

  vim.keymap.set('n', '<leader>pf', function()
    local filename = vim.fn.expand('%:t:r')
    vim.api.nvim_put({ filename }, '', true, true)
  end, { noremap = true, silent = true, desc = "[P]ut: Current File Name" })
end
