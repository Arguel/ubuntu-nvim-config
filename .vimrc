" =============================================================
"                       PLUGINS
" =============================================================
" Specify a directory for plugins
call plug#begin('~/.vim/autoload')

" Conquer of Completion, aka coc
" https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" UltiSnips is the ultimate solution for snippets in Vim. 
" https://github.com/SirVer/ultisnips
" https://github.com/honza/vim-snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" emmet for vim: http://emmet.io/
" https://github.com/mattn/emmet-vim
Plug 'mattn/emmet-vim'

" Run Async Shell Commands in Vim 8.0 / NeoVim and Output to the Quickfix Window !!
" https://github.com/skywind3000/asyncrun.vim
Plug 'skywind3000/asyncrun.vim'

" A clean, dark Neovim theme written in Lua, with support for lsp, treesitter and lots of plugins. Includes additional themes for Kitty, Alacritty, iTerm and Fish.
" https://github.com/folke/tokyonight.nvim
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" Fugitive is the premier Vim plugin for Git
" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

" A Vim plugin which shows a git diff in the sign column. It shows which lines have been added, modified, or removed.
" https://github.com/airblade/vim-gitgutter
Plug 'airblade/vim-gitgutter'

" A vim plugin to display the indention levels with thin vertical lines
" https://github.com/Yggdroot/indentLine
Plug 'Yggdroot/indentLine'

" A collection of language packs for Vim.
" https://github.com/sheerun/vim-polyglot
Plug 'sheerun/vim-polyglot'

" The set of operator and textobject plugins to search/select/edit sandwiched textobjects.
" https://github.com/machakann/vim-sandwich
Plug 'machakann/vim-sandwich'

" Using the jedi autocompletion library for VIM.
" https://github.com/davidhalter/jedi-vim
Plug 'davidhalter/jedi-vim'

" A Vim/Neovim plugin for escaping insert mode without lagging.
" https://github.com/jdhao/better-escape.vim
Plug 'jdhao/better-escape.vim'

" The plugin will allow you to navigate seamlessly between vim and tmux splits using a consistent set of hotkeys.
" https://github.com/christoomey/vim-tmux-navigator
Plug 'christoomey/vim-tmux-navigator'

" Commentary.vim: comment stuff out
" https://github.com/tpope/vim-commentary
Plug 'tpope/vim-commentary'

" Insert or delete brackets, parens, quotes in pair.
" https://github.com/jiangmiao/auto-pairs
Plug 'jiangmiao/auto-pairs'

Plug 'KabbAmine/vCoolor.vim'
Plug 'norcalli/nvim-colorizer.lua'

" Smooth scrolling neovim plugin written in lua
" https://github.com/karb94/neoscroll.nvim
Plug 'karb94/neoscroll.nvim'

" Vim undo tree visualizer
" https://github.com/simnalamburt/vim-mundo
Plug 'simnalamburt/vim-mundo'

" Markdown Vim Mode
" https://github.com/godlygeek/tabular
" https://github.com/preservim/vim-markdown
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'

" Markdown preview plugin for (neo)vim
" https://github.com/iamcco/markdown-preview.nvim
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " If you have nodejs and yarn
" :call mkdp#util#install()
 
" Embed Neovim in Chrome, Firefox, Thunderbird & others.
" https://github.com/glacambre/firenvim
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

" very simple vim plugin for easy resizing of your vim windows
" https://github.com/simeji/winresizer
Plug 'simeji/winresizer'

" Neovim motions on speed!
" https://github.com/phaazon/hop.nvim
Plug 'phaazon/hop.nvim'

" Hlsearch Lens for Neovim
" https://github.com/kevinhwang91/nvim-hlslens#features
Plug 'kevinhwang91/nvim-hlslens'

" Multiple cursors plugin for vim/neovim 
" https://github.com/mg979/vim-visual-multi
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" A blazing fast and easy to configure neovim statusline plugin written in pure lua.
" https://github.com/nvim-lualine/lualine.nvim
" https://github.com/kyazdani42/nvim-web-devicons
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'


" 
" 
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"  
" 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" :TSInstall html
" :TSInstall http
" :TSInstall javascript
" :TSInstall json
" :TSInstall lua
" :TSInstall python
" :TSInstall vim
" :TSInstall typescript
" :TSUpdate all
 
