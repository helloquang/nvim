return {
	"mfussenegger/nvim-lint",
	opts = {
		events = { "BufEnter" },
		linters_by_ft = {},
		linters = {},
	},
	event = { "BufReadPost" },
	config = function(_, opts)
		local lint = require("lint")
		lint.linters_by_ft = opts.linters_by_ft
		vim.api.nvim_create_autocmd(opts.events, {
			group = vim.api.nvim_create_augroup("nvim-lint", { clear = true }),
			callback = function() end,
		})

		vim.keymap.set("n", "<leader>cl", function()
			lint.try_lint()
		end, { desc = "Lint" })
	end,
}
