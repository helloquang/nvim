return {
	"stevearc/conform.nvim",
	event = { "BufReadPost", "BufNewFile" },
	keys = {
		{
			"<leader>cf",
			function()
				require("conform").format({ async = true, lsp_fallback = false })
			end,
			mode = "",
			desc = "[F]ormat buffer",
		},
	},
	opts = {
		notify_on_error = true,
		-- format_on_save = function(bufnr)
		-- 	local disable_filetypes = { c = true, cpp = true, php = true }
		-- 	if disable_filetypes[vim.bo[bufnr].filetype] then
		-- 		return
		-- 	end
		-- 	return {
		-- 		async = true,
		-- 		timeout_ms = 3000,
		-- 		lsp_fallback = false,
		-- 	}
		-- end,
	},
}
