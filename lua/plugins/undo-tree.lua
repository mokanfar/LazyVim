return {
    "debugloop/telescope-undo.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
    },
    config = function()
        require("telescope").load_extension("undo")
        vim.keymap.set("n", "<leader>U", "<cmd>Telescope undo<cr>")
    end,
}
