vim.api.nvim_create_user_command(
  'LiveGrepVendorMagento',
  function()
    require("telescope.builtin").live_grep({
      additional_args = { "-j1", "-g", "!*test*", "-g", "!*Test*", "--max-count=1" },
      search_dirs = { "./vendor/magento" }
    })
  end,
  {}
)
vim.api.nvim_create_user_command(
  'FindReplace',
  function()
    local search_pattern = vim.fn.input('Enter search pattern: ')
    if search_pattern ~= "" then
      local substitution_pattern = vim.fn.input('Enter substitution pattern: ')
      if substitution_pattern ~= "" then
        local escaped_search_pattern = search_pattern:gsub('/', '\\/')
        local escaped_substitution_pattern = substitution_pattern:gsub('/', '\\/')
        vim.cmd(':%s/' .. escaped_search_pattern .. '/' .. escaped_substitution_pattern .. '/g')
      end
    end
  end,
  {}
)
vim.api.nvim_create_user_command(
  'ReplaceLinesWithPattern',
  function()
    local pattern = vim.fn.input('Replace newlines with: ')
    if pattern ~= "" then
      local escaped_pattern = pattern:gsub('([&\\%$%-%.%*%[%]%(%)]+)', '\\%1')
      vim.cmd(string.format("%%s/\\n/%s/g", escaped_pattern))
    end
  end,
  {}
)
vim.api.nvim_create_user_command(
  'ReplacePatternWithNewLine',
  function()
    local pattern = vim.fn.input('Enter Pattern: ')
    if pattern ~= "" then
      local escaped_pattern = pattern:gsub('/', '\\/')
      vim.cmd(':%s/' .. escaped_pattern .. '/\\r/g')
    end
  end,
  {}
)
return {}
