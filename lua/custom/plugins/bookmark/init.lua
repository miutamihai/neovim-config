-- Mihai Explains: This one adds bookmarking capabilities

return {
  "tomasky/bookmarks.nvim",
  config = function()
    require('bookmarks').setup({
      save_file = vim.fn.expand "$HOME/.bookmarks",
      keywords = {
        ["@t"] = "☑️ ",
        ["@w"] = "⚠️ ",
        ["@f"] = "⛏ ",
        ["@n"] = " ",
      },
    })
  end
}
