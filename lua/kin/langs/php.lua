return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				intelephense = {
					settings = {
						intelephense = {
							stubs = {
								"wordpress",
							},
							files = {
								maxSize = 5000000, -- Increase max file size if needed
							},
						},
					},
				},
				["php-cs-fixer"] = {
					settings = {},
				},
			},
		},
	},

	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				php = { "php_cs_fixer" },
			},
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"php",
			},
		},
	},
}
