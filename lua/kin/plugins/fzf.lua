return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		event = "VeryLazy",
		opts = function()
			local fzf = require("fzf-lua")
			local config = fzf.config
			config.defaults.keymap.builtin["<c-d>"] = "preview-page-down"
			config.defaults.keymap.builtin["<c-u>"] = "preview-page-up"
		end,
		keys = {
			{
				"<leader>ff",
				function()
					require("fzf-lua").files()
				end,
				mode = { "n" },
				desc = "Files",
			},
			{
				"<leader>fb",
				function()
					require("fzf-lua").buffers()
				end,
				mode = { "n" },
				desc = "Buffers",
			},
			{
				"<leader>f<leader>",
				function()
					require("fzf-lua").resume()
				end,
				mode = { "n" },
				desc = "Resume",
			},
			{
				"<leader>f/",
				function()
					require("fzf-lua").live_grep()
				end,
				mode = { "n" },
				desc = "Live grep",
			},
			{
				"<leader>fds",
				function()
					require("fzf-lua").lsp_document_symbols()
				end,
				mode = { "n" },
				desc = "Document symbols",
			},
			{
				"gr",
				function()
					require("fzf-lua").lsp_references()
				end,
				mode = { "n" },
				desc = "References",
			},

			{
				"gi",
				function()
					require("fzf-lua").lsp_incoming_calls()
				end,
				mode = { "n" },
				desc = "Incoming calls",
			},

			{
				"go",
				function()
					require("fzf-lua").lsp_outgoing_calls()
				end,
				mode = { "n" },
				desc = "Outgoing calls",
			},
			{
				"gd",
				function()
					require("fzf-lua").lsp_definitions()
				end,
				mode = { "n" },
				desc = "Goto definition",
			},

			{
				"gD",
				function()
					require("fzf-lua").lsp_declarations()
				end,
				mode = { "n" },
				desc = "Goto declaration",
			},
		},
		config = function(_, opts)
			-- Quickfix

			-- vim.keymap.set("n", "<leader>f", "<cmd>FzfLua files<cr>", { desc = "[F]iles" })
			-- vim.keymap.set("n", "<leader>/", "<cmd>FzfLua live_grep<cr>", { desc = "[G]rep" })
			-- vim.keymap.set("n", "<leader><space>", "<cmd>FzfLua resume<cr>", { desc = "[R]esume" })
			-- vim.keymap.set("n", "<leader>r", "<cmd>FzfLua oldfiles cwd_only=true<cr>", { desc = "[R]ecent files" })
			--
			-- vim.keymap.set("n", "<leader>q", "<cmd>FzfLua quickfix<cr>", { desc = "[Q]ickfix list" })
			-- vim.keymap.set("n", "<leader>l", "<cmd>FzfLua loclist<cr>", { desc = "[L]ocation list" })
		end,
	},
}
