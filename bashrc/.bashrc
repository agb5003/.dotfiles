#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Custom prompt
export PS1='\[\033[36m\]\u\[\033[00m\]@\[\033[33m\]\H\[\033[00m\] \[\033[3;32m\]\w\[\033[00m\] \\$ '

# PATH edits
export PATH="$PATH:/home/max/.local/bin"
## gem5
export GEM5_ROOT=$HOME/research/hma/gem5
export PATH=$PATH:$GEM5_ROOT/build/RISCV:$PATH
export PATH=$PATH:$GEM5_ROOT/build/ARM:$PATH
export PATH=$PATH:$GEM5_ROOT/build/X86:$PATH


# Aliases
alias ls='exa --color=auto'
alias grep='grep --color=auto'

alias nvconfig="nvim ~/.config/nvim"

alias gem5=$(GEM5_ROOT)/build/ALL/gem5.opt
alias gem5-riscv=$(GEM5_ROOT)/build/RISCV/gem5.opt
alias gem5-arm=$(GEM5_ROOT)/build/ARM/gem5.opt
alias gem5-x86=$(GEM5_ROOT)/build/X86/gem5.opt
