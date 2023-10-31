-- Mihai Explains: This one adds a nice dashboard when
-- opening neovim

return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      config = {
        week_header = {
          enable = true,
        },
      }
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } }
}
