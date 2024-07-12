return {
  -- HTML + CSS
  html = { filetypes = { 'html', 'twig', 'hbs' } },
  tailwindcss = { filetypes = { 'html', 'typescript-react', 'heex', 'vue' } },
  cssls = { filetypes = { 'css', 'scss', 'sass' } },
  cssmodules_ls = {},

  -- JavaScript
  vtsls = {},
  eslint = {},
  volar = {},

  -- Python
  ruff = {
    cmd_env = { RUFF_TRACE = 'messages' },
    cmd = { 'pipenv', 'run', 'ruff', 'server', '--preview' },
  },
  pyright = {
    cmd = { 'pipenv', 'run', 'pyright-langserver', '--stdio' },
    pyright = {
      -- Using Ruff's import organizer
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        -- Ignore all files for analysis to exclusively use Ruff for linting
        ignore = { '*' },
      },
    },
  },

  -- Rust
  rust_analyzer = {
    ['rust-analyzer'] = {
      checkOnSave = {
        command = 'clippy',
      },
    },
  },

  -- Go
  gopls = {},
  templ = {},

  -- Lua
  lua_ls = {
    -- cmd = {...},
    -- filetypes = { ...},
    -- capabilities = {},
    settings = {
      Lua = {
        completion = {
          callSnippet = 'Replace',
        },
        -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
        -- diagnostics = { disable = { 'missing-fields' } },
      },
    },
  },

  -- YAML
  yamlls = {},

  -- Bash
  bashls = {},

  -- C/C++
  clangd = {},

  -- Zig
  zls = {},

  -- Clojure
  clojure_lsp = {},

  -- OCaml
  ocamllsp = {},
}
