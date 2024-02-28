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
        init_options = {
          mix_env = "dev",
          mix_target = "host",
          experimental = {
            completions = {
              enable = true -- control if completions are enabled. defaults to false
            }
          }
        },
      },
      credo = { enable = true },
      elixirls = {
        enable = true,
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
