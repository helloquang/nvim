vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- exit insert mode

keymap.set("i", "jk", "<esc>")
-- clear search highlights
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

keymap.set({ "i", "x", "n", "s" }, "<leader>w", "<cmd>w<cr><esc>", { desc = "Save file" })

--
keymap.set({ "n", "x", "o" }, "H", "^")
keymap.set({ "n", "x", "o" }, "L", "$")

--

-- Move to window using the <ctrl> hjkl keys
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window" })

-- diagnostic
keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
