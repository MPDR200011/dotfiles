#!/bin/sh

git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay
makepkg -si
yay -S yay
