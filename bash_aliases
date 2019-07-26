alias aliases='vim ~/.bash_aliases && . ~/.bash_aliases'
alias tmux='tmux 2'
alias wpscan='sudo docker run wpscanteam/wpscan'
alias 2fa='~/bin/totp'
alias :wq='echo Reminder: You are not editing a file!'
alias :q=':wq'
alias :w=':wq'
alias s1='sudo $(history -p \!\!)'
# git
alias gti='git' # or https://github.com/rwos/gti
alias ga='git add'
alias gc='git commit'
alias gg='git clone'
#functions
mkcd() { mkdir "$1" && cd "$1"; }
..() {
    if [ -z "$1" ]; then
        cd ..
    else
        cd `awk "BEGIN {while (c++<$1) printf \"../\"}"`
    fi
}
