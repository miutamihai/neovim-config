return function()
  local dap = require 'dap'

  dap.adapters.mix_task = {
    type = 'executable',
    command = '/Users/mihaimiuta/.local/share/nvim/mason/packages/elixir-ls/debug_adapter.sh',
    args = {},
  }

  dap.configurations.elixir = {
    {
      type = 'mix_task',
      name = 'mix test',
      task = 'test',
      taskArgs = { '--trace' },
      request = 'launch',
      startApps = true,
      projectDir = '${workspaceFolder}',
      requireFiles = {
        'test/**/test_helper.exs',
        'test/**/*_test.exs',
      },
    },
  }
end
