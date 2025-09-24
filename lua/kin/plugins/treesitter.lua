return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPost", "BufNewFile" },
	dependencies = {},
	build = ":TSUpdateSync",
	opts = {
		ensure_installed = {
			"bash",
			"c",
			"html",
			"markdown",
			"vim",
			"vimdoc",
		},
		sync_install = true,
		auto_install = false,
		highlight = {
			enable = true,
		},
		indent = { enable = true },
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
