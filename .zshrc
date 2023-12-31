#prompt
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~/%{$fg[red]%}]%{$reset_color%}$%b "

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
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
alias dwm='cd ~/.config/dwm'
alias st='cd ~/.config/st'
alias bat='echo "$(cat /sys/class/power_supply/BAT1/capacity)%"'
alias blocks='cd ~/.config/dwm/dwmblocks'
alias ls='ls --color=auto'
alias ll='ls -a -ll --color=auto'
bindkey '^X' backward-kill-word
alias l='ls'
alias cmake='sudo rm config.h && sudo make clean install'
alias sd='sudo shutdown now'
alias pkgs='echo "Foram instalados $(pacman -Qq | wc -l) pacotes."'
alias shutdown='shutdown now'
alias zshrc='nvim ~/.config/zsh/.zshrc'
alias sr='reboot'

#plugins
source .config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh



