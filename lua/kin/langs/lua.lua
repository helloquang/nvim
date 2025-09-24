return {
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			servers = {
				lua_ls = {
					settings = {},
				},
				stylua = {
					settings = {},
				},
			},
		},
	},

	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
			},
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"lua",
				"luadoc",
			},
		},
	},
}
