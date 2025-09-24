return {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"stylua"	
			},
			servers = {
				["lua-language-server"] = {
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
