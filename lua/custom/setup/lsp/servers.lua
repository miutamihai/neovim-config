return {
  -- HTML + CSS
  html = { filetypes = { 'html', 'twig', 'hbs' } },
  tailwindcss = { filetypes = { 'html', 'typescript-react', 'heex' } },
  cssls = { filetypes = { 'css', 'scss', 'sass' } },
  cssmodules_ls = {},

  -- Python
  pyright = {
    cmd = { "pipenv", "run", "pyright-langserver", "--stdio" }
  },

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
  tsserver = {},
  eslint = {},

  -- Elixir
  elixirls = {},

  -- Clojure
  clojure_lsp = {},

  -- Svelte
  svelte = {},

  -- Nim
  nim_langserver = {},

  -- Zig
  zls = {},
}
