set fish_greeting

set TERMINAL termite

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

set PATH "$PATH:$HOME/.gem/ruby/2.7.0/bin:$HOME/.local/bin"
set GRADLE_HOME "/usr/share/java/gradle"

# XDG
set XDG_CONFIG_HOME "$HOME/.config"
set XDG_CACHE_HOME "$HOME/.cache"
set XDG_DATA_HOME "$HOME/.local/share"

set XDG_DATA_DIRS "/usr/local/share:/usr/share"
set XDG_CONFIG_DIRS "/etc/xdg"

# config file cleanup
set GNUPGHOME "$XDG_CONFIG_HOME/gnupg"
set CCACHE_CONFIGPATH "$XDG_CONFIG_HOME/ccache"

# File cleanup