" Wilder
"
Plug 'romgrk/fzy-lua-native'
Plug 'nixprime/cpsm'
Plug 'sharkdp/fd'
let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
if has('nvim')
  function! UpdateRemotePlugins(...)
    " Needed to refresh runtime files
    let &rtp=&rtp
    UpdateRemotePlugins
  endfunction

  Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
else
  Plug 'gelguy/wilder.nvim'

  " To use Python remote plugin features in Vim, can be skipped
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" 
" 
Plug 'kyazdani42/nvim-tree.lua'

" 
" 
Plug 'kevinhwang91/nvim-bqf'

" 
" 
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" A minimalist task manager for vim.
" https://github.com/vuciv/vim-bujo
Plug 'vuciv/vim-bujo'

" Viewer & Finder for LSP symbols and tags
" (Disabled normal installation due to errors, check x to see how it
" installs)
" https://github.com/liuchengxu/vista.vim
" Plug ''

" Add spelling errors to the quickfix list (vim-ingo-library is a dependency).
" https://github.com/inkarkat/vim-SpellCheck
" https://github.com/inkarkat/vim-ingo-library
Plug 'inkarkat/vim-ingo-library' | Plug 'inkarkat/vim-SpellCheck'

" Repeat.vim: enable repeating supported plugin maps with '.'
" https://github.com/tpope/vim-repeat 
Plug 'tpope/vim-repeat'

" Repeat command extended to visual mode. 
" https://github.com/inkarkat/vim-visualrepeat
Plug 'inkarkat/vim-visualrepeat'
nnoremap <silent> <Plug>(MyPluginVisual)
\ :<C-u>execute 'normal!' visualrepeat#reapply#VisualMode(0)<Bar>
\call MyPlugin#Operator('visual', "\<lt>Plug>(MyPluginVisual)")<CR>

" Live grep with args
" https://github.com/nvim-telescope/telescope-live-grep-args.nvim 
Plug 'nvim-telescope/telescope-live-grep-args.nvim'

Plug 'mfussenegger/nvim-dap'
" Plug 'rcarriga/nvim-dap-ui'
Plug 'nvim-telescope/telescope-dap.nvim'
Plug 'theHamsta/nvim-dap-virtual-text'

" 
" 
" Plug ''

" Initialize plugin system
call plug#end()
" -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
" =============================================================
" The explanations may be wrong, it is better to search the wiki


set nocompatible		            " Placeholder
set relativenumber 		          " So that the 'set number' numbers follow us (this helps in keyboard shortcuts)
set number			                " It will put numbers in the left margin
set mouse=a 			              " It allows us to interact with the mouse within Vim (nvim-gt)
set numberwidth=1 		          " To define the width of 'set number'
set clipboard=unnamedplus	      " So you can use the copied text in vim on your OS
syntax on 			                " For a color highlight for commands
set showcmd			                " To show us what command we use
set ruler 			                " To indicate our position in the text
set encoding=UTF-8		          " (Default in neovim)
set showmatch			              " To show us the other parenthesis that closes it
set shiftwidth=2		            " Indentation distance using '>>' or '<<'
set laststatus=2		            " To show the bottom menu of neovim in vim
set noshowmode			            " So that it does not show us in which mode we are currently working
set smarttab			              " Affects how <TAB> key presses are interpreted depending on where the cursor is
set cindent			                " To auto-indent spaces with C
set tabstop=2			              " Changes the width of the TAB character, plain and simple.
set expandtab			              " Always uses spaces instead of tab characters
set updatetime=100		          " Delay before vim writes its swap file (useful for vim-gitgutter and coc, it can cause lag, the default is 4000)
filetype off                    " Fixes a bug with filetype
filetype plugin on		          " Complex answer, search in the wiki
set signcolumn=yes		          " Always show signcolumns	(coc plugin and gitgutter)
set completeopt=longest,menuone " To show us the longest match Coc-nvim
set nospell                     " To disable spell checking

