local lsp = require("lsp-zero")

lsp.preset("recommended")
require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = {
		"tsserver",
		"clangd",
		"html",
		"pyright",
		"vimls",
		"tailwindcss",
		"lua_ls",
		--		"eslint",
		"dockerls",
		"docker_compose_language_service",
		"cssls",
		"cssmodules_ls",
		"css_variables",
		"bashls",
		--    'postgres_lsp'
	},
	handlers = {
		function(server_name)
			require("lspconfig")[server_name].setup({})
		end,
	},
})
require("lspconfig").clangd.setup({
	cmd = { "clangd", "--background-index", "--compile-commands-dir=/path/to/your/project" },
	filetypes = { "c", "cpp", "objc", "objcpp" },
	root_dir = require("lspconfig").util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
	settings = {
		clangd = {
			compilationDatabasePath = "/path/to/your/project",
			fallbackFlags = { "-std=c++23", "-I/usr/include/c++/11" },
		},
	},
})
local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
	["<C-b>"] = cmp.mapping.scroll_docs(-4),
	["<C-f>"] = cmp.mapping.scroll_docs(4),
	["<C-Space>"] = cmp.mapping.complete(),
	["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
	["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
	["<C-e>"] = cmp.mapping.abort(),
	["<CR>"] = cmp.mapping.confirm({ select = true }),
})

lsp.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp.default_keymaps({ buffer = bufnr })
end)
