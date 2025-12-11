vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to below window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to above window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle left reveal<CR>", { desc = "Toggle Neo-tree" })

vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>x", "<cmd>BufferLinePickClose<CR>", { desc = "Close selected buffer" })
vim.keymap.set("n", "<C-x>", "<cmd>BufferLineCloseOthers<CR>", { desc = "Close other buffers" })

vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fn", "<cmd>Telescope help_tags<CR>", { desc = "Telescope help tags" })

vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float, { desc = "Show Diagnostics" })

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local bufnr = args.buf

		local opts = function(desc)
			return { buffer = bufnr, desc = desc }
		end

		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts("Go to Definition"))
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts("Hover Documentation"))
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts("Go to Implementation"))
		vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts("Signature Help"))
		vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts("Type Definition"))
		vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, opts("Rename Symbol"))
		vim.keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, opts("Code Action"))
		vim.keymap.set("n", "<leader>lf", function()
			vim.lsp.buf.format({ async = true })
		end, opts("Format Document"))
	end,
})

vim.keymap.set("n", "<leader>f", function()
	require("conform").format({ async = true, lsp_format = "fallback" })
end, { desc = "Format buffer" })

vim.keymap.set("n", "<leader>qq", "<cmd>Trouble diagnostics toggle focus=true<cr>", { desc = "Diagnostics (Trouble)" })
vim.keymap.set(
	"n",
	"<leader>qb",
	"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
	{ desc = "Buffer Diagnostics (Trouble)" }
)
vim.keymap.set("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)" })
vim.keymap.set(
	"n",
	"<leader>cl",
	"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
	{ desc = "LSP Definitions / References / ... (Trouble)" }
)
vim.keymap.set("n", "<leader>ql", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })
vim.keymap.set("n", "<leader>qf", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })

vim.keymap.set("n", "<leader>?", function()
	require("which-key").show({ global = false })
end, { desc = "Buffer Local Keymaps (which-key)" })

vim.keymap.set("n", "<leader>sl", function()
	require("lint").try_lint()
end, { desc = "ESLint format" })
