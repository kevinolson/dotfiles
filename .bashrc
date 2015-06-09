# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export TZ=PST8PDT

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# ---------------------- MY ADDITIONS ----------------------------------------

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export GIT_EDITOR=vim
export EDITOR=vim

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=200000

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Bind the up and down arrows to search history if partial command typed
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Allows bash to glob filenames in a case-insensitve manner
#shopt -s nocaseglob
export PATH=/usr/local/bin:$PATH:/usr/local/sbin

# Smarter completion
if [ -f /etc/bash_completion ]; then
 . /etc/bash_completion
fi

if [ ! -x createtemplates ]; then
    export PATH="$HOME/bin:$PATH"
fi

export PERL5LIB="$HOME/dev/lib"

# Disable backup files in tar
export COPYFILE_DISABLE=true

# If this is an xterm set the title to user@host:dir
case "$TERM" in xterm*|rxvt*)

    alias __git_ps1="git branch 2>/dev/null | grep '*' | sed 's/* \(.*\)/ (\1)/'"
    # User prompt setup: <jobs running> <user>:[<location> (git repo)]
    PS1='\j \u@\h\[\033[00m\]:[\[\033[01;37m\]\W\[\033[01;36m\]$(__git_ps1)\[\033[00m\]]$ '

    # Set xterm title
    #PROMPT_COMMAND='echo -ne "\033]0;${USER}: ${PWD}\007"'
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u: \w\a\]$PS1"
    ;;
*)
    ;;
esac
