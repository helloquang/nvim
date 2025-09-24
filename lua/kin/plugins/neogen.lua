return {
	"danymat/neogen",
	event = { "BufReadPost" },
  opts = {},
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
