-- Mihai Explains: This one stores quick snippets

return function()
  vim.keymap.set('n', '<leader>pp', 'aPULA ',
    { noremap = true, silent = true, desc = "[P]ut: 'PULA'" })

  vim.keymap.set('n', '<leader>ph', 'apulaLuiHristos',
    { noremap = true, silent = true, desc = "[P]ut: 'PulaLuiHristos'" })

  vim.keymap.set('n', '<leader>pf', function()
    local filename = vim.fn.expand('%:t:r')
    vim.api.nvim_put({ filename }, '', true, true)
  end, { noremap = true, silent = true, desc = "[P]ut: Current File Name" })
end
