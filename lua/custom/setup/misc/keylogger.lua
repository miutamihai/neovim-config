local relative_to_absolute = require 'custom.utils.relative_to_absolute'

return function()
  local file_path = relative_to_absolute '~/keys.txt'
  local file = io.open(file_path, 'a+')

  vim.on_key(function(key, typed)
    print('File', file)
    local entry = string.format('Key="%s",Typed="%s"\n', key, typed)

    io.write(file, entry)
  end)
end
