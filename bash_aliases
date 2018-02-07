#Custom aliases
#git
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gcm='git commit -m'
alias gca="git commit --amend"
alias gd='git diff'
alias gdc='git diff --cached'
alias gfa='git fetch --all'
alias gl='git log'
alias glg='git lg'
alias gco='git checkout'
alias gp='git push'
alias gpf='git push --force-with-lease'
alias gst='git status -sb'
alias gri='git rebase -i'
alias gpu='git pull'
alias gmf="git merge --ff-only"

_git_checkout_pull_request() {
  git fetch origin pull/$1/head:${2:-$1}
}
alias gcopr=_git_checkout_pull_request

# Rails
alias bx='bundle exec'

#other
alias fix-camera='sudo killall VDCAssistant'
alias irb='irb --readline -r irb/completion'
alias v='vim -p'
alias vi='vim'

man() {
    env \
      LESS_TERMCAP_mb=$(printf "\e[1;31m") \
      LESS_TERMCAP_md=$(printf "\e[1;31m") \
      LESS_TERMCAP_me=$(printf "\e[0m") \
      LESS_TERMCAP_se=$(printf "\e[0m") \
      LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
      LESS_TERMCAP_ue=$(printf "\e[0m") \
      LESS_TERMCAP_us=$(printf "\e[1;32m") \
      man "$@"
}

