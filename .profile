
# MacPorts Installer addition on 2011-09-16_at_23:44:03: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export ANDROID_HOME=/opt/android
export PATH=$ANDROID_HOME/tools/:$ANDROID_HOME/platform-tools/:$PATH
export PATH=$HOME/bin:$PATH

if [ -f `brew --prefix`/etc/autojump.sh ]; then
    . `brew --prefix`/etc/autojump.sh
fi
  

adb() {
  /opt/android/platform-tools/adb "$@" | color_highlighter
}

pair_with_levi() {
  ssh -R1337:localhost:22 -i ~/Downloads/levis_pair.pem ubuntu@"$@"
}
