return {
  html = { filetypes = { 'html', 'twig', 'hbs' } },
  vtsls = {},
  pyright = {},
  rust_analyzer = {},
  gopls = {},

  lua_ls = {
    Lua = {
      workspace = { checkThirdParty = false },
      telemetry = { enable = false },
    },
  },
}
