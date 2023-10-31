return function()
  if vim.g.neovide then
    -- Font
    vim.o.guifont = 'DaddyTimeMono Nerd Font Propo:h18'

    -- Blur
    vim.g.neovide_floating_blur_amount_x = 4.0
    vim.g.neovide_floating_blur_amount_y = 4.0

    -- Transparency
    vim.g.neovide_transparency = 0.6

    -- Theme
    vim.g.neovide_theme = 'dark'

    -- Cursor effect
    vim.g.neovide_cursor_vfx_mode = "sonicboom"
  end
end
