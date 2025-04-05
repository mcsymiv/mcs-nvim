require("config.lazy")

-- mappings
local tel = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', tel.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>lg', tel.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('i', '<Tab>', '<C-X><C-O>', { desc = 'Telescope live grep' })

-- options
vim.opt.shiftwidth = 2
vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.relativenumber = true

-- autocmd
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
