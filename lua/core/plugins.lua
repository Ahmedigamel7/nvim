require("lazy").setup({
	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	{ "L3MON4D3/LuaSnip" },
	{
		"junegunn/fzf",
		build = function()
			vim.fn["fzf#install"]()
		end,
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
	},
	"junegunn/fzf.vim",
	"mfussenegger/nvim-dap",
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {} },
	"sbdchd/neoformat",
	"nvim-tree/nvim-tree.lua",
	"nvim-tree/nvim-web-devicons",
	{
		"williamboman/mason.nvim",
		"illiamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	--"ellisonleao/gruvbox.nvim",
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	"dracula/vim",
	"nvim-lualine/lualine.nvim",
	"nvim-treesitter/nvim-treesitter",
	"lewis6991/gitsigns.nvim",
	--"preservim/vimux",
	--"christoomey/vim-tmux-navigator",
	"tpope/vim-fugitive",
	--"tpope/vim-surround",
	--"stevearc/oil.nvim",
	-- completion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",
	"github/copilot.vim",
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	-- {
	--   "vinnymeller/swagger-preview.nvim",
	--   run = "npm install -g swagger-ui-watcher",
	-- },
	-- {
	--   "iamcco/markdown-preview.nvim",
	--  run = "cd app && npm install",
	-- }
})
