-- Mihai Explains: This one adds a database client to nvim

return {
  'kndndrj/nvim-dbee',
  dependencies = {
    'MunifTanjim/nui.nvim',
  },
  build = function()
    require('dbee').install()
  end,
  config = function()
    require('dbee').setup()
  end,
}
