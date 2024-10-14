return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				ts_ls = {
					settings = {},
				},
			},
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"javascript",
				"typescript",
			},
		},
	},
}
