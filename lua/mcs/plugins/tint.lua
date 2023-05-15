local M = {
  'levouh/tint.nvim',

  -- dims inactive window
  config = function()
    require('tint').setup {
      tint = -85,  -- Darken colors, use a positive value to brighten
      saturation = 0.6,  -- Saturation to preserve
    }
  end
}

return M
