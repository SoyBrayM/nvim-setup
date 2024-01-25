vim.g.mapleader = " "

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("v", "∆", ":m'>+<CR>gv=gv")
vim.keymap.set("v", "˚", ":m-2<CR>gv=gv")

vim.keymap.set("n", "<leader>e", "<CMD>NvimTreeToggle<CR>")
