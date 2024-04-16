return {
  "L3MON4D3/LuaSnip",
  dependencies = {
    {
      "rafamadriz/friendly-snippets",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
      end,
    },
  },
  opts = function()
    local types = require "luasnip.util.types"
    return {
      history = true,
      delete_check_events = "TextChanged",

      -- Display a cursor-like placeholder in unvisited nodes of the snippet.
      ext_opts = {
        [types.insertNode] = {
          unvisited = {
            virt_text = { { "|", "Conceal" } },
            -- virt_text_pos = "inline",
          },
        },
        [types.exitNode] = {
          unvisited = {
            virt_text = { { "|", "Conceal" } },
            -- virt_text_pos = "inline",
          },
        },
      },
    }
  end,
  -- stylua: ignore
  keys = {
    {
      "<C-d>",
      function()
        return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<C-d>"
      end,
      expr = true,
      remap = true,
      silent = true,
      mode = "i",
    },
    { "<C-d>", function() require("luasnip").jump(1) end,  mode = "s" },
    { "<C-e>", function() require("luasnip").jump(-1) end, mode = { "i", "s" } },
  }
}
