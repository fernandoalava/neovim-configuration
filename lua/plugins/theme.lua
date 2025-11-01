return {
  "vague-theme/vague.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("vague").setup({
      -- Optional configuration
      transparent = false, -- Set to true for transparent background
      style = {
        -- Customize text formatting
        boolean = "none",
        number = "none",
        float = "none",
        error = "none",
        comments = "italic",
        conditionals = "none",
        functions = "none",
        headings = "bold",
        operators = "none",
        strings = "none",
        variables = "none",

        -- Keywords
        keywords = "none",
        keyword_return = "none",
        keywords_loop = "none",
        keywords_label = "none",
        keywords_exception = "none",

        -- Built-in
        builtin_constants = "none",
        builtin_functions = "none",
        builtin_types = "none",
        builtin_variables = "none",
      },
    })
    vim.cmd.colorscheme("vague")
  end,
}
