return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"leoluz/nvim-dap-go",
		},
		config = function()
			require("dap-go").setup()
			vim.keymap.set("n", "<leader>dt", function()
				require("dap-go").debug_test()
			end, { desc = "Debug Go Test" })

			vim.keymap.set("n", "<leader>db", function()
				require("dap").toggle_breakpoint()
			end, { desc = "Toggle Breakpoint" })

			vim.keymap.set("n", "<leader>dc", function()
				require("dap").continue()
			end, { desc = "Start/Continue Debug" })

			vim.keymap.set("n", "<leader>do", function()
				require("dap").step_over()
			end, { desc = "Step Over" })

			vim.keymap.set("n", "<leader>di", function()
				require("dap").step_into()
			end, { desc = "Step Into" })

			vim.keymap.set("n", "<leader>du", function()
				require("dap").step_out()
			end, { desc = "Step Out" })
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			dapui.setup()

			-- Open/close automatically
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end
			vim.keymap.set("n", "<leader>dui", function()
				require("dapui").toggle()
			end, { desc = "Toggle DAP UI" })
		end,
	},
}
