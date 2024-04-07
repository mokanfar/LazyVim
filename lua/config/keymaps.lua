vim.api.nvim_set_keymap("n", "<leader>n", ":enew <CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w>", ":bd<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-l>", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
  "n",
  "<leader>2",
  "<cmd>lua require('arrow.persist').previous()<CR>",
  { noremap = true, silent = true }
)
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
  "<leader>t",
  "<cmd>lua require('arrow.persist').toggle()<CR><cmd>echo 'File Tagged'<CR>",
  { desc = "ToggLe Arrow Tag" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>fg",
  "<cmd>lua require('telescope.builtin').live_grep()<CR>",
  { desc = "Live Grep" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>fG",
  "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args({additional_args = { \"-uu\"} })<CR>",
  { desc = "Live Grep incl non-project" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>fF",
  '<cmd>lua require("telescope.builtin").find_files({find_command = { "fd", "--type", "f", "--strip-cwd-prefix", "--follow" ,"--no-ignore-vcs" }})<CR>',
  { desc = "Find files incl non-project" }
)

function FormatFunction()
  vim.lsp.buf.format({
    async = true,
    range = {
      ["start"] = vim.api.nvim_buf_get_mark(0, "<"),
      ["end"] = vim.api.nvim_buf_get_mark(0, ">"),
    },
  })
end

vim.api.nvim_set_keymap("v", "<leader>cf", "<Esc><cmd>lua FormatFunction()<CR>", { noremap = true })
