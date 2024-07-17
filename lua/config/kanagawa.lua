require("kanagawa").setup({
    transparent = true
})

vim.cmd("colorscheme kanagawa")
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#7E9CD8', bold=true })
vim.api.nvim_set_hl(0, 'LineNr', { fg='#A3D4D5', bold=true })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#957FB8', bold=true })
