return function()
  vim.api.nvim_create_autocmd({ 'BufWinEnter' }, {
    command = 'Minimap',
    pattern = { '*' },
  })
end
