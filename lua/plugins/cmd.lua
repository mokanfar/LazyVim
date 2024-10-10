vim.api.nvim_create_user_command(
  'LiveGrepVendorMagento',
  function()
    require("telescope.builtin").live_grep({
      additional_args = { "-j1", "--no-ignore", "-g", "!*test*", "-g", "!*Test*", "--max-count=1" },
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
      else
        local escaped_search_pattern = search_pattern:gsub('/', '\\/')
        vim.cmd(':%s/' .. escaped_search_pattern .. '//g')
      end
    end
  end,
  {}
)
vim.api.nvim_create_user_command(
  'FormatFunction',
  function()
    vim.lsp.buf.format({
      async = true,
      range = {
        ["start"] = vim.api.nvim_buf_get_mark(0, "<"),
        ["end"] = vim.api.nvim_buf_get_mark(0, ">"),
      },
    })
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
vim.api.nvim_create_user_command(
  'EmulateSearchForward',
  function()
    local pattern = vim.fn.input('Search pattern: ')
    vim.fn.setreg('/', pattern)
    vim.cmd('normal! n')
  end,
  {}
)


local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')

local function emulate_search_with_prompt(prompt_bufnr)
  local current_picker = action_state.get_current_picker(prompt_bufnr)
  local prompt_input = current_picker:_get_prompt()

  actions.close(prompt_bufnr)

  if not prompt_input or prompt_input == "" then
    return
  end
  vim.fn.setreg('/', prompt_input)
  vim.cmd('normal! n')
end

vim.api.nvim_create_user_command('FuzzyFindCurrentBuffer', function()
  require('telescope.builtin').current_buffer_fuzzy_find({
    attach_mappings = function(_, map)
      map('i', '<CR>', emulate_search_with_prompt)
      return true
    end
  })
end, {})
return {}
