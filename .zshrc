# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=128

# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="mh"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

plugins=(django history-substring-search)

source $ZSH/oh-my-zsh.sh

# Load local zshrc if it exists
if [[ -a ~/.zshrc-local ]]; then
  source ~/.zshrc-local
fi

export PATH="$PATH:$HOME/.bin"

# User configuration
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Let pipenv know we're using zsh
export PIPENV_SHELL=$(which zsh)

export LS_COLORS="di=1;36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# Setup the prompt
if [ $UID -eq 0 ]; then NCOLOR="green"; else NCOLOR="white"; fi

if [[ -n $SSH_CONNECTION ]]; then
  export PROMPT='[%{$fg[$NCOLOR]%}%B%n%b@%F{green}%m%f%{$reset_color%}:%{$fg[red]%}%30<...<%~%<<%{$reset_color%}]%(!.#.$) '
else
  export PROMPT='[%{$fg[$NCOLOR]%}%B%n%b%{$reset_color%}:%{$fg[red]%}%30<...<%~%<<%{$reset_color%}]%(!.#.$) '
fi
#
# Vi mode
bindkey -v

# Visual indication of mode
function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

# GOTTA GO FAST!
export KEYTIMEOUT=1

function fine { find . -name "*$1*" }

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel

# Disable the thing where typing a director name cds into it
unsetopt AUTO_CD

alias jpp="pbpaste | python -m json.tool"


gsel() {
  grep --color=always -r $@ | sel -p'^([^:]*):.*'
}
