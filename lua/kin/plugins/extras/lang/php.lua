return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				intelephense = {
					settings = {},
				},
				["php-cs-fixer"] = {
					settings = {},
				},
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
