# My dotfiles

These are my dotfiles.

## vim

Install the [Vundle] plugin manager:

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

After this is done, run:

```bash
vim +PluginInstall +qall
```

and you are done.

[Vundle]:http://github.com/VundleVim/Vundle.vim

## zsh

Install [Antigen](https://github.com/zsh-users/antigen) to `~/.antigen.sh`.

## GNOME terminal

Import profiles by running:

```bash
dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf
```

## macOS

### GPG

Follow https://gist.github.com/troyfontaine/18c9146295168ee9ca2b30c00bd1b41e
