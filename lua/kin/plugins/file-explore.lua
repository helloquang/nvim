return {
	{ "echasnovski/mini.icons", config = true, lazy = true },
	{
		"stevearc/oil.nvim",
		dependencies = { "echasnovski/mini.icons" },
		event = "VeryLazy",
		config = true,
		keys = {
			{
				"<leader>e",
				"<CMD>Oil<CR>",
				desc = "File explore",
			},
		},
	},
}
