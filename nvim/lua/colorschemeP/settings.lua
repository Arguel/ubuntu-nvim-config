vim.g.tokyonight_style = "storm"
vim.g.tokyonight_dark_float = false

vim.g.tokyonight_colors = { comment = "#709db2", dark5 = "#709db2" }

vim.api.nvim_exec([[
	augroup MyColors
		autocmd!
		autocmd ColorScheme * highlight LineNr guifg=#5081c0   | highlight CursorLineNR guifg=#FFba00
	augroup END
]], false)  


vim.cmd[[colorscheme tokyonight]]
