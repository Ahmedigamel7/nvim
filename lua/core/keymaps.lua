vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader><CR>", ":so ~/.config/nvim/init.lua<CR>", { noremap = true })

vim.keymap.set("n", "<C-j>", ":cnext<CR>", { noremap = true })
vim.keymap.set("n", "<C-k>", ":cprev<CR>", { noremap = true })
vim.keymap.set("n", "<C-p>", ":GFiles<CR>", { noremap = true })
vim.keymap.set("n", "<leader>pf", ":Files<CR>", { noremap = true })
vim.keymap.set("n", "<leader>rg", ":Rg", { noremap = true })
vim.keymap.set("n", "<leader>p", "o<esc>p", { noremap = true })
vim.keymap.set("i", "<C-z>", "<esc>")


vim.keymap.set("v", "<leader>p", '"_dP', { noremap = true })
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true })
vim.keymap.set("n", "<leader>y", '"+y', { noremap = true })
vim.keymap.set("n", "<leader>Y", 'gg"+yG', { noremap = true })


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true })


vim.keymap.set("n", "<A-l>", ":tabnext<CR>", { noremap = true })
vim.keymap.set("n", "<A-h>", ":tabprevious<CR>", { noremap = true })
vim.keymap.set("n", "<S-A-l>", ":tabnext #<CR>", { noremap = true })
vim.keymap.set("n", "<S-A-n>", ":tabnew<CR>", { noremap = true })
vim.keymap.set("n", "<S-A-w>", ":tabclose<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "<leader>v", ":vsplit<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>t', ':lua require"nvim-tree.api".node.open.tab()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-n>', ':NvimTreeFindFile<CR>')
