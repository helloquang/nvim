return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		{ "williamboman/mason.nvim" },
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
					vim.lsp.config(server_name, server)
					vim.lsp.enable(server_name)
				end,
			},
		})
	end,
}
