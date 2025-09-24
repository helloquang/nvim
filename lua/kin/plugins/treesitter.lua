return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	event = "VeryLazy",
	dependencies = {
		{ "windwp/nvim-ts-autotag" },
	},
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
		auto_install = false,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = { "ruby" },
		},
		indent = { enable = true, disable = { "ruby" } },
		autotag = {
			enable = true,
		},
	},
	config = function(_, opts)
		require("nvim-treesitter.install").prefer_git = true
		require("nvim-treesitter.configs").setup(opts)
	end,
}
