return {
  'catppuccin/nvim',
  name = 'catppuccin',
  opts = {
    flavour = 'mocha',
    background = { light = 'latte', dark = 'mocha' },
    dim_inactive = {
      enabled = true,
      shade = 'dark',
      percentage = 0.15,
    },
    transparent_background = true,
    show_end_of_buffer = true,
    term_colors = true,
    styles = {
      comments = { 'italic' },
      properties = { 'italic' },
      functions = { 'bold' },
      keywords = { 'italic' },
      operators = { 'bold' },
      conditionals = { 'bold' },
      loops = { 'bold' },
      booleans = { 'bold', 'italic' },
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
      neotree = { enabled = true, show_root = true, transparent_panel = true },
      -- noice = true,
      noice = {
        enabled = true,
        enable_ui = true,
      },
      treesitter_context = true,
      indent_blankline = {
        enabled = true,
        scope_color = 'lavander',
        colored_indent_levels = true,
      },
      notify = true,
      telescope = {
        enabled = true,
        style = 'nvchad',
      },
      lsp_trouble = true,
      mini = {
        enabled = true,
        enable_ui = true,
      },
    },
    color_overrides = {},
  },
  config = function(_, opts)
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    require('catppuccin').setup(opts)

    vim.cmd [[colorscheme catppuccin]]
  end,
}
