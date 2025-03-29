return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "williamboman/mason.nvim" },
		{ "williamboman/mason-lspconfig.nvim" },
		{ "WhoIsSethDaniel/mason-tool-installer.nvim" },
		{ "saghen/blink.cmp" },
	},
	config = function(_, opts)
		local servers = opts.servers or {}
		local ensure_installed = vim.tbl_keys(servers)

		require("mason").setup()
		require("mason-tool-installer").setup({ ensure_installed = ensure_installed })
		require("mason-lspconfig").setup({
			handlers = {
				function(server_name)
					local server = servers[server_name] or {}
					server.capabilities = require("blink.cmp").get_lsp_capabilities(server.capabilities)
					require("lspconfig")[server_name].setup(server)
				end,
			},
		})

		-- vim.api.nvim_create_autocmd("LspAttach", {
		-- 	group = vim.api.nvim_create_augroup("kin-lsp-attach", { clear = true }),
		-- 	callback = function(event)
		-- 		-- vim.keymap.set(
		-- 		-- 	"n",
		-- 		-- 	"<leader>d",
		-- 		-- 	"<cmd>FzfLua lsp_document_diagnostics<cr>",
		-- 		-- 	{ desc = "[D]ocument [D]iagnostics" }
		-- 		-- )
		-- 		-- vim.keymap.set(
		-- 		-- 	"n",
		-- 		-- 	"<leader>D",
		-- 		-- 	"<cmd>FzfLua lsp_workspace_diagnostics<cr>",
		-- 		-- 	{ desc = "[W]orkspace [D]iagnostics" }
		-- 		-- )
		-- 		-- vim.keymap.set("n", "<leader>s", "<cmd>FzfLua lsp_document_symbols<cr>", { desc = "[S]ymbols" })
		-- 		-- vim.keymap.set(
		-- 		-- 	"n",
		-- 		-- 	"<leader>S",
		-- 		-- 	"<cmd>FzfLua lsp_live_workspace_symbols<cr>",
		-- 		-- 	{ desc = "[W]orkspace [S]ymbols" }
		-- 		-- )
		-- 		--
		-- 		-- vim.keymap.set(
		-- 		-- 	"n",
		-- 		-- 	"gi",
		-- 		-- 	"<cmd>FzfLua lsp_implementations jump_to_single_result=true<cr>",
		-- 		-- 	{ desc = "[G]oto [I]mplementations" }
		-- 		-- )
		--
		-- 		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
		-- 	end,
		-- })
	end,
}
