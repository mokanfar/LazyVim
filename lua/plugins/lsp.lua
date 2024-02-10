return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      --      autoformat = false,
      servers = {
        intelephense = {
          settings = {
            intelephense = {
              format = {
                braces = "k&r",
              },
            },
          },
        },
        ruff_lsp = {
          autostart = false,
        },
      },
    },
  },
}
