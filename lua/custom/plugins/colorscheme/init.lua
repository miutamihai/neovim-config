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
  "EdenEast/nightfox.nvim",
  name = "nightfox",
  opts = {},
  config = function()
    require("nightfox").setup({
      options = {
        transparent = true
      }
    })

    vim.cmd("colorscheme nightfox")
  end
}
