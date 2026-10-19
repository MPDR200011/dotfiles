# Load work-specific config from a separate repo, if it's cloned
set -l work_dotfiles $HOME/work-dotfiles

if test -d $work_dotfiles
    fish_add_path -g $work_dotfiles/bin
    set fish_function_path $fish_function_path[1] $work_dotfiles/fish/functions $fish_function_path[2..]
    set fish_complete_path $fish_complete_path[1] $work_dotfiles/fish/completions $fish_complete_path[2..]

    for conf in $work_dotfiles/fish/conf.d/*.fish
        source $conf
    end
end
