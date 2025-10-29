return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "html",
        "css",
        "go",
        "gomod",
        "gosum",
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
      -- Additional React-specific settings
      autotag = {
        enable = true,
      },
    })
  end,
}
