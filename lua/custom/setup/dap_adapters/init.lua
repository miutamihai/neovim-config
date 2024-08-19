local js = require 'custom.setup.dap_adapters.js'
local elixir = require 'custom.setup.dap_adapters.elixir'

return function()
  js()
  elixir()
end
