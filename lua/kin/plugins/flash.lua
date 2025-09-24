return {
	"folke/flash.nvim",
	event = { "BufReadPost" },
	---@type Flash.Config
  -- stylua: ignore
  opts = {},
  keys = {
    { "<leader>s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "<leader>S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
  },
}
