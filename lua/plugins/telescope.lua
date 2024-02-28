return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    { 
        "nvim-telescope/telescope-live-grep-args.nvim" ,
        -- This will not install any breaking changes.
        -- For major updates, this must be adjusted manually.
        version = "^1.0.0",
    },
  },
     keys = {
      {
        "<leader>s0",
        function()
        require("telescope").extensions.live_grep_args.live_grep_args({
          additional_args = function(args)
            return vim.list_extend(args, { "--hidden", "--no-ignore" })
          end,
      })
      end,
        desc = "Live Grep (root/dynamic)",
      },
    },
  extensions = {
    live_grep_args = {
          auto_quoting = false
    },
  }
}
