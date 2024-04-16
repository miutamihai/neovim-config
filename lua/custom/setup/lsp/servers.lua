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
  rust_analyzer = {
    ["rust-analyzer"] = {
      checkOnSave = {
        command = "clippy",
      },
    },
  },

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
  rescriptls = {},
  svelte = {},
  volar = {},

  -- Uncomment if working in a project that doesn't suck
  -- biome = {},

  -- Elixir / Erlang
  -- This one's handled by ElixirTools
  -- elixirls = {},
  elp = {},
  -- erlangls = {},

  -- Nix
  rnix = {},

  -- Clojure
  clojure_lsp = {},

  -- Ocaml
  ocamllsp = {},

  -- Terraform
  terraformls = {},
  tflint = {},

  -- Kotlin
  kotlin_language_server = {},
}
