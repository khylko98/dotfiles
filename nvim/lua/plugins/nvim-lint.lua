return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters_by_ft = {
			typescript = { "eslint" },
			typescriptreact = { "eslint" },
			javascript = { "eslint" },
			javascriptreact = { "eslint" },
		}
	end,
}
