vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.o.laststatus = 3
local opt = vim.opt -- for conciseness
opt.cmdheight = 0
opt.showmode = false
opt.undofile = true
opt.undodir = vim.env.HOME .. "/.vim/.undo/"
opt.undolevels = 10000
-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
-- opt.splitright = true -- split vertical window to the right
-- opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "php", "phtml" },
	callback = function()
		vim.opt_local.tabstop = 4
		vim.opt_local.shiftwidth = 4
		vim.opt_local.softtabstop = 4
		vim.opt_local.expandtab = false
	end,
})

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd("BufLeave", {
	desc = "Autosave when switching buffer",
	pattern = "*",
	command = "silent! :w",
})

vim.api.nvim_create_autocmd("VimLeavePre", {
	desc = "Autosave when leaving",
	pattern = "*",
	command = "silent! wa",
})

vim.api.nvim_create_autocmd("FocusLost", {
	desc = "Autosave when tab to window",
	pattern = "*",
	command = "silent! wa",
})

vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
	pattern = "*",
	command = "checktime",
})
