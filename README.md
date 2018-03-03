# My dotfiles

These are my dotfiles.

## vim

Create a symlink of `vimrc` to `~/.vimrc`. Then, install the [Vundle] plugin
manager:

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

After this is done, run:

```bash
vim +PluginInstall +qall
```

and you are done.

Notes: in order to make the `solarized` color palette work you will need to set
it up to your terminal emulator first.

## tmux

Create a symlink of `tmux.conf` to `~/.tmux.conf`. Then, edit this config file
and uncomment the status bar lines (close to the end of the file) depending on
if you are running Linux or OS X.

[Vundle]:http://github.com/VundleVim/Vundle.vim

## zsh

Install [Antigen](https://github.com/zsh-users/antigen) to `~/.antigen.sh`.
