return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		preset = "modern",
		delay = 200,
		win = {
			border = "rounded",
			padding = { 1, 2 },
			title = true,
			zindex = 1000,
			no_overlap = true,
		},
		layout = {
			align = "center",
			height = { min = 4, max = 25 },
			width = { min = 20, max = 60 },
			spacing = 6,
		},
		icons = {
			breadcrumb = "»",
			separator = "➜",
			group = "+",
		},
		show_help = true,
		show_keys = true,
	},
	config = function(_, opts)
		require("which-key").setup(opts)
	end,
}
