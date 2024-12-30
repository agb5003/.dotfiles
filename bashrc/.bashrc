#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
export PS1="\[\033[01;32m\]\u@\h\[\033[00m\] \w \\$ "

alias nvconfig="nvim ~/.config/nvim"
alias i3config="nvim ~/.config/i3/config"
alias ttyconfig="nvim ~/.config/alacritty/alacritty.toml"
alias advent="cd ~/dev/advent-of-code-24"
