return {
    {
        "telescope.nvim",
        dependencies = {
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make",
            },
            "nvim-telescope/telescope-live-grep-args.nvim",
            "nvim-lua/plenary.nvim",
        },

        keys = {
            {
                "<leader>:",
                function()
                    require("telescope.builtin").commands()
                end,
                desc = "All Commands",
            },
            {
                "<leader>;",
                function()
                    require("telescope.builtin").command_history()
                end,
                desc = "Command history",
            },
            {
                "<leader>jp",
                function()
                    require("telescope.builtin").find_files({
                        cwd = require("lazy.core.config").options.root,
                    })
                end,
                desc = "Find Plugin File",
            },
            {
                "<leader>je",
                function()
                    local builtin = require("telescope.builtin")
                    builtin.diagnostics()
                end,
                desc = "Lists Diagnostics for all open buffers or a specific buffer",
            },
            {
                "<leader>js",
                function()
                    local builtin = require("telescope.builtin")
                    builtin.treesitter()
                end,
                desc = "Lists Function names, variables, from Treesitter",
            },
            { "<leader>jk", [[<cmd>Telescope keymaps<cr>]],   desc = "Telescope maps" },
            { "<leader>jf", [[<cmd>Telescope filetypes<cr>]], desc = "Telescope filetypes" },
            { "<leader>jt", [[<cmd>Telescope<cr>]],           desc = "Telescope" },
        },

        config = function()
            local actions = require("telescope.actions")
            require("telescope").setup({
                defaults = {

                    mappings = {
                        i = {
                            -- https://github.com/nvim-telescope/telescope.nvim/blob/master/lua/telescope/mappings.lua
                            ["<esc>"] = actions.close,
                            ["<C-n>"] = actions.results_scrolling_up,
                            ["<C-p>"] = actions.results_scrolling_down,
                            ["<C-x>"] = actions.send_selected_to_qflist + actions.open_qflist,
                            ["<C-e>"] = actions.preview_scrolling_up,
                            ["<C-d>"] = actions.preview_scrolling_down,
                        }
                    },

                    vimgrep_arguments = {
                        "rg",
                        "--color=never",
                        "--no-heading",
                        "--with-filename",
                        "--line-number",
                        "--column",
                        "--smart-case",
                        "--trim",
                    },
                    selection_caret = "  ",
                    entry_prefix = "  ",
                    initial_mode = "insert",
                    selection_strategy = "reset",
                    sorting_strategy = "descending",
                    layout_strategy = "horizontal",
                    layout_config = {
                        horizontal = { prompt_position = "bottom", preview_width = 0.55, results_width = 0.8 },
                        vertical = { mirror = false },
                        width = 0.87,
                        height = 0.80,
                        preview_cutoff = 120,
                    },
                    file_sorter = require("telescope.sorters").get_fuzzy_file,
                    file_ignore_patterns = { "node_modules", ".git", "composer", "*test*" },
                    generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
                    path_display = function(opts, path)
                        local tail = require("telescope.utils").path_tail(path)
                        return string.format("%s (%s)", tail, path), { { { 1, #tail }, "Constant" } }
                    end,
                    winblend = 0,
                    border = {},
                    color_devicons = true,
                    use_less = true,
                    set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
                    file_previewer = require("telescope.previewers").vim_buffer_cat.new,
                    grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
                    qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
                    -- Developer configurations: Not meant for general override
                    buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
                },

                pickers = {
                    find_files = {
                        find_command = { "fd", "--no-ignore", "--type", "f", "--strip-cwd-prefix", "--no-ignore-vcs" }
                    },
                    live_grep = {
                        additional_args = function(opts)
                            return { "--max-count=1" }
                        end
                    },
                },

                extensions = {
                    fzf = { fuzzy = true, override_generic_sorter = true, override_file_sorter = true, case_mode = "smart_case" },
                    live_grep_args = {
                        auto_quoting = true,
                        -- additional_args = {}
                    },
                },
            })
        end,
    },
}
