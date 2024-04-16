vim.api.nvim_set_keymap("n", "<leader>n", ":enew <CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-l>", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
  "n",
  "<C-f>",
  "<cmd>FuzzyFindCurrentBuffer<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<C-p>",
  ":lua require('telescope.builtin').buffers()<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<C-y>", ":redo<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
  "n",
  "<leader><space>",
  ':lua require("telescope.builtin").resume()<CR>',
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>r",
  ":lua require('telescope.builtin').oldfiles()<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<leader>cd", ":Telescope cder<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap(
  "n",
  "<leader>fg",
  "<cmd>lua require('telescope.builtin').live_grep()<CR>",
  { desc = "Live Grep" }
)
vim.api.nvim_set_keymap("i", "<C-r>", ":luafile %<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-r>", ":luafile %<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'p', ':pu! _<CR>1o<Esc>k]p', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'P', ':pu! _<CR>:-1r! echo<CR><Esc>1O<Esc>j]p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'd', '"_d', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>cf", "<Esc><cmd>FormatFunction<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', 'O', 'O<Esc>O<Esc>O<Esc>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'o', 'o<Esc>o<Esc>o<Esc>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "y-", ":normal y$<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "-", "$", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>p', '"bp', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>1', ':normal gg<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>2', ':normal G<CR>', { noremap = true, silent = true })
