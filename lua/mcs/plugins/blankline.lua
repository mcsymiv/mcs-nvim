local M = {
  'lukas-reineke/indent-blankline.nvim',

  main = "ibl",

  opt = {},

  config = function()
    require("ibl").setup()
  end,
}

return M
