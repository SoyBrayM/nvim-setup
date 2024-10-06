local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>hl", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<M-a>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<M-s>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<M-d>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<M-f>", function() harpoon:list():select(4) end)
vim.keymap.set("n", "<M-j>", function() harpoon:list():select(5) end)
vim.keymap.set("n", "<M-k>", function() harpoon:list():select(6) end)
vim.keymap.set("n", "<M-l>", function() harpoon:list():select(7) end)
vim.keymap.set("n", "<M-;>", function() harpoon:list():select(8) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end)
vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end)
