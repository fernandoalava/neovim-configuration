return {
	--[["rebelot/kanagawa.nvim",
	name = "kanagawa",
	config = function()
		require("kanagawa").load("wave")
	end,
  ]]
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		vim.cmd("colorscheme rose-pine")
	end,
}
