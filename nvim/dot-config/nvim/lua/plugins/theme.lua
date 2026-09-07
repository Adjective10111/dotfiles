return {
	-- {
	-- "catppuccin/nvim",
	-- name = "catppuccin",
	-- priority = 1000,
	-- transparent = true,
	-- opts = {
	-- flavour = "mocha",
	-- },
	-- config = function()
	-- vim.cmd.colorscheme("catppuccin")
	-- end,
	-- },
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("cyberdream").setup({
				transparent = true,
				italic_comments = true,
				borderless_telescope = false,
				-- Set terminal colors used in `:terminal`
				terminal_colors = true,
				theme = {
					variant = "default", -- use "light" for the light variant
				},
			})
			vim.cmd("colorscheme cyberdream")
		end,
	},
}
