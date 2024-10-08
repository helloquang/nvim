return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				cssls = {
					settings = {},
				},
			},
		},
	},
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				css = { { "prettierd", "prettier" } },
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
