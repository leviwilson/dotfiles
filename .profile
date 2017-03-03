source ~/git-completion.bash

export PATH=$HOME/bin:$PATH
export PATH=$PATH:/usr/local/sbin
export PATH=/usr/local/git-tf:$PATH
export PATH=/usr/local/share/python:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=$PATH:$HOME/bin
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export GREP_OPTIONS="--color=auto"
export BUNDLER_EDITOR=vim
export EDITOR='vim'

stty -ixon -ixoff

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\`if [ \$? = 0 ]; then echo 👍 ; else echo 💥 ; fi\`\n\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# added by travis gem
[ -f /Users/lwilson/.travis/travis.sh ] && source /Users/lwilson/.travis/travis.sh

if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
fi

alias fuck='sudo $(history -p \!\!)' 
alias whatsmyip='curl -s ifconfig.me/ip'
alias adb_reset='adb kill-server && adb start-server'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
if [ -f `brew --prefix`/etc/autojump.sh ]; then
    . `brew --prefix`/etc/autojump.sh
fi

flush_dns() {
  sudo killall -HUP mDNSResponder
}

fix_camera() {
  sudo killall VDCAssistant
}

fix_screenhero() {
  pgrep Screenhero | xargs kill -9
  sleep 1
  open /Applications/Screenhero.app
}

docker_remove_containers() {
  docker rm $(docker ps -a -q)
}

pid4portfn() {
  lsof -n -ti tcp:$1
}

alias pid4port=pid4portfn
