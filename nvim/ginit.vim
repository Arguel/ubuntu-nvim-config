" To check if neovim-qt is running, use `exists('g:GuiLoaded')`,
" see https://github.com/equalsraf/neovim-qt/issues/219

" What options do: (defined here because elsewere generates an error idk why)

" call GuiWindowMaximized(1) " To open nvim-qt with maximized window
" GuiTabline 0 " To prevent the buffer bar from appearing in neovim-qt
" GuiPopupmenu 0 " To prevent the autocomplete menu from appearing in nvim-qt

if exists('g:GuiLoaded')
  " call GuiWindowMaximized(1)
  " GuiTabline 0
  GuiPopupmenu 0
  GuiLinespace 2
endif


