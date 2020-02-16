alias ll='ls -alF'
alias vim='vim -p'

PS1="%n@%m:%~
$ " 

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval $(thefuck --alias)
