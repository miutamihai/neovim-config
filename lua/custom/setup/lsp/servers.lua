return {
  -- HTML + CSS
  html = { filetypes = { 'html', 'twig', 'hbs' } },
  tailwindcss = { filetypes = { 'html', 'typescript-react', 'heex' } },
  cssls = { filetypes = { 'css', 'scss', 'sass' } },
  cssmodules_ls = {},

  -- JavaScript
  vtsls = {},
  eslint = {},

  -- Python
  ruff_lsp = {},
  pyright = {
    cmd = { 'pipenv', 'run', 'pyright-langserver', '--stdio' },
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
}
