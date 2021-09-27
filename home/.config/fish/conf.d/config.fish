# vim: ft=sh
set fish_greeting

set -x TERMINAL alacritty
set -x EDITOR nvim

abbr -a -U -- l 'ls -l --group-directories-first'
abbr -a -U -- la 'ls -la --group-directories-first'
abbr -a -U -- pf 'cd ~/WHAREHOUSE/Programacao'
abbr -a -U -- sshfeuphome 'sshfs up201707329@yoda.fe.up.pt: ~/feup-home'
abbr -a -U -- umountfeuphome 'fusermount3 -u ~/feup-home'
abbr -a -U -- v nvim
abbr -a -U -- xo xdg-open
abbr -a -U -- mirrors sudo reflector --protocol https --protocol http --latest 50 --number 50 --sort rate --save /etc/pacman.d/mirrorlist
abbr -a -U -- dup '$TERMINAL & && disown'

function ranger
    command ranger --choosedir={$HOME}/.rangerdir $argv; set LASTDIR (cat {$HOME}/.rangerdir); cd "$LASTDIR"
end

abbr -a -U -- ra ranger

set -x PATH "$PATH:$HOME/.gem/ruby/2.7.0/bin:$HOME/.local/bin"

# Android stuff
set -x ANDROID_HOME "$HOME/Android/Sdk"
set -x ANDROID_SDK_ROOT "$HOME/Android/Sdk"
set -x PATH "$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools"
set -x GRADLE_HOME "/usr/share/java/gradle"

# XDG
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_CACHE_HOME "$HOME/.cache"
set -x XDG_DATA_HOME "$HOME/.local/share"

set -x XDG_DATA_DIRS "/usr/local/share:/usr/share"
set -x XDG_CONFIG_DIRS "/etc/xdg"

# config file cleanup
set -x GNUPGHOME "$XDG_CONFIG_HOME/gnupg"
set -x CCACHE_CONFIGPATH "$XDG_CONFIG_HOME/ccache"

# File cleanup
