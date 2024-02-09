-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function OpenFileWithPattern(pattern)
  -- Ensure pattern is not nil or empty
  if pattern == nil or pattern == "" then
    print("No pattern provided.")
    return
  end

  -- Construct the command with the supplied pattern
  local rg_cmd = "rg --files . | grep -E '" .. pattern .. "'"
  local fzf_cmd = "fzf | cut -d':' -f1"

  -- Execute the command and capture the output (the selected file path)
  local handle = io.popen(rg_cmd .. " | " .. fzf_cmd)
  local result = handle:read("*a")
  handle:close()

  -- Trim whitespace from the result to get the clean file path
  local file_path = result:gsub("%s+$", "")

  -- Open the file in Neovim if a file path was captured
  if file_path ~= "" then
    vim.cmd("edit " .. file_path)
  end
end

-- Bind the function to a command in Neovim that accepts an argument
vim.api.nvim_create_user_command("OpenFileWithPattern", function(opts)
  OpenFileWithPattern(opts.args)
end, { nargs = 1 })
local function fuzzy_find_lines_in_directory()
  -- Prompt for directory search string
  local dir_search_string = vim.fn.input("Enter directory search string: ")
  if dir_search_string == "" then
    print("No directory selected.")
    return
  end

  -- Use 'find' to select a directory via fzf
  local find_command = "find . -type d | fzf --query=" .. dir_search_string
  local directory = vim.fn.system(find_command)
  if directory == "" then
    print("No directory selected.")
    return
  end

  -- Trim newline from directory path
  directory = directory:gsub("%s+", "")

  -- Prompt for content search string
  local content_search_string = vim.fn.input("Enter content search string: ")
  if content_search_string == "" then
    print("No search string provided.")
    return
  end

  -- Use 'rg' to search in the directory and pipe to fzf for selection
  local rg_command = string.format("rg --no-heading --line-number '%s' '%s'", content_search_string, directory)
  local fzf_command =
    "fzf --delimiter ':' --preview \"bat --style=numbers --color=always --line-range=:500 {1} --highlight-line {2}\" --preview-window=up:70%:wrap"
  local selection = vim.fn.system(rg_command .. " | " .. fzf_command)

  -- Parse the selection
  if not selection or selection == "" then
    print("No match selected.")
    return
  end

  -- Extract file path and line number from selection
  local file, line = selection:match("([^:]+):(%d+):")
  if file and line then
    -- Open file at specified line
    vim.cmd(string.format("edit +%s %s", line, file))
  else
    print("Failed to parse selection.")
  end
end

-- Expose the function to Vim command
vim.api.nvim_create_user_command("FuzzyFindLines", fuzzy_find_lines_in_directory, {})
