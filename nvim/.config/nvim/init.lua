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

-- Lua
vim.lsp.config('lua_ls', {
	filetypes = { 'lua' },
	root_markers = { '.git', '.luarc.json' },
})

-- C/C++
vim.lsp.config('clangd', {
	filetypes = { 'c', 'cpp' },
	root_markers = { '.git', 'compile_commands.json', 'CMakeLists.txt', 'Makefile' },
})

-- Python
vim.lsp.config('pyright', {
	filetypes = { 'python' },
	root_markers = { '.git', 'requirements.txt' },
})

-- JavaScript / TypeScript
vim.lsp.config('ts_ls', {
	filetypes = { 'javascript', 'typescript', 'javascriptreact', 'typescriptreact' },
	root_markers = { '.git', 'package.json' },
})

-- HTML
vim.lsp.config('html', {
	filetypes = { 'html' },
	root_markers = { '.git', 'package.json' },
})

-- CSS
vim.lsp.config('cssls', {
	filetypes = { 'css', 'scss' },
	root_markers = { '.git', 'package.json' },
})

vim.lsp.enable({ 'lua_ls', 'clangd', 'pyright', 'ts_ls', 'html', 'cssls' })
