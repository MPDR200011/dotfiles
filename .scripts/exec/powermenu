#!/bin/sh

choice=$(echo -e "logoff\nsuspend\nshutdown\nreboot" | rofi -dmenu -sep '\n')

case $choice in
  logoff)
    confirmation "Are you sure you want to logoff?" "i3-msg exit"
    ;;
  suspend)
    confirmation "Are you sure you want to suspend?" "betterlockscreen -s"
    ;;
  shutdown)
    confirmation "Are you sure you want to shutdown?" "shutdown -h now"
    ;;
  reboot)
    confirmation "Are you sure you want to reboot?" "sudo reboot"
    ;;
esac
