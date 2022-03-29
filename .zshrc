# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

ZSH_THEME="bureau"
# Add wisely, as too many plugins slow down shell startup.
plugins=(git adb docker ruby npm perl zsh-syntax-highlighting zsh-autosuggestions zsh-completions docker docker-compose docker-machine sudo golang gh rust node python rails tmux z vi-mode yarn git-flow)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='nvim'
export VISUAL='nvim'
export TERMINAL='st'
export READER='zathura'
export BROWSER='min'
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Example aliases
alias reload="source ~/.zshrc"
alias :q="exit"
alias find="fd"
alias grep="rg"
alias vim="nvim"
alias top="htop"
alias n="\nvim"
alias e="ranger"
alias rm="rm -dfr"
alias cfgi3="n ~/.config/i3/config"
alias cfgpbar="n ~/.config/polybar/config.ini"
alias cfgbsp="n ~/.config/bspwm/bspwmrc"
alias p="feh"
