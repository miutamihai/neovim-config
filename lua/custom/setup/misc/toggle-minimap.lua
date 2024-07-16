return function()
  vim.api.nvim_create_autocmd({ 'BufWinEnter' }, {
    command = 'MinimapToggle',
    pattern = { '*' },
  })
end
