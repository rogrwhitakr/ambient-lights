# /etc/profile.d/00-environment.sh
[[ $- != *i* ]] && return

export HISTSIZE=32768
export HISTFILESIZE=32768
export HISTTIMEFORMAT='%Y-%m-%d %H:%M:%S '
export HISTCONTROL=ignoreboth:erasedups
shopt -s histappend

# Preferred editor
if command -v nano >/dev/null 2>&1; then
    export EDITOR=/usr/bin/nano
fi

export MANPAGER='less -X'