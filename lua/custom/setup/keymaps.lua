-- Mihai Explains: This file handles _most_ shortcuts

return function()
  -- TODO: Change the lua ones to use the correct api
  -- Oil
  vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>Oil<cr>', { noremap = true, silent = true, desc = 'Toggle Oil' })

  -- Buffers
  vim.api.nvim_set_keymap('n', '<leader>do', '<cmd>BufOnly<cr>', { noremap = true, silent = true, desc = 'Close [O]ther Buffers' })

  -- Telescope
  vim.keymap.set('n', '<leader>sc', require('telescope.builtin').git_status, { noremap = true, silent = true, desc = '[S]earch Git [C]handes' })

  -- Code Lens
  vim.keymap.set('n', '<space>cl', vim.lsp.codelens.run, { noremap = true, silent = true, desc = 'Code Lens: Run code lens' })

  vim.keymap.set('n', '<space>cr', vim.lsp.codelens.refresh, { noremap = true, silent = true, desc = 'Code Lens: Refresh code lens' })

  -- Spectre
  vim.keymap.set('n', '<space>S', function()
    require('spectre').toggle()
  end, { noremap = true, silent = true, desc = '[S]pecter: Toggle Spectre' })

  -- Neotest
  vim.keymap.set('n', '<space>bt', function()
    require('neotest').run.run { vim.fn.expand '%', strategy = 'dap', suite = true }
  end, { noremap = true, silent = true, desc = 'De[b]ug: [T]ests' })

  vim.keymap.set('n', '<space>ct', function()
    require('neotest').run.run()
  end, { noremap = true, silent = true, desc = '[C]ode: Run [T]ests' })
end
