return {
	"stevearc/dressing.nvim",
	opts = {
		input = {
			border = "rounded",
			relative = "cursor",
			prefer_width = 0.4,
			win_options = {
				winblend = 0,
				winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder",
			},
		},
		select = {
			backend = { "telescope", "builtin" },
			telescope = require("telescope.themes").get_dropdown({
				layout_config = { width = 0.5, height = 0.4 },
				borderchars = {
					prompt = { "─", "│", " ", "│", "╭", "╮", "│", "│" },
					results = { "─", "│", "─", "│", "├", "┤", "╯", "╰" },
					preview = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
				},
			}),
		},
	},
	config = function(_, opts)
		require("dressing").setup(opts)
	end,
}
