require("telescope").setup({ file_ignore_patterns = { "node%_modules/.*" } ,
  hidden = true
})
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<Space><Space>", builtin.oldfiles, {})
vim.keymap.set("n", "<Space>fg", builtin.live_grep, {})
vim.keymap.set("n", "<Space>fh", builtin.help_tags, {})
