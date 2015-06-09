# Set architecture flags
export ARCHFLAGS="-arch x86_64"

# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH

# Figure out what OS we are
if [ "$(uname)" == "Darwin" ]; then
  export OSTYPE='mac'
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  export OSTYPE='linux'
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
  export OSTYPE='windows'
fi

# Load .bashrc if it exists
test -f ~/.bashrc      && source ~/.bashrc
test -f ~/.profile     && source ~/.profile

test -f /usr/local/share/chruby/chruby.sh && source /usr/local/share/chruby/chruby.sh
test -f /usr/local/share/chruby/auto.sh && source /usr/local/share/chruby/auto.sh

[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn
