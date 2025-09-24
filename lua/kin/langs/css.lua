return {
	{
		"williamboman/mason.nvim",
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
