return {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"php-cs-fixer",
				"twig-cs-fixer",
				"djlint",
			},
			servers = {
				intelephense = {
					settings = {
						intelephense = {
						},
					},
				},

				["twiggy-language-server"] = {
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
