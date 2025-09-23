return {
	"stevearc/conform.nvim",
	event = { "VeryLazy" },
	keys = {
		{
			"<leader>cf",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "[F]ormat buffer",
		},
	},
	opts = {
		notify_on_error = true,
		format_on_save = function(bufnr)
			local disable_filetypes = { c = true, cpp = true, php = true }
			if disable_filetypes[vim.bo[bufnr].filetype] then
				return
			end
			return {
				timeout_ms = 3000,
				lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
			}
		end,
	},
	config = function(_, opts)
		require("conform").setup(opts)
	end,
}
