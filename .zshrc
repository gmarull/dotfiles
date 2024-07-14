# .zshrc
# Gerard Marull-Paretas <gerardmarull@gmail.com>

# history browsing
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE="100000"
setopt INTERACTIVE_COMMENTS
setopt INC_APPEND_HISTORY
export SAVEHIST="$HISTSIZE"
export SHARE_HISTORY

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

# autocompletion
autoload -U compinit
compinit

zstyle ':completion:*:*:*:*:*' menu select

# external plugins

# git@github.com:zsh-users/zsh-syntax-highlighting.git
source "$HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# aliases

alias ga="git add"
alias gst="git status"
alias gco="git checkout"
alias gd="git diff"
alias gdca="git diff --cached"
alias gc="git commit --verbose"
alias gl="git pull"
alias gp="git push"
alias gpf="git push --force"

# prompt
eval "$(starship init zsh)"