set hidden			                " TextEdit might fail if hidden is not set.	(coc plugin)
set nobackup        		  	    " Some servers have issues with backup files, see #649.	(coc plugin)
set nowritebackup		            " Same as above	(coc plugin)
set cmdheight=2			            " Give more space for displaying messages.	(coc plugin)
set shortmess+=c		            " Don't give |ins-completion-menu| messages.	(coc plugin)
set conceallevel=2              " For vim-markdown
" Enables cursor line position tracking:
set cursorline

" Enable persistent undo so that undo history persists across vim sessions
" *VIM-UNDO-PLUGIN
set undofile
set undodir=~/.vim/undo

set termguicolors       		" For more vivid colors (part of the monokai theme)
" =============================================================


" -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
" =============================================================
"                       CONFIGS
" =============================================================
" ###################-----	Coc
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-git',
  \ 'coc-snippets',
  \ 'coc-marketplace',
  \ ]
" plus extensions installedvia marketplace (described below):
" coc-emmet
" coc-sccsmodules
" coc-markdownlint
" coc-just-complete
" coc-html-css-support
" coc-htmlhint
" coc-eslint8
" coc-pyright
" coc-htmldjango
" coc-prettier
" coc-dash-complete
" coc-dot-complete
" coc-jedi
" coc-
" coc-
" coc-
" coc-
" coc-

" ###################-----	Vim-prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" ###################-----	Vim-sandwich
let g:sandwich#recipes = deepcopy(g:sandwich#default_recipes)

let g:sandwich#recipes += [
      \   {
      \     'buns'        : ['(', ')'],
      \     'motionwise'  : ['line'],
      \     'kind'        : ['add'],
      \     'linewise'    : 1,
      \     'command'     : ["'[+1,']-1normal! >>"],
      \   },
      \   {
      \     'buns'        : ['(', ')'],
      \     'motionwise'  : ['line'],
      \     'kind'        : ['delete'],
      \     'linewise'    : 1,
      \     'command'     : ["'[,']normal! <<"],
      \   },
      \
      \
      \   {
      \     'buns'        : ['[', ']'],
      \     'motionwise'  : ['line'],
      \     'kind'        : ['add'],
      \     'linewise'    : 1,
      \     'command'     : ["'[+1,']-1normal! >>"],
      \   },
      \   {
      \     'buns'        : ['[', ']'],
      \     'motionwise'  : ['line'],
      \     'kind'        : ['delete'],
      \     'linewise'    : 1,
      \     'command'     : ["'[,']normal! <<"],
      \   },
      \
      \
      \   {
      \     'buns'        : ['{', '}'],
      \     'motionwise'  : ['line'],
      \     'kind'        : ['add'],
      \     'linewise'    : 1,
      \     'command'     : ["'[+1,']-1normal! >>"],
      \   },
      \   {
      \     'buns'        : ['{', '}'],
      \     'motionwise'  : ['line'],
      \     'kind'        : ['delete'],
      \     'linewise'    : 1,
      \     'command'     : ["'[,']normal! <<"],
      \   }
      \ ]

" ###################-----	Vim-mustache-handlebars (Vim polyglot pack)
" This activate mustache abbreviations
let g:mustache_abbreviations = 1

" ###################-----	Vim-tmux-navigator
" Write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch = 2

" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1

" ###################-----	Vim-markdown
let g:vim_markdown_folding_disabled = 1

" ###################-----	Winresizer
" If you want to start window resize mode by `Ctrl+A`
let g:winresizer_start_key = '<C-a>'

" If this value is 1, window resize mode is finished(fixed) by Esc
let g:winresizer_finish_with_escape = 1

" The change width of window size when left or right key is pressed
let g:winresizer_vert_resize = 3

" Fix and escape from window resize mode (shift + o)
let g:winresizer_keycode_finish = 79

" ###################-----	Nvim-tree
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 0,
    \ }
 
" ###################-----	Vista
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista#renderer#enable_icon = 1

" ###################-----  Wilder
" Default keys
call wilder#setup({
      \ 'modes': [':', '/', '?'],
      \ 'next_key': '<Tab>',
      \ 'previous_key': '<S-Tab>',
      \ 'accept_key': '<Down>',
      \ 'reject_key': '<Up>',
      \ })

