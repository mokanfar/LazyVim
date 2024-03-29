return {
  "mg979/vim-visual-multi",
  branch = "master",
  init = function()
    vim.g.VM_maps = {
      ["Select All"]  = 'æ',
      ["Select Cursor Down"] = '˚',
      ["Add Cursor At Pos"] = 'ç',
      ["Select Cursor Up"]   = 'ˆ',
    }
  end,
}
