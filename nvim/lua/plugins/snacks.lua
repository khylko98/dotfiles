return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		indent = {
			scope = {
				enabled = true,
			},
		},
	},
	config = function(_, opts)
		require("snacks").setup(opts)
	end,
}
