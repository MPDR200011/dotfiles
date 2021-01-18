#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
my_laptop_external_monitor=$(xrandr --query | grep 'DP-1')
if [[ $my_laptop_external_monitor != *disconnected* ]]; then
    export MAINMONITOR="DP-1"
    export SECMONITOR="eDP-1"
    polybar main &
    polybar secondary &
else
    polybar main &
fi
ln -s /tmp/polybar_mqueue.$! /tmp/ipc-bottom
echo "Bars launched..."
