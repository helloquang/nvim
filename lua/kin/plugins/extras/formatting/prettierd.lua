return {
	"neovim/nvim-lspconfig",
	opts = {
		servers = {
			prettierd = {
				settings = {},
			},
		},
	},

	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				javascript = { "prettierd" },
				typescript = { "prettierd" },
				typescriptreact = { "prettierd" },
			},
		},
	},
}
