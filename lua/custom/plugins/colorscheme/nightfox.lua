return {
  "EdenEast/nightfox.nvim",
  name = "nightfox",
  opts = {},
  config = function()
    require("nightfox").setup({
      options = {
        transparent = true
      }
    })

    vim.cmd("colorscheme nightfox")
  end
}

