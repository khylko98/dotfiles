return {
	"nvim-telescope/telescope.nvim",
	tag = "v0.1.9",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		defaults = {
			prompt_prefix = " ",
			selection_caret = " ",
			path_display = { "smart" },
			sorting_strategy = "ascending",
			layout_strategy = "flex",
			layout_config = {
				prompt_position = "top",
			},
		},
		pickers = {
			find_files = {
				hidden = true,
				no_ignore = true,
			},
		},
	},
	config = function(_, opts)
		require("telescope").setup(opts)
	end,
}
