return {
	"danymat/neogen",
  -- event = { "BufReadPost", "BufNewFile" },
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
