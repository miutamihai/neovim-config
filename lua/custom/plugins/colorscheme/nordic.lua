return {
  'AlexvZyl/nordic.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    local nordic = require 'nordic'

    nordic.setup {
      bold_keywords = true,
      transparent = {
        bg = true,
        float = true,
      },
      bright_border = true,
    }

    nordic.load()
  end,
}
