return {
	"folke/trouble.nvim",
	cmd = "Trouble",
	opts = {
		use_diagnostic_signs = true,
	},
	config = function(_, opts)
		require("trouble").setup(opts)
	end,
}
