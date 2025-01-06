return {
	{
		"mikavilpas/yazi.nvim",
		event = "VeryLazy",
		keys = {
			{
				"<leader>E",
				"<cmd>Yazi<cr>",
				desc = "Explore current file",
			},
			{
				"<leader>e",
				"<cmd>Yazi cwd<cr>",
				desc = "Explore working directory",
			},
		},
		opts = {
			-- if you want to open yazi instead of netrw, see below for more info
			open_for_directories = false,
			floating_window_scaling_factor = 1,
			keymaps = {
				show_help = "<f1>",
			},
		},
	},
}
