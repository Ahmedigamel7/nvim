-- init.lua or a dedicated configuration file for plugins
local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		-- JavaScript/TypeScript
		null_ls.builtins.formatting.prettier.with({
			filetypes = { "javascript", "typescript", "css", "html", "json", "yaml", "markdown" },
		}),
		-- Python
		null_ls.builtins.formatting.black.with({
			filetypes = { "python" },
		}),
		-- Lua
		null_ls.builtins.formatting.stylua.with({
			filetypes = { "lua" },
		}),
		-- C/C++
		null_ls.builtins.formatting.clang_format.with({
			filetypes = { "c", "cpp", "objc", "objcpp" },
		}),
		--shell
		null_ls.builtins.formatting.shfmt.with({
			filetypes = { "sh", "bash" },
		}),
		-- Go
		null_ls.builtins.formatting.gofmt.with({
			filetypes = { "go" },
		}),
		-- Rust
		null_ls.builtins.formatting.rustfmt.with({
			filetypes = { "rust" },
		}),
		-- Add other formatters as needed
	},
	-- You can add more configurations here if needed
})

-- Set a keybinding for formatting the current buffer
vim.api.nvim_set_keymap(
	"n",
	"<leader>f",
	"<cmd>lua vim.lsp.buf.format({ async = true })<CR>",
	{ noremap = true, silent = true }
)
