return {
	"danymat/neogen",
	event = { "BufReadPost" },
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
