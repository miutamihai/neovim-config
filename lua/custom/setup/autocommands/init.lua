-- Mihai Explains: this one sets up all autocmds

return function()
  vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter" }, {
    pattern = { "*" },
    group = vim.api.nvim_create_augroup('CodeLensRefresh', { clear = true }),
    callback = function()
      vim.lsp.codelens.refresh()
    end
  })
end
