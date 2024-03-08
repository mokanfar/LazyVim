return {
  {
    "princejoogie/dir-telescope.nvim",
    -- telescope.nvim is a required dependency
    requires = { "nvim-telescope/telescope.nvim" },
    keys = {
      {
        "<leader>fd",
        function()
          require("telescope").extensions.dir.live_grep({ no_ignore = true, hidden = true })
        end,
        desc = "Live Grep inside specific dir",
      },
    },
    config = function()
      require("dir-telescope").setup({
        -- these are the default options set
        hidden = false,
        no_ignore = false,
        show_preview = true,
      })
    end,
  },
}
