return {
-- An example of how to integrate vim plugins using lazyvim
    {
    "kana/vim-arpeggio",
        event = { "InsertEnter" },
        fn = { "arpeggio#map" },
        config = function()
            local escape = "<Esc>:nohlsearch<CR>"
            local search = "<cmd> :lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>"
            vim.fn["arpeggio#map"]("i", "s", 0, "jk", escape)
            vim.fn["arpeggio#map"]("n", "s", 0, "gh", search) -- example of custom func
            vim.fn["arpeggio#map"]("x", "s", 0, "jk", escape)
            vim.fn["arpeggio#map"]("c", "s", 0, "jk", escape)
        end,
    }
}
