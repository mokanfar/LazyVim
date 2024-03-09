return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            clojure = { "joker" },
            php = { "pretty-php" },
            javascript = { "prettier", "eslint", "prettierd" },
            typescript = { "prettier" },
            javascriptreact = { "prettier" },
            typescriptreact = { "prettier" },
            svelte = { "prettier" },
            css = { "prettier" },
            less = { "prettier" },
            html = { "prettier" },
            json = { "prettier", "prettierd", "eslint" },
            yaml = { "prettier" },
            markdown = { "markdownlint" },
            graphql = { "prettier" },
            lua = { "lua_format" },
        },
    },
}
