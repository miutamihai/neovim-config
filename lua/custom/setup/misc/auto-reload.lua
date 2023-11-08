-- Mihai Explains: This one makes it so neovim reloads files that were
-- changed by other processes

return function()
  vim.o.autoread = true
  vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
    command = "if mode() != 'c' | checktime | endif",
    pattern = { "*" },
  })
end
