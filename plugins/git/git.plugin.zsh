# Aliases & compdefs
alias g='git'
compdef g=git
alias gs='git status'
compdef _git gst=git-status
alias gl='git pull'
compdef _git gl=git-pull
alias gup='git pull --rebase'
compdef gup=git
alias gulp='git pull --rebase && git push'
compdef gulp=git
alias gp='git push'
compdef _git gp=git-push
alias gd='git diff'
compdef _git gd=git-diff
alias gdv='git diff -w "$@" | vim -R -'
compdef gdv=git

alias gc='git commit -v'
compdef gc=git
alias gca='git commit -v -a'
compdef gca=git
alias gco='git checkout'
compdef _git gco=git-checkout
alias gb='git branch'
compdef _git gb=git-branch
alias gba='git branch -a'
compdef gba=git
alias gcount='git shortlog -sn'
compdef gcount=git
alias gcp='git cherry-pick'
compdef _git gcp=git-cherry-pick
alias glg='git log --stat --max-count=5'
compdef _git glg=git-log
alias glo='git log --oneline --max-count=5'
compdef _git glo=git-log

#
# Will return the current branch name
# Usage example: git pull origin $(current_branch)
#
function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

# these aliases take advantage of the previous function
alias ggpull='git pull origin $(current_branch)'
compdef ggpull=git
alias ggpush='git push origin $(current_branch)'
compdef ggpush=git
alias ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'
compdef ggpnp=git
