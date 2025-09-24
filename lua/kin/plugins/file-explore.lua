return {
	{
		"stevearc/oil.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		event = "VeryLazy",
		opts = {},
		keys = {
			{
				"<leader>e",
				"<CMD>Oil<CR>",
				desc = "File explore",
			},
		},
	},
}