call wilder#set_option('pipeline', [
      \   wilder#branch(
      \     wilder#python_file_finder_pipeline({
      \       'file_command': {_, arg -> stridx(arg, '.') != -1 ? ['fd', '-tf', '-H'] : ['fd', '-tf']},
      \       'dir_command': ['fd', '-td'],
      \       'filters': ['cpsm_filter'],
      \     }),
      \     wilder#substitute_pipeline({
      \       'pipeline': wilder#python_search_pipeline({
      \         'skip_cmdtype_check': 1,
      \         'pattern': wilder#python_fuzzy_pattern({
      \           'start_at_boundary': 0,
      \         }),
      \       }),
      \     }),
      \     wilder#cmdline_pipeline({
      \       'fuzzy': 1,
      \       'fuzzy_filter': has('nvim') ? wilder#lua_fzy_filter() : wilder#vim_fuzzy_filter(),
      \     }),
      \     [
      \       wilder#check({_, x -> empty(x)}),
      \       wilder#history(),
      \     ],
      \     wilder#python_search_pipeline({
      \       'pattern': wilder#python_fuzzy_pattern({
      \         'start_at_boundary': 0,
      \       }),
      \     }),
      \   ),
      \ ])

let s:highlighters = [
      \ wilder#pcre2_highlighter(),
      \ has('nvim') ? wilder#lua_fzy_highlighter() : wilder#cpsm_highlighter(),
      \ ]

let s:popupmenu_renderer = wilder#popupmenu_renderer({
  \ 'highlights': {
  \   'accent': wilder#make_hl('WilderAccent', 'Pmenu', [{}, {}, {'foreground': '#abdb04'}]),
  \ },
  \ 'highlighter': s:highlighters,
  \ 'left': [
  \   ' ',
  \   wilder#popupmenu_devicons(),
  \   wilder#popupmenu_buffer_flags({
  \     'flags': ' a + ',
  \     'icons': {'+': '', 'a': '', 'h': ''},
  \   }),
  \ ],
  \ 'right': [
  \   ' ',
  \   wilder#popupmenu_scrollbar(),
  \ ],
  \ 'pumblend': 12,
  \ })

let s:wildmenu_renderer = wilder#wildmenu_renderer(
      \ wilder#wildmenu_airline_theme({
      \   'highlights': {
      \     'accent': wilder#make_hl('WilderAccent', 'Pmenu', [{}, {}, {'foreground': '#abdb04'}]),
      \     'default': 'Pmenu',
      \   },
      \   'highlighter': s:highlighters,
      \   'separator': ' | ',
      \ }))


call wilder#set_option('renderer', wilder#renderer_mux({
      \ ':': s:popupmenu_renderer,
      \ '/': s:wildmenu_renderer,
      \ 'substitute': s:wildmenu_renderer,
      \ }))

" ###################-----	Vim-bujo
let g:bujo#todo_file_path = $HOME . "/.cache/bujo"

" ###################-----	indentLine
let g:indentLine_defaultGroup = 'SpecialKey'
let g:indentLine_char = '▏'
augroup FILETYPES
  autocmd FileType markdown let b:indentLine_enabled = 0
augroup END

" ###################-----	Firenvim
if exists('g:started_by_firenvim') && g:started_by_firenvim
  " general config for firenvim
  let g:firenvim_config = {
      \ 'globalSettings': {
          \ 'alt': 'all',
      \  },
      \ 'localSettings': {
          \ 'notion.so': {
            \ 'selector': '',
            \ },
          \ '.*': {
              \ 'cmdline': 'neovim',
              \ 'priority': 0,
              \ 'selector': 'textarea',
              \ 'takeover': 'never',
          \ },
      \ }
  \ }

  augroup firenvim
    autocmd!
    autocmd BufEnter *.txt setlocal filetype=markdown laststatus=0 nonumber noshowcmd noruler showtabline=1
  augroup END
endif

" ###################-----	placeholder

" ###################-----	placeholder

" ###################-----	placeholder

" ###################-----	placeholder

" ###################-----	placeholder

" ###################-----	placeholder

" ###################-----	placeholder

" ###################-----	placeholder

" ###################-----	Others
" to hide the theme background
" hi Normal guibg=NONE ctermbg=NONE

" save the folds  in the .vim/view & nvim-data/view directory
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" Syntax - new
au BufNewFile,BufRead *.ejs,*.hbs set filetype=html


































