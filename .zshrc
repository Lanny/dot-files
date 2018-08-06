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

plugins=(django)

source $ZSH/oh-my-zsh.sh

# Load local zshrc if it exists
if [[ -a ~/.zshrc-local ]]; then
  source ~/.zshrc-local
fi

# User configuration
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

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
