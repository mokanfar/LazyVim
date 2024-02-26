return {
  "karb94/neoscroll.nvim",
  config = function()
    require("neoscroll").setup({
      pre_hook = function(info)
        if info == "cursorline" then
          vim.wo.cursorline = false
        end
      end,
      post_hook = function(info)
        if info == "cursorline" then
          vim.wo.cursorline = true
        end
      end,
    })
    local t = {}
    t["1"] = { "scroll", { "-vim.wo.scroll", "true", "350", "sine", [['cursorline']] } }
    t["2"] = { "scroll", { "vim.wo.scroll", "true", "350", "sine", [['cursorline']] } }
    require("neoscroll.config").set_mappings(t)
  end,
}
