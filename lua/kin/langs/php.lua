return {
	{
		"williamboman/mason-lspconfig.nvim",
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

				["twig-cs-fixer"] = {
					settings = {},
				},

				["twiggy-language-server"] = {
					settings = {},
				},

				["djlint"] = {
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
				twig = { "twig-cs-fixer", "djlint" },
			},
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"php",
				"twig",
			},
		},
	},
}
