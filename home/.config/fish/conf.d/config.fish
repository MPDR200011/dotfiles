# XDG
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_CACHE_HOME "$HOME/.cache"
set -x XDG_DATA_HOME "$HOME/.local/share"

set -x XDG_DATA_DIRS "/usr/local/share:/usr/share"
set -x XDG_CONFIG_DIRS "/etc/xdg"

# config file cleanup
set -x GNUPGHOME "$XDG_CONFIG_HOME/gnupg"
set -x CCACHE_CONFIGPATH "$XDG_CONFIG_HOME/ccache"
