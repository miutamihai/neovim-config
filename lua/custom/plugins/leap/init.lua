-- Mihai Explains: this one makes s/S jump

return {
  'ggandor/leap.nvim',
  dependencies = {
    'tpope/vim-repeat',
  },
  config = function()
    local leap = require 'leap'

    vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' })
    vim.api.nvim_set_hl(0, 'LeapMatch', {
      fg = 'white',
      bold = true,
      nocombine = true,
    })

    leap.opts.highlight_unlabeled_phase_one_targets = true

    vim.keymap.set({ 'n', 'x', 'o' }, 't', '<Plug>(leap-forward)')
    vim.keymap.set({ 'n', 'x', 'o' }, 'T', '<Plug>(leap-backward)')
    vim.keymap.set({ 'n', 'x', 'o' }, 'gt', '<Plug>(leap-from-window)')
    leap.opts.equivalence_classes = { ' \t\r\n', '([{', ')]}', '\'"`' }
    require('leap.user').set_repeat_keys('<enter>', '<backspace>')
  end,
}
