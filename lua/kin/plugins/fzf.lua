return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = function()
			local fzf = require("fzf-lua")
			local config = fzf.config
			config.defaults.keymap.builtin["<c-d>"] = "preview-page-down"
			config.defaults.keymap.builtin["<c-u>"] = "preview-page-up"
		end,
		config = function(_, opts)
			-- Quickfix

			vim.keymap.set("n", "<leader>f", "<cmd>FzfLua files<cr>", { desc = "[F]iles" })
			vim.keymap.set("n", "<leader>/", "<cmd>FzfLua live_grep<cr>", { desc = "[G]rep" })
			vim.keymap.set("n", "<leader><space>", "<cmd>FzfLua resume<cr>", { desc = "[R]esume" })
			vim.keymap.set("n", "<leader>r", "<cmd>FzfLua oldfiles cwd_only=true<cr>", { desc = "[R]ecent files" })

			vim.keymap.set("n", "<leader>s", "<cmd>FzfLua lsp_document_symbols<cr>", { desc = "[S]ymbols" })
			vim.keymap.set(
				"n",
				"<leader>S",
				"<cmd>FzfLua lsp_live_workspace_symbols<cr>",
				{ desc = "[W]orkspace [S]ymbols" }
			)

			vim.keymap.set("n", "<leader>q", "<cmd>FzfLua quickfix<cr>", { desc = "[Q]ickfix list" })
			vim.keymap.set("n", "<leader>l", "<cmd>FzfLua loclist<cr>", { desc = "[L]ocation list" })

			vim.keymap.set(
				"n",
				"<leader>d",
				"<cmd>FzfLua lsp_document_diagnostics<cr>",
				{ desc = "[D]ocument [D]iagnostics" }
			)
			vim.keymap.set(
				"n",
				"<leader>D",
				"<cmd>FzfLua lsp_workspace_diagnostics<cr>",
				{ desc = "[W]orkspace [D]iagnostics" }
			)
      -- stylua: ignore
			vim.keymap.set("n", "gd", "<cmd>FzfLua lsp_definitions jump_to_single_result=true<cr>", { desc = "[G]oto [D]efinition" })
			vim.keymap.set("n", "gD", "<cmd>FzfLua lsp_declarations<cr>", { desc = "[G]oto [D]eclaration" })

      -- stylua: ignore
			vim.keymap.set("n", "gr", "<cmd>FzfLua lsp_references jump_to_single_result=true<cr>", { desc = "[G]oto [R]eferences" })

      -- stylua: ignore
			vim.keymap.set("n", "gi", "<cmd>FzfLua lsp_implementations jump_to_single_result=true<cr>", { desc = "[G]oto [I]mplementations" })
		end,
	},
}
