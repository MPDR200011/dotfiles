#!/bin/sh

[ $(echo -e "No\nYes" | rofi -dmenu -mesg "$1") = "Yes" ] && $2
