local M = {
  "nvim-telescope/telescope.nvim",

  cmd = "Telescope",

  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
  },

  keys = {
    { "<leader>fc", "<cmd>Telescope commands<cr>", desc = "[f]ind [c]ommands" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "[f]ind [f]iles" },
    { "<leader>fs", "<cmd>Telescope grep_string<cr>", desc = "[f]ind [s]tring" },
    { "<leader>gs", "<cmd>Telescope git_status<cr>", desc = "[g]it [s]tatus" },
    { "<leader>lg", "<cmd>Telescope live_grep<cr>", desc = "[l]ive [g]rep" },
    -- file_browser extension remaps
    { "<leader>b", "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>", desc = "[g]it [s]tatus", { noremap = true } },
  },

  config = function()
    local telescope = require("telescope")

    telescope.setup({
      defaults = {
        layout_strategy = "vertical",
        layout_config = {
          width = 0.95,
          height = 0.85,
        }, -- layout config
      }, -- defualts
    }) -- telescope setup end

    telescope.load_extension 'file_browser'
  end,
}

return M
