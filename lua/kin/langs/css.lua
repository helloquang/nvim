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
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				css = { "prettierd" },
				less = { "prettierd" },
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
