#
# ~/.bashrc
#

fastfetch

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='exa --color=auto'
alias grep='grep --color=auto'
export PS1="\[\033[01;32m\]\u@\h\[\033[00m\] \w \\$ "

alias nvconfig="nvim ~/.config/nvim"

. "$HOME/.cargo/env"

