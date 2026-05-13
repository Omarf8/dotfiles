local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local opts = {}
require("vim-options")
require("lazy").setup("plugins")

vim.lsp.config('lua_ls', {
	cmd = { 'lua-language-server' },
	root_markers = { '.git', '.luarc.json' },
	filetypes = { 'lua' },
})

vim.lsp.config('clangd', {
	filetypes = { 'c', 'cpp' },
	root_markers = { '.git', 'compile_commands.json', 'CMakeLists.txt', 'Makefile' }
})

vim.lsp.enable({ 'lua_ls', 'clangd' })
