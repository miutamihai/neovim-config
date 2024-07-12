-- Mihai Explains: This one adds a small minimap to the right

return {
  'wfxr/minimap.vim',
  config = function()
    vim.g.minimap_auto_start = 1
  end,
}
