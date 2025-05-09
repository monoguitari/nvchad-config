-- require("nvchad.configs.lspconfig").defaults()

-- local servers = { "html", "cssls", "tsserver" }
-- vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
--
-- below is what i did based on vid and gpt:
--
local base = require("nvchad.configs.lspconfig") -- or "nvchad.configs.lspconfig"
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

local servers = { "html", "cssls", "ts_ls", "tailwindcss", "eslint" }

for _, server in ipairs(servers) do
  lspconfig[server].setup({
    on_attach = on_attach,
    capabilities = capabilities,
  })
end

