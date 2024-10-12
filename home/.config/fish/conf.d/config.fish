# vim: ft=sh
set fish_greeting

set -x TERMINAL alacritty
set -x EDITOR nvim

abbr -a -- l 'ls -l --group-directories-first'
abbr -a -- la 'ls -la --group-directories-first'
abbr -a -- v nvim
abbr -a -- xo xdg-open
abbr -a -- dup '$TERMINAL & && disown'

function run_ansible_tasks
    ansible -m ansible.builtin.include_tasks -a $argv[1] -e dotfiles_path="$HOME/dotfiles" -K localhost  
end

set -x PATH "$PATH:$HOME/.gem/ruby/2.7.0/bin:$HOME/.local/bin:$HOME/bin"

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

