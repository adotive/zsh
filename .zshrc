##############
# Zsh config #
##############

autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.config/zsh/.zsh_history

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

alias dwm='cd ~/.config/dwm'
alias st='cd ~/.config/st'
alias make='sudo rm config.h && sudo make clean install'
alias vim='nvim'
alias ls='ls --color=auto'
alias la='ls -la'

source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