" -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
" =============================================================
"                       BINDS
" =============================================================
" Commands                        Mode
" --------                        ----
" nmap, nnoremap, nunmap          Normal mode
" imap, inoremap, iunmap          Insert and Replace mode
" vmap, vnoremap, vunmap          Visual and Select mode
" xmap, xnoremap, xunmap          Visual mode
" smap, snoremap, sunmap          Select mode
" cmap, cnoremap, cunmap          Command-line mode
" omap, onoremap, ounmap          Operator pending mode

" recursive mode, no recursive mode, for unmap keys
" =============================================================


let mapleader=" "


" ###################-----	Coc
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

inoremap <script><buffer><silent><expr> <c-cr>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ ""

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Rename current word
nmap <Leader>rn <Plug>(coc-rename)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')


" Mappings for CoCList
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>pl  :<C-u>CocListResume<CR>


if has('nvim-0.4.3') || has('patch-8.2.0750')
      nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
      nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
      inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1, 1)\<cr>" : "\<Right>"
      inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0, 1)\<cr>" : "\<Left>"
endif

" Use [ctrl + j] to navigate the completion list: (up)
inoremap <expr> <C-p> pumvisible() ? "\<C-n>" : "\<C-j>"

" Use [ctrl + m] to navigate the completion list: (down)
inoremap <expr><C-n> pumvisible() ? "\<C-p>" : "\<C-h>"

" to enter the coc marketplace
nnoremap <Leader>coc :CocList marketplace<CR>

" to review errors flagged by coc
nnoremap <Leader>er :CocDiagnostics<CR>


" ###################-----	Vim-prettier
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" ###################-----	Emmet-vim
let g:user_emmet_leader_key='<C-y>'

" ###################-----	Blamer.nvim
" activate inline git blame (allows you to see the commits on the line that the cursor is on)
nnoremap <Leader>bl :BlamerToggle<CR>

" ###################-----	Coc-marketplace
" to enter the coc marketplace
nnoremap <Leader>coc :CocList marketplace<CR>

" ###################-----	Nvim-tree
nnoremap <leader>m :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

" ###################-----	Vim-mundo
nnoremap <F5> :MundoToggle<CR>

" ###################-----	Markdown-preview
nmap <C-p> <Plug>MarkdownPreviewToggle

" ###################----- Hop	
" hop around by highlighting words.
nnoremap <C-m>w :HopWord<CR>
" hop around by matching against a pattern (as with /).
nnoremap <C-m>p :HopPattern<CR>
" type a single key and hop to any occurrence of that key in the document.
nnoremap <C-m>c :HopChar1<CR>
" type a bigram (two keys) and hop to any occurrence of that bigram in the document.
nnoremap <C-m>t :HopChar2<CR> 
" jump to any visible line in your buffer.
nnoremap <C-m>l :HopLine<CR>
" jump to any visible first non-whitespacekcharacter of each line in your buffer.
nnoremap <C-m>s :HopLineStart<CR>

" ###################-----	Vim-bujo
nmap <Leader>tu <Plug>BujoChecknormal
nmap <Leader>th <Plug>BujoAddnormal

" ###################-----	UltiSnips
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-t>"

" ###################-----	placeholder

" ###################-----	Others
" [space + w] save file
nmap <Leader>w :w<CR>
" [space + shift + w] to save and exit the current file
nmap <Leader>W :wq<CR>
" [space + q] quit file (error if not saved)
nmap <Leader>q :q<CR>
" [space + q + q] quit file (use with care)
nmap <Leader>qq :q!<CR>
" [space + shift + r] quit all buffers
map <Leader>T :qa<CR>
" [space + shift + q + q] quit and save all buffers
nmap <Leader>QQ :xa<CR>

" [space + 1] to open a new tab (write the name of the file you want to open)
nmap <Leader>1 :tabedit

" [space + shift + l] to navigate one tab to the right
nmap <Leader>L gt
" [space + shift + h] to navigate one tab to the left
nmap <Leader>H gT

" [space + 2] to close the current tab
nmap <Leader>2 :tabclose<CR>

" [space + 3] to save the session and all the files you have open (like an IDE)
"(make up a name ending in '.vim') then to open it use 'vim -S name.vim'
nmap <Leader>3 :mksession

