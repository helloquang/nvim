return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
		config = function(_, opts)
			local builtin = require("fzf-lua")
			vim.keymap.set("n", "<leader>sf", builtin.files, { desc = "[S]earch [F]iles" })

			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("mochkini-lsp-attach", { clear = true }),
				callback = function(event)
					local map = function(keys, func, desc)
						vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
					end
				end,
			})
		end,
	},
}
