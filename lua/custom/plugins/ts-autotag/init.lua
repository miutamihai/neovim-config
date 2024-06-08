-- Mihai Explains: This one adds autoclosing html tags

return {
  'windwp/nvim-ts-autotag',
  config = function()
    require('nvim-ts-autotag').setup()
  end,
}
