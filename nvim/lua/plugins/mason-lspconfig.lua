return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = { "mason-org/mason.nvim" },
	opts = {
		ensure_installed = {
			"stylua",
		},
		automatic_installation = true,
	},
	config = function(_, opts)
		require("mason-lspconfig").setup(opts)
	end,
}
