return {
	{
		"williamboman/mason.nvim",
		opts = {
			servers = {
				["css-lsp"] = {
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
