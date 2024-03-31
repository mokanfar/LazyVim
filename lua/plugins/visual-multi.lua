return {
  "mg979/vim-visual-multi",
  event = "VeryLazy",
  branch = "master",
  init = function()
    vim.g.VM_maps = {
      ["Select All"]         = '<leader>ma',
      ["Add Cursor At Pos"]  = 'ç',
      ["Visual All"]         = '<leader>mv',
      ["Select Cursor Down"] = '˚',
      ["Select Cursor Up"]   = 'ˆ',
    }
  end,
}
