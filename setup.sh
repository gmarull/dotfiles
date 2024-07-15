#!/bin/sh
# Gerard Marull-Paretas <gerard@teslabs.com>

set -e

# git --------------------------------------------------------------------------

ln -s .gitconfig $HOME/.gitconfig

# tmux -------------------------------------------------------------------------

ln -s .tmux.conf $HOME/.tmux.conf

# starship ---------------------------------------------------------------------

STARSHIP_CONF=$HOME/.config

mkdir -p $STARSHIP_CONF
ln -s starship.toml $STARSHIP_CONF/starship.toml

# zsh --------------------------------------------------------------------------

ZSH_PLUGINS=$HOME/.zsh

mkdir $ZSH_PLUGINS
cd $ZSH_PLUGINS
git clone --depth=1 git@github.com:zsh-users/zsh-syntax-highlighting.git
cd -

ln -s .zshrc $HOME/.zshrc

# vim --------------------------------------------------------------------------

VIM_PACK=$HOME/.vim/pack/$USER
VIM_PACK_START=$VIM_PACK/start
VIM_PACK_OPT=$VIM_PACK/opt

mkdir -p $VIM_PACK_START
cd $VIM_PACK_START
git clone --depth=1 git@github.com:vim-airline/vim-airline.git
git clone --depth=1 git@github.com:preservim/nerdcommenter.git
git clone --depth=1 git@github.com:editorconfig/editorconfig-vim.git
cd -

mkdir -p $VIM_PACK_OPT
cd $VIM_PACK_OPT
git clone --depth=1 git@github.com:altercation/vim-colors-solarized.git
cd -

ln -s .vimrc $HOME/.vimrc

# GNOME terminal ---------------------------------------------------------------

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf
fi
