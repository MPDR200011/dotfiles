#!/bin/sh

set -x

hyprpm update

hyprpm add https://github.com/hyprwm/hyprland-plugins

hyprpm enable hyprscrolling
