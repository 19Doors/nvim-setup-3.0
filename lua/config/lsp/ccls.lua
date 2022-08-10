-- Language server for C/C++/Objective-C.

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
require'lspconfig'.ccls.setup{
  capabilities = capabilities
}
