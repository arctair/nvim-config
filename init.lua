require("arctair")
require("mason").setup()
require("mason-lspconfig").setup()
require("rust-tools").setup()

vim.wo.number = true
vim.wo.relativenumber = true

vim.g.clipboard = {
	name = 'WslClipboard',
	copy = {
		['+'] = 'clip.exe',
		['*'] = 'clip.exe',
	},
	paste = {
		['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
		['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
	},
	cache_enabled = 0,
}
