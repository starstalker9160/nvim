return {
	"williamboman/mason.nvim",
	lazy = false,
	opts = {
		ensure_installed = {
			"clangd",
			"bash-language-server",
			"pyright"
		}
	}
}
