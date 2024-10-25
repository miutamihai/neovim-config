-- Mihai Explains: This one adds extra functionality to
-- writing Go

return {
  'olexsmir/gopher.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  build = function()
    vim.cmd.GoInstallDeps()
  end,
  ---@type gopher.Config
  opts = {},
}
