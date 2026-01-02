# vim: ft=sh
set fish_greeting

set -x TERMINAL ghostty
set -x EDITOR nvim

abbr -a -- l 'ls -l --group-directories-first'
abbr -a -- la 'ls -la --group-directories-first'
abbr -a -- v nvim
abbr -a -- xo xdg-open
abbr -a -- dup '$TERMINAL & && disown'

function run_ansible_tasks
    ansible -m ansible.builtin.include_tasks -a $argv[1] -e dotfiles_path="$HOME/dotfiles" -K localhost  
end

# pnpm
set -gx PNPM_HOME "/home/mpdr/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
