-- Set keybinding for formatting the current buffer
vim.api.nvim_set_keymap('n', '<leader>f', ':Neoformat<CR>', { noremap = true, silent = true })

-- Optional: Customize `neoformat` settings
vim.g.neoformat_enabled_javascript = { 'prettier' }
vim.g.neoformat_enabled_typescript = { 'prettier' }
vim.g.neoformat_enabled_lua = { 'stylua' }
vim.g.neoformat_enabled_python = { 'black' }
vim.g.neoformat_enabled_cpp = { 'clangformat' }
-- Add more customizations as needed

