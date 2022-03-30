<p align="center"><img src="https://i.imgur.com/D89mABQ.png"></p>

This is my configuration for nvim in the ubuntu environment, much of the
information already comes from my [old configuration in windows](https://github.com/Arguel/windows-nvim-config)
, in this new version several new plugins are added and the migration to lua begins

# Table of contents

1. [Requirements](#%EF%B8%8F-requirements)
2. [Configuration](#%EF%B8%8F-configuration)
3. [Used plugins and their function](#-used-plugins-and-their-function)
4. [Plugins Requirements](#-plugins-requirements)
5. [Keyboard shortcuts](#-keyboard-shortcuts)
6. [Windows version](#%EF%B8%8F-windows-version) (old)
7. [Special mentions](#-special-mentions)
8. [How to keep it updated](#-how-to-keep-it-updated)
9. [Credits](#-credits)

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
  `C:\Users\<username>\AppData\Local\nvim-data\view`
  or
  `C:\Users\<username>\\.vim\view`

  That is why if it bothers you to have this enabled it is better that you
  delete it from the .vimrc

# 📚 Used plugins and their function

## Autocomplete

- [Conquer of Completion](https://github.com/neoclide/coc.nvim) for autocomplete

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

[https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim](https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim)

## vim-mundo

- Vim ≥ _7.3_ with `+python3` or `+python` options
- [Neovim](https://neovim.io/) with [pynvim](https://github.com/neovim/pynvim) installed
- Python ≥ _2.4_

[https://github.com/simnalamburt/vim-mundo#requirements](https://github.com/simnalamburt/vim-mundo#requirements)

## firenvim

1. Check if the luabitop package is available by running `:lua bit.band(1,1)` in
   Neovim. If this throws an error, you will need to install it.

2. Finally, install the Firenvim addon for your browser from
   [Mozilla's store](https://addons.mozilla.org/en-US/firefox/addon/firenvim/)
   or [Google's](https://chrome.google.com/webstore/detail/firenvim/egpjdkipkomnmjhjmdamaniclmdlobbo).

[https://github.com/glacambre/firenvim#installing](https://github.com/glacambre/firenvim#installing)

## nvim-web-devicons

- [A patched font](https://www.nerdfonts.com/)

[https://github.com/kyazdani42/nvim-web-devicons#requirements](https://github.com/kyazdani42/nvim-web-devicons#requirements)

## telescope.nvim

- [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep) is required for
  `live_grep` and `grep_string`
- [telescope-fzy-native.nvim](https://github.com/nvim-telescope/telescope-fzy-native.nvim)
  telescope sorter to significantly improve
  sorting performance
- [sharkdp/fd](https://github.com/sharkdp/fd) (finder)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
  (finder/preview)
- [neovim LSP](https://neovim.io/doc/user/lsp.html) (picker)
- [devicons](https://github.com/kyazdani42/nvim-web-devicons) (icons)

[https://github.com/nvim-telescope/telescope.nvim#getting-started](https://github.com/nvim-telescope/telescope.nvim#getting-started)

## nvim-treesitter

- Neovim latest stable version or [nightly](https://github.com/neovim/neovim#install-from-source)
- `tar` and `curl` in your path (or alternatively `git`)
- A C compiler in your path and libstdc++ installed ([Windows users please read this!](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support)).

[https://github.com/nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

## cpsm

- Vim 7.4, compiled with the `+python` flag.

- A C++ compiler supporting C++11.

- Boost (Ubuntu: package `libboost-all-dev`).

- CMake (Ubuntu: package `cmake`).

- Python headers (Ubuntu: package `python-dev`).

- Optional, required for Unicode support: ICU (Ubuntu: package `libicu-dev`).

Pyenv users on Mac OS X: cpsm requires dynamic Python libraries, which pyenv
does not build by default. If CMake indicates that it's using static libraries,
e.g.:

```
-- Found PythonLibs: /Users/<username>/.pyenv/versions/3.5.2/lib/python3.5/config-3.5m/libpython3.5m.a
```

Rebuild with dynamic library support by running `env PYTHON_CONFIGURE_OPTS="--enable-framework" pyenv install <version>`.

**Python 3 Support**: If your Vim is compiled against Python 3 instead
(`+python3` flag) the install script should detect this in most cases and
everything should just work. You may need different python headers installed
(e.g. `python3-dev` on Ubuntu).

If the detection does not work for any reason you can set `PY3=ON` or `PY3=OFF`
as appropriate when running `./install.sh` to override it.

[https://github.com/nixprime/cpsm#requirements](https://github.com/nixprime/cpsm#requirements)

## fd

**On Ubuntu** _... and other Debian-based Linux distributions._

If you run Ubuntu 19.04 (Disco Dingo) or newer, you can install the
[officially maintained package](https://packages.ubuntu.com/fd-find):

```sh
sudo apt install fd-find
```

Note that the binary is called `fdfind` as the binary name `fd` is already used
by another package.
It is recommended that after installation, you add a link to `fd` by executing command
`ln -s $(which fdfind) ~/.local/bin/fd`, in order to use `fd` in the same way
as in this documentation.
Make sure that `$HOME/.local/bin` is in your `$PATH`.

If you use an older version of Ubuntu, you can download the latest `.deb`
package from the
[release page](https://github.com/sharkdp/fd/releases) and install it via:

```bash
sudo dpkg -i fd_8.3.2_amd64.deb  # adapt version number and architecture
```

[https://github.com/sharkdp/fd#on-ubuntu](https://github.com/sharkdp/fd#on-ubuntu)

## wilder.nvim

- Requires `fd` from
  [sharkdp/fd](https://github.com/sharkdp/fd)
  (see `:h wilder#python_file_finder_pipeline()` on using other commands)
- Requires `cpsm` from [nixprime/cpsm](https://github.com/nixprime/cpsm)
- Requires `fzy-lua-native` from [romgrk/fzy-lua-native](https://github.com/romgrk/fzy-lua-native)
- Requires `nvim-web-devicons` from
  [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
  or
  `vim-devicons` from
  [ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons) or
  `nerdfont.vim` from [lambdalisue/nerdfont.vim](https://github.com/lambdalisue/nerdfont.vim)

[https://github.com/gelguy/wilder.nvim#advanced-config-for-neovim-only-or-vim-with-yarp](https://github.com/gelguy/wilder.nvim#advanced-config-for-neovim-only-or-vim-with-yarp)

## nvim-bqf

- [Neovim](https://github.com/neovim/neovim) 0.5 or later
- [fzf](https://github.com/junegunn/fzf) (optional, 0.24.0 later)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) (optional)

[https://github.com/kevinhwang91/nvim-bqf#requirements](https://github.com/kevinhwang91/nvim-bqf#requirements)

## vista.vim

I don't know the mimimal supported version. But if you only care about the ctags
related feature, vim 7.4.1154+ should be enough. If you want to ctags to run
asynchonously, Vim 8.0.27+ should be enough.

Otherwise, if you want to try any LSP related features, then you certainly need
some plugins to retrive the LSP symbols, e.g.,
[coc.nvim](https://github.com/neoclide/coc.nvim). When you have these LSP
plugins set up, vista.vim should be ok to go as well.

In addition, if you want to search the symbols via
[fzf](https://github.com/junegunn/fzf), you will have to install it first. Note
that fzf 0.22.0 or above is required.

Vim 8

```bash
$ mkdir -p ~/.vim/pack/git-plugins/start
$ git clone https://github.com/liuchengxu/vista.vim.git --depth=1 ~/.vim/pack/git-plugins/start/vista.vim
```

NeoVim

```bash
$ mkdir -p ~/.local/share/nvim/site/pack/git-plugins/start
$ git clone https://github.com/liuchengxu/vista.vim.git --depth=1 ~/.local/share/nvim/site/pack/git-plugins/start/vista.vim
```

[https://github.com/liuchengxu/vista.vim#requirement](https://github.com/liuchengxu/vista.vim#requirement)

## copilot.vim

1.  Install [Node.js][] 12 or newer.
2.  Install [Neovim][] 0.6 or newer.
3.  Install `github/copilot.vim` using vim-plug, packer.nvim, or any other
    plugin manager. Or to install directly:

        git clone https://github.com/github/copilot.vim.git \
         ~/.config/nvim/pack/github/start/copilot.vim

4.  Start Neovim and invoke `:Copilot setup`.

[node.js]: https://nodejs.org/en/download/
[neovim]: https://github.com/neovim/neovim/releases/latest

[https://github.com/github/copilot.vim#getting-started](https://github.com/github/copilot.vim#getting-started)

# 🚀 Keyboard shortcuts

I moved the keyboard shortcuts section to a separate file, because it's a lot of
information, you can find it in [keyboard-shortcuts](https://github.com/Arguel/ubuntu-nvim-config/blob/main/keyboard-shortcuts.md)

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
