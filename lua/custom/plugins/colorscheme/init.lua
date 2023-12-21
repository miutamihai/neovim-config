-- Mihai Explains: Think this one's obvious

return {
  "catppuccin/nvim",
  name = "catppuccin",
  opts = {},
  config = function()
    local opts = require "custom.plugins.colorscheme.opts"
    require("catppuccin").setup(opts)

    vim.cmd [[colorscheme catppuccin]]
  end,
  -- Keeping this here since I can't make up my mind
  -- which one I like more lol
  -- When changing make sure to also change the lualine config
  -- "rebelot/kanagawa.nvim",
  -- name = "kanagawa",
  -- opts = {},
  -- config = function()
  --   vim.cmd [[colorscheme kanagawa]]
  -- end,
}
