return {
	{
		"williamboman/mason.nvim",
		opts = {
			servers = {
				["json-lsp"] = {
					settings = {
						json = {
							format = {
								enable = true,
							},
							validate = { enable = true },
						},
					},
				},
			},
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"json",
				"jsonc",
				"json5",
			},
		},
	},
}
