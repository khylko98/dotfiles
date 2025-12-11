return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			javascript = { "prettier" },
			typescript = { "prettier" },
		},
		format_on_save = false,
	},
	config = function(_, opts)
		require("conform").setup(opts)
	end,
}
