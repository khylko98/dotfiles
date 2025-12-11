return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			mode = "buffers",
			numbers = "none",
			show_buffer_icons = false,
			show_buffer_close_icons = false,
			show_close_icon = false,
			separator_style = { "", "" },
			indicator = { style = "none" },
			diagnostics = "nvim_lsp",
			diagnostics_indicator = function()
				return ""
			end,
		},
		highlights = {
			buffer_selected = {
				fg = "#89dceb",
			},
		},
	},
	config = function(_, opts)
		require("bufferline").setup(opts)
	end,
}
