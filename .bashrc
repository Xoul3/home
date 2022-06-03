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
alias ll='ls -la'
alias :q='exit'
alias find='fd'
alias grep='rg'
alias vim='nvim'
alias n='nvim'
alias top='htop'
alias e='lf'
alias rm='rm -dfr'
alias p='feh'
PS1='\W $ '
