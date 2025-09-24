return {
	"folke/lazydev.nvim",
	ft = "lua", -- only load on lua files
  event = { "BufReadPost", "BufNewFile" },
	opts = {},
}
