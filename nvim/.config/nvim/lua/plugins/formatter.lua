return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- formatting
				require("none-ls.formatting.autopep8"),
				--        require("none-ls.formatting.clang-format"),
				--        require("none-ls.formatting.cmakelang"),
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.stylua,
				-- linting
				--        require("none-ls.diagnostics.cmakelang"),
				--        require("none-ls.diagnostics.misspell"),
				-- require("none-ls.diagnostics.eslint"),
				-- completion
				-- require("none-ls.completion.spell"),
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
