return {
	{ -- language server manager
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{ -- language server configuator
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					-- work
					"clangd", -- c/cpp
					--          "jdtls", -- java
					"cmake", -- cmake
					"autotools_ls", -- make
					-- web
					"tsserver", -- typescript/javascript
					"intelephense", -- php
					"sqlls", -- sql
					-- front
					"cssls", -- css
					-- hw
					"svlangserver", -- verilog
					-- doc
					"markdown_oxide", -- markdown
					"ltex", -- latex
					-- configs
					"basedpyright", -- python
					"bashls", -- bash
					"lua_ls", -- lua
					"vimls", -- vim
					"taplo", -- toml
				},
				automatic_installation = true,
			})
		end,
	},
	{ -- language server communicator
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			require("mason-lspconfig").setup_handlers({
				function(server_name)
					lspconfig[server_name].setup({
						capabilities = capabilities,
					})
				end,
			})
			local opts = { buffer = bufnr, noremap = true, silent = true }
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
			vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
			vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
			vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
			vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
		end,
	},
}
