hl.on("hyprland.start", function()
    hl.exec_cmd("waybar")
    hl.exec_cmd("xrdb -merge ~/.Xresources")
    hl.exec_cmd("hypridle")
end)

hl.exec_cmd("/usr/bin/gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'")
hl.exec_cmd("/usr/bin/gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3'")
