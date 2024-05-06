return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
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
}
