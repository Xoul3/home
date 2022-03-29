#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR='nvim'
export VISUAL='nvim'
export TERMINAL='st'
export READER='zathura'
export BROWSER='min'

alias ls='ls --color=auto'
alias :q='exit'
alias find='fd'
alias grep='rg'
alias vim='nvim'
alias n='nvim'
alias top='htop'
alias e='ranger'
alias rm='rm -dfr'
alias cfgi3='n ~/.config/i3/config'
alias cfgpbar='n ~/.config/polybar/config.ini'
alias cfgbsp='n ~/.config/bspwm/bspwmrc'
alias p='feh'
PS1='\W $ '
