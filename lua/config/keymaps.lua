-- fzf main menu ctrl+\
vim.api.nvim_set_keymap("n", "<C-\\>", ":FzfLua<CR>", { noremap = true, silent = true })
-- fzf recent files
-- vim.api.nvim_set_keymap("n", "<C-o>", ":FzfLua oldfiles<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-r>", ":FzfLua command_history<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-S-r>", ":FzfLua oldfiles<CR>", { noremap = true, silent = true })
-- fzf like ctrl+p sublime
vim.api.nvim_set_keymap("n", "<C-p>", ":FzfLua buffers<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", ":FzfLua jumps<CR>", { noremap = true, silent = true })
--ctrl z undo
vim.api.nvim_set_keymap("n", "<C-y>", ":redo<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-n>", ":enew<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-w>", ":bd<CR>", { noremap = true, silent = true })

-- To unmap a key in normal mode
vim.api.nvim_del_keymap('n', '[')
vim.api.nvim_del_keymap('n', ']')
vim.api.nvim_set_keymap('n', '[', ':bprev<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', ']', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>fg', "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", { desc = "Live Grep"})
vim.api.nvim_set_keymap("i", "<C-l>", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-f>", ":FzfLua blines<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-f>", "<Esc>:FzfLua blines<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "H", "<cmd>lua require('arrow.persist').previous()<CR>", {desc = "Pevious Arrow Tag"})
vim.api.nvim_set_keymap("n", "L", "<cmd>lua require('arrow.persist').next()<CR>", {desc = "Next Arrow Tag"})
vim.api.nvim_set_keymap("n", "<C-t>", "<cmd>lua require('arrow.persist').toggle()<CR>", {desc = "Toggle Tag Curr Buff"})
