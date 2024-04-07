vim.api.nvim_create_user_command(
  'LiveGrepVendorMagento',
  function()
    require("telescope.builtin").live_grep({
      additional_args = { "-j1", "-g", "!*test*", "-g", "!*Test*", "--max-count=1" },
      search_dirs = { "./vendor/magento" }
    })
  end,
  {}
)
return {}
