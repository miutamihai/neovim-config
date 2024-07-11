return {
  'ramojus/mellifluous.nvim',
  config = function()
    require('mellifluous').setup {
      color_set = 'kanagawa_dragon',
      dim_inactive = true,
    }
    vim.cmd 'colorscheme mellifluous'
  end,
}
