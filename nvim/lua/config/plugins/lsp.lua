-- lsp
local on_attach = function(client, bufnr)
    vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
    vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>")
    vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
    vim.keymap.set("n", "<C-j>", "<cmd>Telescope lsp_document_symbols<CR>")
    vim.keymap.set("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")

    vim.keymap.set("n", "<leader>D", "<cmd>Telescope lsp_type_definitions<CR>")
    vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
    vim.keymap.set("n", '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
    vim.keymap.set("n", '<leader>sd', '<cmd>lua vim.diagnostic.open_float()<CR>')
    vim.keymap.set("n", "gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
    vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>")
end

local capabilities = require("blink.cmp").get_lsp_capabilities()

local configs = {
    lua_ls = {
        capabilities = capabilities,
        on_attach = on_attach,
        settings = {
            Lua = {
                diagnostics = {
                    globals = { 'vim', '_G' },
                },
                workspace = {
                    library = vim.api.nvim_get_runtime_file("", true),
                }
            }
        }
    },
    rust_analyzer = {
        capabilities = capabilities,
        on_attach = on_attach,
    },
    ts_ls = {
        capabilities = capabilities,
        on_attach = on_attach,
    }
}

return {
    "neovim/nvim-lspconfig",
    dependencies = { "saghen/blink.cmp" },
    config = function()
        local servers = {}
        for server, config in pairs(configs) do
            vim.lsp.config(server, config)
            table.insert(servers, server)
        end

        -- auto format
        vim.api.nvim_create_autocmd("LspAttach", {
            callback = function(args)
                local client = vim.lsp.get_client_by_id(args.data.client_id)
                if not client then return end

                ---@diagnostic disable-next-line: missing-parameter, param-type-mismatch
                if client.supports_method("textDocument/formatting") then
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        buffer = args.buf,
                        callback = function()
                            vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
                        end
                    })
                end
            end
        })

        vim.lsp.enable(servers)
        vim.diagnostic.config { virtual_text = true, virtual_lines = false }
    end
}
