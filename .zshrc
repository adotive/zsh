#prompt
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

#historico
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.config/zsh/.zsh_history

#basico
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

#atalhos
alias dwm='cd ~/.config/dwm'
alias cmake='sudo rm config.h && sudo make clean install'
alias la='ls -a'
alias ll='ls -alFh'
alias l='ls'
alias st='cd ~/.config/st'
alias dmenu='cd ~/.config/dmenu'
alias zshrc='nvim ~/.config/zsh/.zshrc'
alias ls='ls --color=auto'
alias sd='shutdown now'
alias sr='reboot'
alias pkgs='echo "Foram instalados $(pacman -Qq | wc -l) pacotes."'

#plugins
source .config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
