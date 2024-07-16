alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."

# [[ "$(whoami)" = "root" ]] && return

# [[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'
PS1="\[\e[1;35m\]\u\[\e[m\] \w \[\e[1;35m\]$\[\e[m\] "
## Use the up and down arrow keys for finding a command in history
## (you can write some initial letters of the command first).
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

alias nv="nvim"

alias kittyconfig="nvim ~/.config/kitty/kitty.conf"

alias critconfig="nvim ~/.config/alacritty/alacritty.yml"

alias i3config="nvim ~/.config/i3/config"

alias picomconfig="nvim ~/.config/picom/picom.conf"

alias polybarconfig="nvim ~/.config/polybar/config.ini"

alias roficonfig="nvim ~/.config/rofi/config.rasi"

alias desktopentries="cd ~/.local/share/applications"

alias nviminit="nvim ~/.config/nvim/init.lua"

alias mousesens="xinput --set-prop 'pointer:pulsar X2 V2' 'libinput Accel Speed' -0.6"

alias sshpi="ssh max@192.168.0.105"

alias sshx1="ssh max@192.168.0.2"

# Source python virtualenv if it's inside .venv
alias sourcevenv="source .venv/bin/activate"


export PATH="${PATH}:~/.local/bin/:/usr/local/texlive/2024/bin/x86_64-linux/"




















fortune | cowsay

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
. "$HOME/.cargo/env"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
