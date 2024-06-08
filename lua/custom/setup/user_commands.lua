-- Mihai Explains: this one sets up all my custom commands

return function()
  -- To be used when working in codebases with shit formatting
  vim.api.nvim_create_user_command('NoFormatSave', function()
    -- Stop LSP
    vim.cmd 'LspStop'

    -- Save the current buffer
    vim.cmd 'w'

    -- Start LSP
    vim.cmd 'LspStart'
  end, {})
end
