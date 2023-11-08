-- Mihai Explains: This file simply calls all misc setup functions

local auto_reload = require 'custom.setup.misc.auto-reload'

return function()
  auto_reload()
end
