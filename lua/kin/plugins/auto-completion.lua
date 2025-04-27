return { -- Autocompletion
	{
		"saghen/blink.cmp",
		event = "InsertEnter",
		version = "*",
		dependencies = {
			"L3MON4D3/LuaSnip",
		},
		opts = {
			snippets = { preset = "luasnip" },
			sources = {
				default = { "lsp", "buffer", "snippets", "path" },
			},
		},
	},
}
