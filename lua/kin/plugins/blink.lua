return {
	{
		"saghen/blink.cmp",
		event = "InsertEnter",
		version = "*",
		dependencies = {
			"L3MON4D3/LuaSnip",
			-- "Kaiser-Yang/blink-cmp-dictionary",
			"nvim-lua/plenary.nvim",
		},
		keys = {
			-- {
			-- 	"<C-d>",
			-- 	function()
			-- 		require("blink.cmp").show({ providers = { "dictionary" } })
			-- 	end,
			-- 	mode = "i",
			-- 	desc = "Dictionary",
			-- },
		},
		opts = {
			snippets = { preset = "luasnip" },
			sources = {
				default = { "lsp", "path", "buffer", "snippets" },
				-- providers = {
				-- 	dictionary = {
				-- 		module = "blink-cmp-dictionary",
				-- 		max_items = 5,
				-- 		min_keyword_length = 5,
				-- 		opts = {
				-- 			-- dictionary_files = { vim.fn.stdpath("config") .. "/data/dictionary/words_alpha.txt" },
				-- 			dictionary_files = nil,
				-- 			dictionary_directories = nil,
				-- 			get_command = "rg",
				-- 			get_command_args = function(prefix, _)
				-- 				local dictionary_file1 = vim.fn.stdpath("config") .. "/data/dictionary/words_alpha.txt"
				-- 				return {
				-- 					"--color=never",
				-- 					"--no-line-number",
				-- 					"--no-messages",
				-- 					"--no-filename",
				-- 					"--ignore-case",
				-- 					"--",
				-- 					prefix,
				-- 					dictionary_file1,
				-- 				}
				-- 			end,
				-- 		},
				-- 	},
				-- },
			},
			completion = {
				menu = {
					draw = {
						treesitter = { "lsp" },
					},
				},
				documentation = {
					auto_show = true,
					auto_show_delay_ms = 500,
				},
			},
		},
	},
}
