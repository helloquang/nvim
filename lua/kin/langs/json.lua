return {
	{
		"williamboman/mason.nvim",
		opts = {
			servers = {
				jsonls = {
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
