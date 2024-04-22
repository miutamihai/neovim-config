-- Mihai Explains: this one sets up all autocmds

return function()
  -- This one sets code lens
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

  -- This one's for swift LSP setup
  local swift_lsp = vim.api.nvim_create_augroup("swift_lsp", { clear = true })
  vim.api.nvim_create_autocmd("FileType", {
    pattern = { "swift" },
    callback = function()
      local root_dir = vim.fs.dirname(vim.fs.find({
        "Package.swift",
        ".git",
      }, { upward = true })[1])
      local client = vim.lsp.start({
        name = "sourcekit-lsp",
        cmd = { "sourcekit-lsp" },
        root_dir = root_dir,
        on_attach = require 'custom.setup.lsp.on_attach'
      })
      vim.lsp.buf_attach_client(0, client)
    end,
    group = swift_lsp,
  })
end
