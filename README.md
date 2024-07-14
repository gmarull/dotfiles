# My dotfiles

These are my dotfiles.

## Starship

Install https://starship.rs (prompt) and FiraCode Nerd Font from
https://www.nerdfonts.com/font-downloads.

## vim

Install plugins:

```
mkdir -p ~/.vim/pack/gmarull/start
cd ~/.vim/pack/gmarull/start
git clone --depth=1 git@github.com:vim-airline/vim-airline.git
git clone --depth=1 git@github.com:preservim/nerdcommenter.git
git clone --depth=1 git@github.com:editorconfig/editorconfig-vim.git
```

Install theme:

```
mkdir -p ~/.vim/pack/gmarull/opt
cd ~/.vim/pack/gmarull/opt
git clone --depth=1 git@github.com:altercation/vim-colors-solarized.git
```

## zsh

First install external plugins:

```sh
mkdir ~/.zsh
cd ~/.zsh
git clone --depth=1 git@github.com:zsh-users/zsh-syntax-highlighting.git
```

## GNOME terminal

Import profiles by running:

```bash
dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf
```

## macOS

### GPG

Follow https://gist.github.com/troyfontaine/18c9146295168ee9ca2b30c00bd1b41e
