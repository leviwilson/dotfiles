source ~/.bashrc
source ~/.profile
source ~/git-completion.bash

if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="🍺  \u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export PATH="/opt/chef/embedded/bin:$PATH"

alias fuck='sudo $(history -p \!\!)' 
alias whatsmyip='curl -s ifconfig.me/ip'
alias adb_reset='adb kill-server && adb start-server'
