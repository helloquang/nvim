local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	change_detection = {
		notify = false,
	},
	spec = {
		{ import = "kin.plugins" },
		{ import = "kin.plugins.extras.lang.lua" },
		{ import = "kin.plugins.extras.lang.css" },
		{ import = "kin.plugins.extras.lang.tailwindcss" },
		{ import = "kin.plugins.extras.lang.typescript" },
		{ import = "kin.plugins.extras.lang.php" },
		{ import = "kin.plugins.extras.formatting.stylua" },
		{ import = "kin.plugins.extras.formatting.prettierd" },
	},
})
