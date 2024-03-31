return {
  {
    'mokanfar/slimux.nvim',
    event = "VeryLazy",
    config = function()
      local slimux = require('slimux')
      slimux.setup({
        target_socket = slimux.get_tmux_socket(),
        target_pane = string.format('%s.2', slimux.get_tmux_window()),
      })
      vim.keymap.set('n', '<leader>r', ':lua require("slimux").capture_current_line_text()<CR>',
        { desc = 'Send current line where cursor is on to tmux window 2' })
    end
  }
}
