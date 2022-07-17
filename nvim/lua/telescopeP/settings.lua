-- Using Lua functions
-- vim.api.nvim_set_keymap('n', '<Leader>ff','<cmd>lua require("telescope.builtin").find_files({layout_strategy="vertical",layout_config={width=0.5}})<cr>', {})
-- vim.api.nvim_set_keymap('n', '<Leader>fb','<cmd>lua require("telescope.builtin").buffers()<cr>', {})
-- vim.api.nvim_set_keymap('n', '<Leader>fh','<cmd>lua require("telescope.builtin").help_tags()<cr>', {})


require("telescopeP.functionsT")

vim.cmd([[
	nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
	nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
	nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>
	nnoremap <Leader>pg :lua require("telescope").extensions.live_grep_args.live_grep_args()<CR>

	nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
	nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
	nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>
	nnoremap <leader>vrc :lua require('telescopeP.functionsT').search_dotfiles({ hidden = true })<CR>
	nnoremap <leader>gc :lua require('telescopeP.functionsT').git_branches()<CR>
	
	hi TelescopeNormal guibg=none
	hi TelescopeBorder guibg=none
]])