" [space + 4] close the current buffer, you can use ":bd nameOfTheFile.html" to choose one to close
nmap <Leader>4 :bd<CR>

" [space + ctrl + h] to go to the beginning of the line (visual mode)
nmap <Leader><C-h> v0
" [space + space + h] to go to the beginning of the line
nmap <Leader><space>h 0

" [space + ctrl + l] to go to the end of the line (visual mode)
nmap <Leader><C-l> vg_
" [space + space + l] to go to the end of the line
nmap <Leader><space>l g_

" ####----Shortcuts to use with vim fugitive----
" [space + g + h] to choose the update on the left
nmap <Leader>gh :diffget //2<CR>
" [space + g + l] to choose the update on the right
nmap <Leader>gl :diffget //3<CR>
" [space + g + s] to activate the interactive vim fugitive menu (it's like the git status -s command)
nmap <Leader>gs :G<CR>
" ----------------------------------------------

" ####----Shortcuts for working with vimdiff----
" [space + g + u] to scan the document again in case of new differences
nmap <Leader>gu :diffupdate<CR>
" [space + g + k] to jump to the next difference
nmap <Leader>gk ]c
" [space + g + j] to go back to the previous difference
nmap <Leader>gj [c
" ----------------------------------------------

" [space + 5] to restart CoC in case of bugs
nmap <Leader>5 :CocRestart<CR>

" --- Personal maps ---

" Edit Vim config file in a new tab.
nmap <Leader>ev :tabnew $vimrcpath<CR>

" Source Vim config file.
nmap <Leader>sv :source $vimrcpath<CR>

" Behave Vim
nnoremap Y y$

" Keeping it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
" inoremap <cr> <cr><c-g>u

" Jumplist mutations
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-k> <esc>:m .-2<CR>==
inoremap <C-j> <esc>:m .+1<CR>==
" Using capitals because of CoC
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==

nnoremap <leader>lv :AsyncRun -mode=term -pos=tab live-server<CR>

" Spell checking
nnoremap <F6> :setlocal spell! spelllang=en_us<CR>
nnoremap <F7> :set spelllang=es<CR>

nnoremap <C-K> :cnext<CR>zz
nnoremap <C-J> :cprev<CR>zz
nnoremap <M-k> :lnext<CR>zz
nnoremap <M-j> :lprev<CR>zz
nnoremap <C-q> :call ToggleQFList(1)<CR>
nnoremap <C-w> :call ToggleQFList(0)<CR>

let g:quickFixLocal = 0
let g:quickFixGlobal = 0

fun! ToggleQFList(global)
    if a:global
        if g:quickFixGlobal == 1
            let g:quickFixGlobal = 0
            cclose
        else
            let g:quickFixGlobal = 1
            copen
        end
    else
        if g:quickFixLocal == 1
            let g:quickFixLocal = 0
            lclose
        else
            let g:quickFixLocal = 1
            lopen
        end
    endif
endfun


" Cycle through splits.
nnoremap <S-Tab> <C-w>w

" Press * to search for the term under the cursor or a visual selection and
" then press a key below to replace all instances of it in the current file.
nnoremap <Leader>r :%s///g<Left><Left>
nnoremap <Leader>rc :%s///gc<Left><Left><Left>

" The same as above but instead of acting on the whole file it will be
" restricted to the previously visually selected range. You can do that by
" pressing *, visually selecting the range you want it to apply to and then
" press a key below to replace all instances of it in the current selection.
xnoremap <Leader>r :s///g<Left><Left>
xnoremap <Leader>rc :s///gc<Left><Left><Left>

" Format paragraph (selected or not) to 80 character lines.
nnoremap <Leader>g gqap
xnoremap <Leader>g gqa

" Prevent x and the delete key from overriding what's in the clipboard.
noremap x "_x
noremap X "_x
noremap <Del> "_x

" Prevent selecting and pasting from overwriting what you originally copied.
xnoremap p pgvy

" Keep cursor at the bottom of the visual selection after you yank it.
vmap y ygv<Esc>

" After searching for text, press this mapping to do a project wide find and
" replace. It's similar to <leader>r except this one applies to all matches
" across all files instead of just the current file.
nnoremap <Leader>R
  \ :cfdo %s//g \| update
  \<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)
