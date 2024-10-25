-- debug.lua
--
-- Shows how to use the DAP plugin to debug your code.
--
-- Primarily focused on configuring the debugger for Go, but can
-- be extended to other languages as well. That's why it's called
-- kickstart.nvim and not kitchen-sink.nvim ;)

return {
  -- NOTE: Yes, you can install new plugins here!
  'mfussenegger/nvim-dap',
  -- NOTE: And you can specify dependencies as well
  dependencies = {
    -- Creates a beautiful debugger UI
    'rcarriga/nvim-dap-ui',

    -- Required dependency for nvim-dap-ui
    'nvim-neotest/nvim-nio',

    -- Installs the debug adapters for you
    'williamboman/mason.nvim',
    'jay-babu/mason-nvim-dap.nvim',

    -- Add your own debuggers here
    'leoluz/nvim-dap-go',
  },
  config = function()
    local dap = require 'dap'
    local dapui = require 'dapui'

    require('mason-nvim-dap').setup {
      -- Makes a best effort to setup the various debuggers with
      -- reasonable debug configurations
      automatic_installation = true,

      -- You can provide additional configuration to the handlers,
      -- see mason-nvim-dap README for more information
      handlers = {
        -- function(config)
        --   require('mason-nvim-dap').default_setup(config)
        -- end,
      },

      -- You'll need to check that you have the required things installed
      -- online, please don't ask me how to install them :)
      ensure_installed = {
        -- Update this to ensure that you have the debuggers for the langs you want
        'delve',
        'codelldb',
        'js',
        'elixir',
      },
    }

    -- Basic debugging keymaps, feel free to change to your liking!
    vim.keymap.set('n', '<leader>br', dap.continue, { desc = 'De[b]ug: [R]un' })
    vim.keymap.set('n', '<leader>bh', dap.step_out, { desc = 'De[b]ug: Step Out (Left - [h])' })
    vim.keymap.set('n', '<leader>bj', dap.step_over, { desc = 'De[b]ug: Step Over (Down - [j])' })
    vim.keymap.set('n', '<leader>bk', dap.step_back, { desc = 'De[b]ug: Step Back (Up - [k])' })
    vim.keymap.set('n', '<leader>bl', dap.step_into, { desc = 'De[b]ug: Step Into (Right - [l])' })
    vim.keymap.set('n', '<leader>bb', dap.toggle_breakpoint, { desc = 'De[b]ug: Toggle [B]reakpoint' })

    vim.keymap.set('n', '<leader>b?', function()
      dapui.eval(nil, { enter = true })
    end, { desc = 'De[b]ug: Eval[?] value under cursor' })
    vim.keymap.set('n', '<leader>bu', dapui.toggle, { desc = 'De[b]ug: Toggle [U]I' })

    -- Dap UI setup
    -- For more information, see |:help nvim-dap-ui|
    dapui.setup {
      -- Set icons to characters that are more likely to work in every terminal.
      --    Feel free to remove or use ones that you like more! :)
      --    Don't feel like these are good choices.
      icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
      controls = {
        icons = {
          pause = '⏸',
          play = '▶',
          step_into = '⏎',
          step_over = '⏭',
          step_out = '⏮',
          step_back = 'b',
          run_last = '▶▶',
          terminate = '⏹',
          disconnect = '⏏',
        },
      },
    }

    dap.listeners.after.event_initialized['dapui_config'] = dapui.open
    dap.listeners.before.event_terminated['dapui_config'] = dapui.close
    dap.listeners.before.event_exited['dapui_config'] = dapui.close

    -- Install golang specific config
    require('dap-go').setup {
      delve = {
        -- On Windows delve must be run attached or it crashes.
        -- See https://github.com/leoluz/nvim-dap-go/blob/main/README.md#configuring
        detached = vim.fn.has 'win32' == 0,
      },
    }

    local setup_adapters = require 'custom.setup.dap_adapters'

    setup_adapters()
  end,
}
