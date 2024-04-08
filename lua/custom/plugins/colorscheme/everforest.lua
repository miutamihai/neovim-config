return {
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  -- Optional; default configuration will be used if setup isn't called.
  config = function()
    require("everforest").setup({
      transparent_background_level = 2,
      ui_contrast = "high",
      italics = true,
      diagnostic_text_highlight = true,
      diagnostic_line_highlight = true
    })

    vim.cmd([[colorscheme everforest]])
  end,
}
