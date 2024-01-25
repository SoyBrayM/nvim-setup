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
            lspconfig.clangd.setup({ capabilities = capabilities })

            vim.api.nvim_create_autocmd('LspAttach', {
                callback = function(args)
                    local bufferPath = vim.api.nvim_buf_get_name(args.buf)
                    local bufferDir
                    for dir in vim.fs.parents(bufferPath) do
                        bufferDir = dir
                        break
                    end
                    vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, { buffer = args.buf, noremap = true })
                    vim.keymap.set("n", "<leader>fc", vim.lsp.buf.format, { buffer = args.buf, noremap = true })
                    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = args.buf, noremap = true })
                    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { buffer = args.buf, noremap = true })
                    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = args.buf, noremap = true })
                    vim.keymap.set("n", "<leader>d[", vim.diagnostic.goto_prev, { buffer = args.buf, noremap = true })
                    vim.keymap.set("n", "<leader>d]", vim.diagnostic.goto_next, { buffer = args.buf, noremap = true })
                    vim.keymap.set({ "n", "v" }, "<F5>",
                        ":wa<CR>:cd " ..
                        bufferDir ..
                        "<CR>:!clang -g -O0 -o " .. bufferDir .. "/out " .. bufferPath .. " ; " ..
                        bufferDir .. "/out<CR>", { buffer = args.buf, noremap = true })
                end,
            })
        end
    }
}
