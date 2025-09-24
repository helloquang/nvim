return {
	{
		"williamboman/mason.nvim",
		opts = {
      ensure_installed = {
        "prettierd",
      },
			servers = {
				vtsls = {
					settings = {},
				},
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
