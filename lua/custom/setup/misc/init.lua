-- Mihai Explains: This file simply calls all misc setup functions

local auto_reload = require 'custom.setup.misc.auto-reload'
local setup_metals = require 'custom.setup.misc.scala-metals'
local set_indent = require 'custom.setup.misc.indent'

return function()
  auto_reload()
  setup_metals()
  set_indent()
end
