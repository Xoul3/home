# Z auto
zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle :compinstall filename '$HOME/.config/zsh/.zshrc'
zmodload zsh/complist

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE='$HOME/.cache/zsh/histfile'
HISTSIZE=10000
SAVEHIST=10000
setopt autocd beep notify
unsetopt extendedglob nomatch
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp -uq)"
    trap 'rm -f $tmp >/dev/null 2>&1' HUP INT QUIT TERM PWR EXIT
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line
bindkey -M vicmd '^[[P' vi-delete-char
bindkey -M vicmd '^e' edit-command-line
bindkey -M visual '^[[P' vi-delete

# Promt
PROMPT='%F{red}# %B%F{cyan}%n%f%b@%B%F{blue}%m%f%b %B%F{magenta}%2~%f%b
 -> '
RPROMPT=''

# Alias
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias :q="exit"
alias ll="ls -la"
alias vim="nvim"
alias top="htop"
alias v="\nvim"
alias e="lf"
alias rm="rm -dfr"
alias p="feh"

# Plugins
#
ZPLUG="$HOME/.config/zsh/plugins"
source $ZPLUG/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZPLUG/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZPLUG/zsh-completions/zsh-completions.plugin.zsh
