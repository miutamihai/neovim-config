return {
  -- HTML + CSS
  html = { filetypes = { 'html', 'twig', 'hbs' } },
  tailwindcss = { filetypes = { 'html', 'typescript-react', 'heex' } },
  cssls = { filetypes = { 'css', 'scss', 'sass' } },
  cssmodules_ls = {},

  -- Python
  ruff_lsp = {},
  pyright = {
    cmd = { "pipenv", "run", "pyright-langserver", "--stdio" }
  },

  -- Rust
  rust_analyzer = {},

  -- Go
  gopls = {},
  templ = {},

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

  -- Elixir / Erlang
  elixirls = {},
  elp = {},

  -- Svelte
  svelte = {},

  -- Nix
  rnix = {},

  -- Clojure
  clojure_lsp = {},

  -- Ocaml
  ocamllsp = {},
}
