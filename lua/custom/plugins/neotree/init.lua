-- Mihai Explains: This one's providing the file explorer

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = require 'custom.plugins.neotree.dependencies',
  config = require 'custom.plugins.neotree.config'
}
