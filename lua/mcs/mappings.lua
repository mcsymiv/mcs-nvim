local map = vim.keymap.set

-- Remap for dealing with visual line wraps
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

map('n', '<leader>x', vim.cmd.Ex)

vim.keymap.set('n', '<leader>/', function()
  require('telescope.builtin').current_buffer_fuzzy_find()
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>ew', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>h', vim.diagnostic.hide)
vim.keymap.set('n', '<c-d>', '<c-d>zz', { noremap = true })
vim.keymap.set('n', '<c-u>', '<c-u>zz', { noremap = true })
vim.keymap.set('n', '<leader>ee', vim.diagnostic.goto_next, { noremap = true })
