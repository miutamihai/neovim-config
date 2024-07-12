return function()
  vim.api.nvim_create_autocmd({ 'BufEnter' }, {
    command = 'MinimapToggle',
    pattern = { '*' },
  })
end
