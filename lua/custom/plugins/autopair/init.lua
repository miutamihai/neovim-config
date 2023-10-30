-- Mihai Explains: This plugin's going to insert pairs of
-- characters, for example adding a closing paranthesis
-- when adding an opening paranthesis

return {
  'windwp/nvim-autopairs',
  event = "InsertEnter",
  opts = {} -- this is equalent to setup({}) function
}
