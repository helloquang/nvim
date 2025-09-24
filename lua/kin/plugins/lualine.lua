return {
	"nvim-lualine/lualine.nvim",
	event = { "BufReadPost", "BufNewFile" },
	-- event = "VeryLazy",
	opts = function()
		local theme = require("lualine.themes.sonokai")
		local opts = {
			options = {
				theme = theme,
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff" },
				lualine_c = { { "filename", path = 1 } },
				lualine_x = { "diagnostics" },
				lualine_y = { "filetype", "encoding" },
				lualine_z = { "location" },
			},
		}
		return opts
	end,
}
