return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = function()
		local startify = require("alpha.themes.startify")
		startify.file_icons.provider = "devicons"
		return startify
	end,
	config = function(_, dashboard)
		require("alpha").setup(dashboard.opts)
	end,
}
