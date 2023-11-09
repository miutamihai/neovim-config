-- Mihai Explains: Think this one's obvious

return {
  "catppuccin/nvim",
  name = "catppuccin",
  opts = {
    flavour = "mocha",
    background = { light = "latte", dark = "mocha" },
    dim_inactive = {
      enabled = false,
      shade = "dark",
      percentage = 0.15,
    },
    transparent_background = true,
    show_end_of_buffer = false,
    term_colors = true,
    compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
    styles = {
      comments = { "italic" },
      properties = { "italic" },
      functions = { "bold" },
      keywords = { "italic" },
      operators = { "bold" },
      conditionals = { "bold" },
      loops = { "bold" },
      booleans = { "bold", "italic" },
      numbers = {},
      types = {},
      strings = {},
      variables = {},
    },
    integrations = {
      treesitter = true,
      cmp = true,
      dap = { enabled = true, enable_ui = true },
      dashboard = true,
      gitsigns = true,
      mason = true,
      neotree = { enabled = true, show_root = true, transparent_panel = false },
      noice = true,
      treesitter_context = true,
    },
    color_overrides = {},
  },
  config = function()
    vim.cmd [[colorscheme catppuccin]]
  end,

}
