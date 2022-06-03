# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git adb docker ruby npm zsh-syntax-highlighting zsh-autosuggestions zsh-completions docker docker-compose docker-machine sudo golang rust node python rails vi-mode yarn git-flow)

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
export BROWSER='icecat-bin'
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Example aliases
alias reload="source ~/.zshrc"
alias :q="exit"
alias find="fd"
alias ll="ls -la"
alias grep="rg"
alias vim="nvim"
alias top="htop"
alias n="\nvim"
alias e="lf"
alias rm="rm -dfr"
alias p="feh"
alias c="clear"
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme
