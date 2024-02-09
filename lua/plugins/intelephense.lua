return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- @type lspconfig.options
      servers = {
        intelephense = {
          filetypes = { "php", "phtml" },
          settings = {
            intelephense = {
              filetypes = { "php", "phtml" },
              files = {
                associations = { "*.php", "*.phtml" },
                maxSize = 5000000,
              },
            },
          },
        },
      },
    },
  },
}
