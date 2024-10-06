vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("v", "<M-j>", ":m'>+<CR>gv=gv")
vim.keymap.set("v", "<M-k>", ":m-2<CR>gv=gv")

vim.keymap.set("n", "<leader>e", ":Ex<CR>")

