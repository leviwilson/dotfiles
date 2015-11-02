source dnvm.sh
source ~/git-completion.bash

export PATH="/opt/chef/embedded/bin:$PATH"
export ANDROID_HOME=$HOME/android/sdk
export PATH=$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/17.0.0:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$PATH:/usr/local/sbin
export PATH=/usr/local/git-tf:$PATH
export PATH=/usr/local/share/python:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=$PATH:$HOME/bin
export USE_SIM_LAUNCHER_SERVER=YES
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export GREP_OPTIONS="--color=auto"
export PATH=/usr/local/bin:$PATH:/opt/android/tools:/opt/android/platform-tools
export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.4.0
export PATH=$PATH:$EC2_HOME/bin
export JAVA_HOME=$(/usr/libexec/java_home)

stty -ixon -ixoff

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="🍺  \u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# added by travis gem
[ -f /Users/lwilson/.travis/travis.sh ] && source /Users/lwilson/.travis/travis.sh

if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
fi

alias fuck='sudo $(history -p \!\!)' 
alias whatsmyip='curl -s ifconfig.me/ip'
alias adb_reset='adb kill-server && adb start-server'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# MacPorts Installer addition on 2011-09-16_at_23:44:03: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

if [ -f `brew --prefix`/etc/autojump.sh ]; then
    . `brew --prefix`/etc/autojump.sh
fi

adb() {
  $ANDROID_HOME/platform-tools/adb "$@" | color_highlighter
}

flush_dns() {
  sudo killall -HUP mDNSResponder
}

