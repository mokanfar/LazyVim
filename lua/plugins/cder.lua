return {
  "Zane-/cder.nvim",
  config = function()
    require("telescope").load_extension("cder")
    require("telescope").setup({
      extensions = {
        cder = {
          dir_command = { "fd", "--no-ignore", "--type=d", "." },
          previewer_command = "exa "
            .. "-a "
            .. "--color=always "
            .. "-T "
            .. "--level=3 "
            .. "--icons "
            .. "--git-ignore "
            .. "--long "
            .. "--no-permissions "
            .. "--no-user "
            .. "--no-filesize "
            .. "--git "
            .. "--ignore-glob=.git",
        },
      },
    })
    require("telescope").load_extension("cder")
  end,
}
