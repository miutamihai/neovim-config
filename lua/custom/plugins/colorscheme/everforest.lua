return {
  'neanias/everforest-nvim',
  version = false,
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  -- Optional; default configuration will be used if setup isn't called.
  config = function()
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

    require('everforest').setup {
      transparent_background_level = 2,
      ui_contrast = 'high',
      italics = true,
    }

    vim.cmd [[colorscheme everforest]]
  end,
}
