return {
	"danymat/neogen",
	event = "VeryLazy",
	config = true,
	keys = {
		{
			"<leader>gn",
			function()
				require("fzf-lua").files()
			end,
			mode = { "n" },
			desc = "Generate documentation",
		},
	},
}
