return { {
  'pbogut/magento2-ls',
  event = "VeryLazy",
  dependencies = {
    "neovim/nvim-lspconfig",
  },
  run = "require'magento2_ls'.build()",
  config = "require'magento2_ls'.setup()"
} }
