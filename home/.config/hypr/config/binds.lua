local TERMINAL = "ghostty"
local FILE_MANAGER = "dolphin"
local MENU = "wofi --show drun"
local MOD = "SUPER"

hl.bind(MOD .. " + RETURN", hl.dsp.exec_cmd(TERMINAL))
hl.bind(MOD .. " + CTRL + V", hl.dsp.exec_cmd("ghostty -e wiremix --tab output"))
hl.bind(MOD .. " + E", hl.dsp.exec_cmd(FILE_MANAGER))
hl.bind(MOD .. " + R", hl.dsp.exec_cmd(MENU))

hl.bind(MOD .. " + SHIFT + SPACE", hl.dsp.window.float({ action = "toggle" }))
hl.bind(MOD .. " + SHIFT + Q", hl.dsp.window.close())

hl.bind(MOD .. " + SHIFT + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(MOD .. " + SHIFT + M", hl.dsp.exit())

hl.bind(MOD .. " + F", hl.dsp.window.fullscreen({ action = "toggle" }))

hl.bind(MOD .. " + J", hl.dsp.focus({ direction = "down" }))
hl.bind(MOD .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(MOD .. " + L", hl.dsp.layout("move +col"))
hl.bind(MOD .. " + H", hl.dsp.layout("move -col"))

hl.bind(MOD .. " + SHIFT + L", hl.dsp.layout("movewindowto r"))
hl.bind(MOD .. " + SHIFT + H", hl.dsp.layout("movewindowto l"))
hl.bind(MOD .. " + SHIFT + K", hl.dsp.layout("movewindowto u"))
hl.bind(MOD .. " + SHIFT + J", hl.dsp.layout("movewindowto d"))

for i = 1, 10 do
    local key = i % 10
    hl.bind(MOD .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(MOD .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind(MOD .. " + SHIFT + period", hl.dsp.workspace.move({ monitor = "+1" }))
hl.bind(MOD .. " + SHIFT + comma", hl.dsp.workspace.move({ monitor = "-1" }))

hl.bind(MOD .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(MOD .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

hl.bind(MOD .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(MOD .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Audio controls
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })

-- Monitor brightness
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Play controls
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
