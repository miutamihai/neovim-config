-- Mihai Explains: this one sets up all autocmds

return function()
  vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter" }, {
    pattern = { "*" },
    group = vim.api.nvim_create_augroup('CodeLensRefresh', { clear = true }),
    callback = function()
      local bufnr = vim.api.nvim_get_current_buf()
      local clients = vim.lsp.get_active_clients({ bufnr = bufnr })

      for _, client in ipairs(clients) do
        if client.supports_method("textDocument/codeLens") then
          vim.lsp.codelens.refresh()
        end
      end
    end
  })
end
