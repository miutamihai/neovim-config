return function()
  if vim.g.neovide then
    -- Font
    vim.o.guifont = 'IntoneMono Nerd Font:h18'

    -- Overlay Blur
    vim.g.neovide_floating_blur_amount_x = 4.0
    vim.g.neovide_floating_blur_amount_y = 4.0

    -- Window Blur
    vim.g.neovide_window_blurred = true

    -- Transparency
    vim.g.neovide_transparency = 0.8

    -- Theme
    vim.g.neovide_theme = 'dark'

    -- Cursor effect
    vim.g.neovide_cursor_vfx_mode = 'sonicboom'

    -- Fix for focus issue
    vim.defer_fn(function()
      vim.cmd 'NeovideFocus'
    end, 25)
  end
end
