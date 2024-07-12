-- Mihai Explains: This file simply calls all misc setup functions

local auto_reload = require 'custom.setup.misc.auto-reload'
local set_indent = require 'custom.setup.misc.indent'
local file_types = require 'custom.setup.misc.file-types'
local quick_snippets = require 'custom.setup.misc.quick-snippets'
local swift_lsp = require 'custom.setup.misc.swift_lsp'
local toggle_minimap = require 'custom.setup.misc.toggle-minimap'

return function()
  auto_reload()
  set_indent()
  file_types()
  quick_snippets()
  swift_lsp()
  toggle_minimap()
end
