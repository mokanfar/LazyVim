-- Basic Neovim settings
-- Set line numbers
vim.o.number = true

-- Enable relative line numbers
vim.o.relativenumber = true

-- Set tab size
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true -- Use spaces instead of tabs

-- Set the clipboard to use the system clipboard
vim.o.clipboard = "unnamedplus"

-- Enable mouse support
vim.o.mouse = "a"

-- Set the file encoding to UTF-8
vim.o.encoding = "UTF-8"

-- Turn off swap files
vim.o.swapfile = false

-- Highlight the line the cursor is on
vim.o.cursorline = true

-- Reduce the time it takes for Vim to respond to a key sequence
vim.o.timeoutlen = 1000

-- Key mappings
-- Map <Space> as the leader key
vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<Space>', '', {})

-- Example mapping: open the init.lua file with <leader>ev
vim.api.nvim_set_keymap('n', '<leader>ev', ':edit test-file-edit.txt<CR>', { noremap = true })

-- Plugins (assuming you're using a plugin manager like packer.nvim)
-- This section is commented out because it requires additional setup
--[[
require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
end)
]]

-- For more complex setups, you would add configurations for plugins, autocommands, custom functions, etc., here.
