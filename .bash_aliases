# ---------------------- FUNCTIONS -------------------------------------------
# Access dev area
mydev() {
    cd $HOME/dev/$1; ls
}

# Set Users as the webroot location
mywcd() {
    cd $HOME/source/$1; ls
}

# Instead of backticks `` use $() as a subsitution
myedit() {
    vim $($HOME/bin/findx $1 -first)
}

# Because I am not getting .vimrc I am aliasing view to vi -R which does work
# unfortunately I need to create a function to do this
myview() {
    vim -R $1
}

# The difference between mac and linux which
mywhich() {
    if [ $OSTYPE == "mac" ]; then
      type $1;
    else
      which $1;
    fi
}

# The difference between resource on mac and linux
myfree() {
    if [ $OSTYPE == "mac" ]; then
      "vm_stat"
    else
      "free"
    fi
}

if [ $OSTYPE == "mac" ]; then
  colorflag="-G"
else
  colorflag="--color"
fi

# ---------------------- FUNC ALIASES ----------------------------------------

alias dev=mydev
alias wcd=mywcd
alias which=mywhich
alias edit=myedit
alias view=myview
alias db=mydb
alias free=myfree

# ---------------------- ALIASES ---------------------------------------------

# Navigation
alias rent="cd $HOME/dev/rent"

# some more ls aliases
alias ls="ls -Fh ${colorflag}"
alias ll="ls -alF"
alias la="ls -laF"
alias l="ls -lF"

# Resource aliases
alias boc="source $HOME/.bashrc"
alias soa="boc"

# My aliases
alias vi="vim -p "
alias fsg="find . -type f -print0 | xargs -0 egrep "
alias psg="ps -ef | grep "

# Code builder
alias mkperl="createtemplates -code perl "
alias mkpy="createtemplates -code python "

# Get to my areas
alias one="ssh oneweb-01.kolson.sb.lax1.rent.com"
alias www="ssh www-01.kolson.sb.lax1.rent.com"
alias web="ssh webapp-01.kolson.sb.lax1.rent.com"
