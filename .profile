
# MacPorts Installer addition on 2011-09-16_at_23:44:03: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export ANDROID_HOME=$HOME/android/sdk
export PATH=$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/17.0.0:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$PATH:/usr/local/sbin
export PATH=/usr/local/git-tf:$PATH
export PATH=/usr/local/share/python:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export USE_SIM_LAUNCHER_SERVER=YES

if [ -f `brew --prefix`/etc/autojump.sh ]; then
    . `brew --prefix`/etc/autojump.sh
fi
  

adb() {
  $ANDROID_HOME/platform-tools/adb "$@" | color_highlighter
}

pair_with_levi() {
  ssh -R1337:localhost:22 -i ~/Downloads/levis_pair.pem ubuntu@"$@"
}

flush_dns() {
  sudo killall -HUP mDNSResponder
}
