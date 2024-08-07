vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("v", "<M-j>", ":m'>+<CR>gv=gv")
vim.keymap.set("v", "<M-k>", ":m-2<CR>gv=gv")

vim.keymap.set("n", "<leader>e", ":Ex<CR>")

