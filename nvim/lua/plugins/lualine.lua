return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			theme = "catppuccin",
			globalstatus = true,
			icons_enabled = true,
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
			disabled_filetypes = { "neo-tree", "lazy" },
		},
		sections = {
			lualine_a = { { "mode", icon = "" } },
			lualine_b = { "branch", "diff" },
			lualine_c = { { "filename", path = 1 } }, -- 0=just filename, 1=relative, 2=absolute
			lualine_x = { "encoding", "fileformat", "filetype" },
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = { "filename" },
			lualine_x = { "location" },
			lualine_y = {},
			lualine_z = {},
		},
		tabline = {},
		extensions = { "neo-tree", "lazy", "trouble" },
	},
	config = function(_, opts)
		require("lualine").setup(opts)
	end,
}
