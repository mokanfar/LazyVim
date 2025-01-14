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
  { noremap = true, silent = true, desc = "Resume Last Telescope Picker" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>r",
  ":lua require('telescope.builtin').oldfiles()<CR>",
  { noremap = true, silent = true, desc = "Recent Files Picker" }
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
vim.api.nvim_set_keymap('n', 'd', '"_d', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>cf", "<Esc><cmd>FormatFunction<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>p', '"bp', { noremap = true, silent = true, desc = "Select current Buffer" })
vim.api.nvim_set_keymap('n', '<leader>jr', '<cmd>FindReplace<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>D", ":cd %:h<CR>",
  { noremap = true, silent = true, desc = "CD into parent dir of current buffer" })
