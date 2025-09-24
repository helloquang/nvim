return {
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			servers = {
				cssls = {
					settings = {},
				},
			},
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"css",
			},
		},
	},
}
