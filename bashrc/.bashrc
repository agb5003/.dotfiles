#
# ~/.bashrc
#

neofetch

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
export PS1="\[\033[01;32m\]\u@\h\[\033[00m\] \w \\$ "

alias nvconfig="nvim ~/.config/nvim"
alias nfconfig="nvim ~/.config/neofetch/config.conf"
alias hyprconfig="nvim ~/.config/hypr/hyprland.conf"
alias wpconfig="nvim ~/.config/hypr/hyprpaper.conf"
alias wbconfig="nvim ~/.config/waybar/config.jsonc"
alias wbstyle="nvim ~/.config/waybar/style.css"
alias i3config="nvim ~/.config/i3/config"
alias picomconfig="nvim ~/.config/picom/picom.conf"
alias ttyconfig="nvim ~/.config/alacritty/alacritty.toml"

alias cs2="nvim ~/dev/cs2/"
