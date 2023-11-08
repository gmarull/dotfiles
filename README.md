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

## tmux

Create a symlink of `tmux.conf` to `~/.tmux.conf`.

[Vundle]:http://github.com/VundleVim/Vundle.vim

## zsh

Install [Antigen](https://github.com/zsh-users/antigen) to `~/.antigen.sh`.

## GNOME terminal

Import profiles by running:

```bash
dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf
```
