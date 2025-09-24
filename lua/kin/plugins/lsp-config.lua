return {
	"williamboman/mason.nvim",
	dependencies = {},
	event = "VeryLazy",
	config = function(_, opts)
		local servers = opts.servers or {}
		local ensure_installed = vim.tbl_keys(servers)

		vim.api.nvim_create_user_command("MasonInstallAll", function()
			local packages = table.concat(ensure_installed, " ")
			vim.cmd("MasonInstall " .. packages)
		end, {})

		for server_name, server in pairs(servers) do
			vim.lsp.config(server_name, server)
			vim.lsp.enable(server_name)
		end
		require("mason").setup()
	end,
}
