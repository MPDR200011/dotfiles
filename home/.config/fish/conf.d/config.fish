# XDG
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_CACHE_HOME "$HOME/.cache"
set -x XDG_DATA_HOME "$HOME/.local/share"

set -x XDG_DATA_DIRS "/usr/local/share:/usr/share"
set -x XDG_CONFIG_DIRS "/etc/xdg"

# config file cleanup
set -x GNUPGHOME "$XDG_CONFIG_HOME/gnupg"
set -x CCACHE_CONFIGPATH "$XDG_CONFIG_HOME/ccache"

set x PATH "$PATH:$HOME/.gem/ruby/2.7.0/bin:$HOME/.local/bin:$HOME/bin"

# Android stuff
set -x ANDROID_HOME "/opt/android-sdk"
set -x PATH "$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/cmdline-tools/latest/bin"
set -x GRADLE_HOME "/usr/share/java/gradle"
