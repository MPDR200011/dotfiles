hl.window_rule({
    name = "suppress-maximize",
    match = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    name = "xwayland-issues",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
    no_focus = true,
})

hl.window_rule({
    name = "terminal-to-ws2",
    match = { class = "com.mitchellh.ghostty" },
    workspace = 2,
})

hl.window_rule({
    name = "spotify-ws9",
    match = { class = "spotify" },
    workspace = 9,
})

hl.window_rule({
    name = "jetbrains-focus",
    match = { class = "^(jetbrains-.*)$" },
    focus_on_activate = true,
})

hl.window_rule({
    name = "jetbrains-dialogs",
    match = { class = "^(jetbrains-.*)$", float = true, title = "^(.?$|[^w].*|w[^i].*|wi[^n].*)" },
    dim_around = true,
    center = true,
})

hl.window_rule({
    name = "jetbrains-autocomplete",
    match = { class = "^(jetbrains-.*)$", title = "^win.*$" },
    no_anim = true,
    no_initial_focus = true,
    rounding = 0,
})
