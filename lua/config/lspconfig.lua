require("mason").setup()
require("mason-lspconfig").setup()

lspconfig = require("lspconfig")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

lspconfig.lua_ls.setup({ capabilities = capabilities })

lspconfig.clangd.setup({
    filetypes = { "c", "h", "cpp", "hpp" },
    capabilities = capabilities,
    cmd = {"clangd", "--clang-tidy", "--enable-config"}
})

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, { buffer = args.buf, noremap = true })
        vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { buffer = args.buf, noremap = true })
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = args.buf, noremap = true })
        vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { buffer = args.buf, noremap = true })
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = args.buf, noremap = true })
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { buffer = args.buf, noremap = true })
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { buffer = args.buf, noremap = true })
    end,
})
