local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local dictionary_file1 = vim.fn.expand("/data/dictionary/words_alpha.txt")

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

require("kin.core")

require("lazy").setup({
	change_detection = {
		notify = false,
	},
	spec = {
		{ import = "kin.plugins" },
		{ import = "kin.langs" },
	},
})
