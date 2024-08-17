local languages = {
  'javascript',
  'typescript',
  'javascriptreact',
  'typescriptreact',
}

return function()
  local dap = require 'dap'

  dap.adapters['pwa-node'] = {
    type = 'server',
    host = '::1',
    port = '${port}',
    executable = {
      command = 'js-debug-adapter',
      args = {
        '${port}',
      },
    },
  }

  for _, language in ipairs(languages) do
    dap.configurations[language] = {
      {
        type = 'pwa-node',
        request = 'launch',
        name = 'Launch file',
        program = '${file}',
        cwd = '${workspaceFolder}',
        sourceMaps = true,
      },
      {
        type = 'pwa-node',
        request = 'attach',
        name = 'Attach',
        processId = require('dap.utils').pick_process,
        cwd = '${workspaceFolder}',
        sourceMaps = true,
      },
    }
  end
end
