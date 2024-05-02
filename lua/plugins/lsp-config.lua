return {
    {
        "hrsh7th/cmp-nvim-lsp",
    },
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            auto_install = true
        }
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({ capabilities = capabilities })
            lspconfig.jsonls.setup({ capabilities = capabilities })
            lspconfig.html.setup({ capabilities = capabilities })
            lspconfig.pyright.setup({ capabilities = capabilities })

            lspconfig.clangd.setup({
                filetypes = { "c" },
                capabilities = capabilities,
                on_attach = function(client, bufnr)
                end,
                cmd = { "clangd" }
            })

            vim.api.nvim_create_autocmd('LspAttach', {
                callback = function(args)
                    vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, { buffer = args.buf, noremap = true })
                    vim.keymap.set("n", "<leader>fc", vim.lsp.buf.format, { buffer = args.buf, noremap = true })
                    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = args.buf, noremap = true })
                    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { buffer = args.buf, noremap = true })
                    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = args.buf, noremap = true })
                    vim.keymap.set("n", "d[", vim.diagnostic.goto_prev, { buffer = args.buf, noremap = true })
                    vim.keymap.set("n", "d]", vim.diagnostic.goto_next, { buffer = args.buf, noremap = true })
                end,
            })
        end
    }
}
