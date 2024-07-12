return function()
  vim.api.nvim_create_autocmd({ 'FocusGained' }, {
    command = 'MinimapToggle',
    pattern = { '*' },
  })
end
