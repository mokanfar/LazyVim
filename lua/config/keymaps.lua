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

vim.api.nvim_set_keymap("i", "<C-l>", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "/", ":FzfLua blines<CR>", { noremap = true, silent = true })
-- fzf todo
-- asdf() find dir + find:FzfLua jumps<CR> txt + dasdf o what cmd + shift + f
