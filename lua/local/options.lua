-- Disable mouse ¡VERY IMPORTANT!
vim.opt.mouse = ""

-- Let vim know that there is a nerdfont
vim.g.have_nerd_font = true

-- Line number options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 12

-- Indentation options
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Disable the backup and swap file
vim.opt.swapfile = false
vim.opt.backup = false

-- Search options
vim.opt.incsearch = true
vim.opt.hlsearch = false

vim.opt.termguicolors = true

-- Others
vim.opt.updatetime = 50
vim.opt.wrap = false -- Disable line wrap
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Autocommands
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, { pattern={"*.h", "*.c"}, command="setlocal filetype=c"})
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, { pattern={"*.hpp", "*.cpp"}, command="setlocal filetype=cpp"})
