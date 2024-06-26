-- Load lspconfig
local lspconfig = require('lspconfig')

-- Configure language servers
lspconfig.clangd.setup({})
lspconfig.html.setup({})
lspconfig.cssls.setup({})
lspconfig.tsserver.setup({})
lspconfig.pyright.setup({})
lspconfig.gopls.setup({})
lspconfig.bashls.setup({})
lspconfig.vimls.setup({
  cmd = { "vim-language-server", "--stdio" }
})
