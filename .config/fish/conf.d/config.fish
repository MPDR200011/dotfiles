abbr -a -U -- l 'ls -l'
abbr -a -U -- la 'ls -la'
abbr -a -U -- pf 'cd ~/WHAREHOUSE/Programacao'
abbr -a -U -- sshfeuphome 'sshfs up201707329@yoda.fe.up.pt: ~/feup-home'
abbr -a -U -- umountfeuphome 'fusermount3 -u ~/feup-home'
abbr -a -U -- v nvim
abbr -a -U -- xo xdg-open


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
rm $HOME/.lesshst
