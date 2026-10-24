-- Load necessary modules
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

-- Setup Mason
mason.setup({
    ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "pyright"
    }
})

-- Setup Mason-LSPConfig
-- mason_lspconfig.setup()

-- Common on_attach function for LSP
local on_attach = function(client, bufnr)
    local opts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
end

-- Common capabilities for LSP
local capabilities = require("blink.cmp").get_lsp_capabilities()



-- set up LSP signs
for type, icon in pairs({
	Error = "E",
	Warn = "W",
	Hint = "H",
	Info = "I",
}) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- Setup LSP servers
vim.lsp.config("lua_ls", {
    on_attach = on_attach,
    capabilities = capabilities
})

vim.lsp.config("pyright", {
    on_attach = on_attach,
    capabilities = capabilities
})

vim.lsp.config("arduino_language_server", {
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = {
        "arduino-language-server",
        "-cli-config", "C:/Users/PC/Desktop/PROJET_ELEC/sketch.yaml",
        "-fqbn", "arduino:sam:arduino_due_x_dbg",
    },
})

vim.lsp.config("clangd", {
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = { "clangd", "--background-index", "--clang-tidy" },
})

vim.lsp.config("asm_lsp", {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "asm", "s" },
})

vim.lsp.config("cssls", {
    on_attach = on_attach,
    capabilities = capabilities
})

vim.lsp.config("tailwindcss", {
    on_attach = on_attach,
    capabilities = capabilities
})

vim.lsp.config("terraform", {
    on_attach = on_attach,
    capabilities = capabilities
})


