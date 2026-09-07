-- feature control
vim.cmd("set nocompatible") -- enable new features
vim.cmd("set mouse=nv") -- add mouse behaviour
-- set defaults
vim.g.mapleader = " "

-- view customizations
vim.cmd("set number") -- add ruler
vim.o.winblend = 0 -- make window transparent

-- tab behaviour
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
-- change split behaviour
vim.cmd("set splitright")
vim.cmd("set splitbelow")

-- custom filetype
vim.filetype.add({
	pattern = {
		['.*/i3/.*.conf'] = 'i3config',
	},
})

vim.api.nvim_create_user_command(
	'KittyScrollBack',
	function ()
		vim.cmd("set modifiable")
		vim.cmd("set noconfirm")
		vim.cmd("set nonumber")
		vim.cmd("set nolist")
		vim.cmd("set showtabline=0")
		vim.cmd("set foldcolumn=0")
		vim.cmd("silent! %s/\\_s*\\%$//e")
		vim.cmd("noh")
	end,
	{}
)
