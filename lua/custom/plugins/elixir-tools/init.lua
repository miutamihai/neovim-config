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
        enable = true,
        init_options = {
          mix_env = "prod",
          mix_target = "host",
          experimental = {
            completions = {
              enable = true
            }
          }
        },
      },
      credo = { enable = true },
      elixirls = {
        enable = false,
        settings = elixirls.settings {
          dialyzerEnabled = true,
          fetchDeps = false,
          enableTestLenses = true,
          suggestSpecs = true,
        },
      }
    }
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
}
