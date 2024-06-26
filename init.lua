vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.neoformat_try_node_exe = 1

-- init.lua for Lua configuration
vim.g.neoformat_enabled_javascript = { "jsbeautify" }

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("core.keymaps")
require("core.options")
require("core.plugins")
require("core.plugin_config")
