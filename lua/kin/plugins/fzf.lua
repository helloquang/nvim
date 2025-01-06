return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
		config = function(_, opts)
			vim.keymap.set("n", "<leader>sf", "<cmd>FzfLua files<cr>", { desc = "[S]earch [F]iles" })
			vim.keymap.set("n", "<leader>sg", "<cmd>FzfLua live_grep<cr>", { desc = "[S]earch [G]rep" })
			vim.keymap.set("n", "<leader>sr", "<cmd>FzfLua resume<cr>", { desc = "[S]earch [R]esume" })

			vim.keymap.set(
				"n",
				"<leader>sS",
				"<cmd>FzfLua lsp_live_workspace_symbols<cr>",
				{ desc = "[S]earch [S]ymbols" }
			)

			vim.keymap.set("n", "<leader>sq", "<cmd>FzfLua quickfix<cr>", { desc = "[S]earch [Q]ickfix list" })
			vim.keymap.set("n", "<leader>sl", "<cmd>FzfLua loclist<cr>", { desc = "[S]earch [L]ocation list" })

			vim.keymap.set(
				"n",
				"<leader>sd",
				"<cmd>FzfLua lsp_document_diagnostics<cr>",
				{ desc = "[D]ocument [D]iagnostics" }
			)
			vim.keymap.set(
				"n",
				"<leader>sD",
				"<cmd>FzfLua lsp_workspace_diagnostics<cr>",
				{ desc = "[W]orkspace [D]iagnostics" }
			)
      -- stylua: ignore
			vim.keymap.set("n", "<leader>gd", "<cmd>FzfLua lsp_definitions jump_to_single_result=true<cr>", { desc = "[G]oto [D]efinition" })

      -- stylua: ignore
			vim.keymap.set("n", "<leader>gr", "<cmd>FzfLua lsp_references jump_to_single_result=true<cr>", { desc = "[G]oto [R]eferences" })

      -- stylua: ignore
			vim.keymap.set("n", "<leader>gi", "<cmd>FzfLua lsp_implementations jump_to_single_result=true<cr>", { desc = "[G]oto [I]mplementations" })
		end,
	},
}
