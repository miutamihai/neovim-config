-- Mihai Explains: This one provides a better elixir experience

return {
  "elixir-tools/elixir-tools.nvim",
  version = "*",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local elixir = require("elixir")
    local elixirls = require("elixir.elixirls")

    elixir.setup {
      nextls = {
        enable = false,
      },
      credo = { enable = true },
      elixirls = {
        enable = true,
        settings = elixirls.settings {
          dialyzerEnabled = true,
          fetchDeps = true,
          enableTestLenses = true,
          suggestSpecs = true,
        },
        on_attach = require "custom.setup.lsp.on_attach"
      }
    }
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
}
