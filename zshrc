setopt PROMPT_SUBST
autoload -U promptinit
promptinit
prompt grb

autoload -U compinit
compinit

export PATH=/usr/local/bin:${PATH}
export PATH="$HOME/bin:$PATH"

export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
export WORDCHARS='*?[]~&;!$%^<>'
export ACK_COLOR_MATCH='red'

###alias

alias gac="git add . && git commit"
alias am="g amend"
alias die="exec $SHELL -l"
alias g=git
alias gd="g di"
alias gs="g st"
alias l=ls
alias ls="ls -Ga"

t() {
  if [ -e script/test ]; then
    script/test $*
  else
    rspec --color spec
  fi
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
