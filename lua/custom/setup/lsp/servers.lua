return {
  -- HTML + CSS
  html = { filetypes = { 'html', 'twig', 'hbs' } },
  tailwindcss = {},
  cssls = {},

  -- Python
  pyright = {},

  -- Rust
  rust_analyzer = {},

  -- Go
  gopls = {},

  -- Lua
  lua_ls = {
    Lua = {
      workspace = { checkThirdParty = false },
      telemetry = { enable = false },
    },
  },

  -- Elm
  elmls = {},

  -- JavaScript
  vtsls = {},
  eslint = {},

  -- Elixir
  elixirls = {},
}
