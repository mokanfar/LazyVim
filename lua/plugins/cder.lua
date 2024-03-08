return {
  "Zane-/cder.nvim",
  config = function()
    require("telescope").load_extension("cder")
    require("telescope").setup({
      extensions = {
        cder = {
          dir_command = { "fd", "--type=d", "." },
        },
      },
    })

    require("telescope").load_extension("cder")
  end,
}
