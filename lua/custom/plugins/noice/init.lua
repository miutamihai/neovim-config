-- Mihai Explains: This one adds more UI elements, for
-- commands, diagnostics, etc

return
{
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- add any options here
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  config = function()
    local opts = require "custom.plugins.noice.opts"

    require("noice").setup(opts)
    require("custom.plugins.noice.set-hightlight-groups")()
  end
}
