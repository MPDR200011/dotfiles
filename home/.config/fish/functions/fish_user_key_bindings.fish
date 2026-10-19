function fish_user_key_bindings
    bind --user \cf 'tmux-sessionizer'
    bind --user -M insert \cf 'tmux-sessionizer'

    functions -q work_key_bindings
    and work_key_bindings
end
