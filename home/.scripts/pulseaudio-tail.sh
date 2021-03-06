#!/bin/sh

sink=$(pacmd list-sinks | grep "* index: " | awk '{print $3}')

volume_up() {
    pactl set-sink-volume @DEFAULT_SINK@ +1%
}

volume_down() {
    pactl set-sink-volume @DEFAULT_SINK@ -1%
}

volume_mute() {
    pactl set-sink-mute @DEFAULT_SINK@ toggle
}

volume_print() {
    if pacmd list-sinks | grep active | head -n 1 | grep -q speaker; then
        icon=""
    elif pacmd list-sinks | grep active | head -n 1 | grep -q headphones; then
          icon=""
    else
        icon=""
    fi

    muted=$(pamixer --sink $sink --get-mute)

    if [ "$muted" = true ]; then
        echo "$icon %"
    else
        echo "$icon $(pamixer --sink $sink --get-volume)%"
    fi
}

listen() {
    volume_print

    pactl subscribe | while read -r event; do
        if echo "$event" | grep -q -E "('change'|'remove') on sink"; then
            sink=$(pacmd list-sinks | grep "* index: " | awk '{print $3}')
            volume_print
        elif echo "$event" | grep -q "#$sink"; then
            volume_print
        fi
    done
}

case "$1" in
    --up)
        volume_up
        ;;
    --down)
        volume_down
        ;;
    --mute)
        volume_mute
        ;;
    *)
        listen
        ;;
esac
