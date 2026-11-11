# /etc/profile.d/10-aliases.sh
[[ $- != *i* ]] && return

alias la="ls -lah"
alias lr="ls -lahR"
alias ld="ls -lah --group-directories-first"
alias sec="ls -Z"
alias sudo='sudo '
alias reload="source /etc/profile"

# Interactive safety
alias rm="rm -iv"
alias mv="mv -iv"
alias cp="cp -iv"

# Navigation
alias -- -="cd -"
alias cd.='cd $(readlink -f .)'

# Inspection
alias paths='echo -e ${PATH//:/\\n}'
alias functions="declare -f | grep '^[a-z].* ()' | sed 's/{$//'"
alias extip="dig +short myip.opendns.com @resolver1.opendns.com 2>/dev/null || curl -s ifconfig.me"