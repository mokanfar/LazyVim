vim.api.nvim_create_user_command(
  'TestGrep',
  function()
    require("telescope.builtin").live_grep({
      additional_args = { "-j1", "--no-ignore", "-g", "!*test*", "-g", "!*Test*", "--max-count=1" },
      search_dirs = { "./vendor/Test", "./vendor/magento" }
    })
  end,
  {}
)

vim.api.nvim_create_user_command(
  'TestFiles',
  function()
    require 'telescope.builtin'.find_files({
      find_command = { 'rg', '--files', '--hidden', '--no-ignore', '-g', '!.git', '-g', 'vendor/Test**'
      }
    })
  end,
  {}
)

vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>TestGrep<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>TestFiles<CR>", { noremap = true, silent = true })
