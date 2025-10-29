return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- Lua formatter
        null_ls.builtins.formatting.stylua,

        -- JavaScript/TypeScript/React formatter (prettierd is faster than prettier)
        null_ls.builtins.formatting.prettierd.with({
          filetypes = {
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "css",
            "scss",
            "html",
            "json",
            "yaml",
            "markdown",
          },
        }),

        -- Go formatters
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.goimports,

        -- Go linter
        null_ls.builtins.diagnostics.golangci_lint,

        -- ESLint diagnostics for JavaScript/TypeScript/React
        require("none-ls.diagnostics.eslint"),

        -- Spell check
        null_ls.builtins.completion.spell,
      },
    })

    -- Format on save
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format buffer" })
  end,
}
