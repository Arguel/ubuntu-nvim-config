<p align="center"><img src="https://i.imgur.com/D89mABQ.png"></p>

This is my configuration for nvim in the ubuntu environment, much of the
information already comes from my [old configuration in windows](https://github.com/Arguel/windows-nvim-config)
, in this new version several new plugins are added and the migration to lua begins

# Table of contents

1. [Requirements](#requirements)
2. [Configuration](#configuration)
3. [Used plugins and their function](#used-plugins-and-their-function)
4. [Plugins Requirements](#plugins-requirements)
5. [Keyboard shortcuts](#keyboard-shortcuts)
6. [Windows version](#windows-version) (old)
7. [Credits](#credits)

# ⚡️ Requirements

## Optional

- Additional autocompletion/setup for python with the following modules
  (you need to have [Python](https://www.python.org/downloads/) installed):

```sh
pip3 install pynvim
pip3 install neovim

pip3 install -U setuptools

pip3 install python-language-server
pip3 install 'python-language-server[all]'

pip3 install git+git://github.com/psf/black

pip3 install pyls-mypy
pip3 install pyls-isort
pip3 install pyls-black
```

## Necessary

- Have [vim](https://www.vim.org/) and [nvim](https://neovim.io/) installed
- A plugin manager (I personally use
  [Vim-Plug](https://github.com/junegunn/vim-plug)), but you can safely use any
  other, for example [Vim-Vundle](https://github.com/VundleVim/Vundle.vim), and
  you would only have to change the lines to suit your plugin manager.
  For example using Vim-Vundle you would have to change the following:
  ```vim
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
  " And any other plugin you want to change
  Plugin 'tpope/vim-fugitive'
  call vundle#end()
  ```

- Once you have a plugin manager you will have to install the plugins that are
  in ".vimrc", in case of using vim-plug, you only have to put this command in
  the console and you should install them `:PlugInstall`

# ⚙️ Configuration

You can configure everything to your liking, I leave it as it is more
comfortable for me, below I will also describe most of the
[keyboard shortcuts](#keyboard-shortcuts) (which are generally the defaults of
the X plugin in particular)

- There is an option enabled in the configuration (.vimrc) that will autosave
  the view (this includes, for example, where you were positioned before
  closing the file, if you created folds, they will also be saved, etc.)

  ```vim
  " save the folds in the .vim/view directory
   autocmd BufWinLeave _._ mkview
   autocmd BufWinEnter _._ silent loadview
  ```

  but it may generate lag and also it will execute with each new file and it
  will generate an error message if it is a new file (only the first time), it
  will also generate a folder called "view" in the nvim folder and in the vim
  folder

  **In windows**
  `C:\Users\ttuna\AppData\Local\nvim-data\view`
  or
  `C:\Users\ttuna\\.vim\view`

  That is why if it bothers you to have this enabled it is better that you
  delete it from the .vimrc

# 📚 Used plugins and their function

## Autocomplete

- [Conquer of Completion](https://github.com/neoclide/coc.nvim) for autocomplete

  **Coc extensions**

  - [prettier](https://github.com/neoclide/coc-prettier) code format
  - [snippets](https://github.com/neoclide/coc-snippets) to show ultisnips snippets
  - [git](https://github.com/neoclide/coc-git) integration for git
  - [css](https://github.com/neoclide/coc-css) integration for css
  - [html](https://github.com/neoclide/coc-html) integration for html
  - [json](https://github.com/neoclide/coc-json) integration for json
  - [tsserver](https://github.com/neoclide/coc-tsserver) integration for
    javascript & typescript

- [ultisnips](https://github.com/SirVer/ultisnips) for snippets in Vim using CoC
  - [vim-snippets](https://github.com/honza/vim-snippets) pack of snippets

## Appearance

- [monokai theme](https://github.com/crusoexia/vim-monokai) a simple theme for
  vim that I liked, nothing special
- [vim-airline](https://github.com/vim-airline/vim-airline) to make the
  statusline more beautiful
- [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes) themes
  for the plugin above
- [vim-devicons](https://github.com/ryanoasis/vim-devicons) displays icons
  according to file type

## Navigation

- [nerdtree](https://github.com/preservim/nerdtree) file system explorer, to
  navigate between files in a more intuitive way
  - [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin) a
    plugin of NERDTree showing git status
  - [vim-nerdtree-syntax-highlight](https://github.com/tiagofumo/vim-nerdtree-syntax-highlight)
    adds syntax-highlight for nerdtree on most common file extensions
- [ctrlp-vim](https://github.com/ctrlpvim/ctrlp.vim) to find and manipulate
  buffers more quickly
- [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) for
  navigate seamlessly between vim and tmux splits using a consistent set of hotkeys

## Mobility

- [vim-easymotion](https://github.com/easymotion/vim-easymotion) to move much faster while editing
- [vim-smoothie](https://github.com/psliwka/vim-smoothie) for smooth scrolling

## Git

- [vim-gitgutter](https://github.com/airblade/vim-gitgutter) shows which lines have been added, modified, or removed when using git
- [vim-fugitive](https://github.com/tpope/vim-fugitive) to use git commands more quickly

## Useful

- [vim-closetag](https://github.com/alvan/vim-closetag) auto close (X)HTML tags
- [auto-pairs](https://github.com/jiangmiao/auto-pairs) for insert or delete brackets, parens, quotes in pair.
- [vim-sandwich](https://github.com/machakann/vim-sandwich) set of operator and textobject plugins to search/select/edit sandwiched textobjects
- [emmet-vim](https://github.com/mattn/emmet-vim) emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to [emmet](https://emmet.io/)
- [winresizer](https://github.com/simeji/winresizer) very simple vim plugin for easy resizing of your vim windows
- [vim-polyglot](https://github.com/sheerun/vim-polyglot) something like [prettier](https://github.com/prettier/prettier) but for many more languages and vim
- [nerdcommenter](https://github.com/preservim/nerdcommenter) for commenting operations and styles
- [vim-titlecase](https://github.com/christoomey/vim-titlecase) support for motions and text objects

# 📘 Plugins requirements

## coc.nvim

Follow the instructions in the [official repository](https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim)

## vim-mundo

Follow the instructions in the [official repository](https://github.com/simnalamburt/vim-mundo#requirements)

# 🚀 Keyboard shortcuts

I moved the keyboard shortcuts section to a separate file, because it's a lot of
information, you can find it in [keyboard-shortcuts](keyboard-shortcuts.md)

# 🖥️ Windows version

The windows version is the old version of this configuration and [this is its
repository](https://github.com/Arguel/windows-nvim-config), it keeps most of the
keyboard shortcuts, so you can use that configuration without any problem

# ⭐ Special mentions

- Using ultisnips and CoC when you complete a snippet you can use the 'tab' key
  to jump to the next field to complete

- `:diffget` and `:diffput` can be abbreviated as `do` and `dp` respectively

# 🔥 How to keep it updated?

To obtain the latest features of our plugins and plugin managers, we will need
to update them from time to time

In order to update the plugin manager that I use (in this case it would be
"Plug") we will need to put this command in the console and execute it

`:PlugUpgrade`
_(each plugin manager may have a different way to update it)_

Once an update is applied, I always recommend restarting nvim so that it does
not throw errors if we continue to update something else.
To update the plugins we are using (for example, coc, fugitive, ctrlp, nerdtree,
etc) we will have to use this other command

`:PlugUpdate`

And finally to update the CoC extensions we are going to use the following
command (as I mentioned above it is better to restart before executing it)

`:CocUpdate`

# 🧾 Credits

## References that I used to create a hybrid of configs

- [jdhao](https://github.com/jdhao/nvim-config)
- [benawad](https://gist.github.com/benawad/b768f5a5bbd92c8baabd363b7e79786f)
- [joshldavis](https://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/#:~:text=Summary%3A%20A%20buffer%20is%20the,just%20a%20collection%20of%20windows.)
- [ThePrimeagen](https://github.com/ThePrimeagen)
