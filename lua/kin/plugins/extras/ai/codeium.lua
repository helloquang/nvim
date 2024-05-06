return {
	{
		"Exafunction/codeium.nvim",
		dependencies = {
			"hrsh7th/nvim-cmp",
		},
		cmd = "Codeium",
		opts = {},
	},

	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"Exafunction/codeium.nvim",
		},
		opts = function(_, opts)
			table.insert(opts.sources, {
				name = "codeium",
			})
		end,
	},
}
