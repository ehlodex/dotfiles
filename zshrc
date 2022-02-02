# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ehlodex/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall
PROMPT='%(?.%F{green}0.%F{red}%?)%f %B%F{blue}%~%b%f%# '

# Re-enable some bash-like shortcuts, even though we're using vi-mode
bindkey "^A" vi-beginning-of-line
bindkey "^E" vi-end-of-line

# Aliases
alias Enter-PSSession="pwsh -command Enter-PSSession"
alias enter-pssession="Enter-PSSession"
alias pss="Enter-PSSession"

zshsh="zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
if [ -f /usr/share/$zshsh ]; then
  source /usr/share/$zshsh
elif [ -f ~/$zshsh ]; then
  source ~/$zshsh
fi
