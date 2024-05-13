require'nvim-treesitter.configs'.setup {
	ensure_installed = {"typescript", "lua", "go", "javascript", "rust"},

	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
}
