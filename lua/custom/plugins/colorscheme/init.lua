-- Mihai Explains: Think this one's obvious

return {
  -- "catppuccin/nvim",
  -- name = "catppuccin",
  -- opts = {},
  -- config = function()
  --   local opts = require "custom.plugins.colorscheme.opts"
  --   require("catppuccin").setup(opts)

  --   vim.cmd [[colorscheme catppuccin]]
  -- end,
  "rebelot/kanagawa.nvim",
  name = "kanagawa",
  opts = {},
  config = function()
    vim.cmd [[colorscheme kanagawa]]
  end,
}
