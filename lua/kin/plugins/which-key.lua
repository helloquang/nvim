return {
	"folke/which-key.nvim",
	event = "VeryLazy", -- Sets the loading event to 'VimEnter'
	config = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
}
