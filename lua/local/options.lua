-- Disable mouse
vim.opt.mouse = ""

-- Activate line number and relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Set Tabs to 4 spaces
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Activate smart indentation
vim.opt.smartindent = true

-- Disable line wrap
vim.opt.wrap = false

-- Disable the backup and swap file
vim.opt.swapfile = false
vim.opt.backup = false

-- Enable the undo file and directory
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Disable the search highlighting
vim.opt.hlsearch = false

-- Enable the incremental search
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- 12 line padding
vim.opt.scrolloff = 12

-- Others
vim.opt.updatetime = 50


vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, { pattern="*.h", command="setlocal filetype=c"})
