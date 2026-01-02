#!/bin/sh

set -x

if [ -z "${DOTFILES_DIR}" ]; then
	echo "Define DOTFILES_DIR first"
	exit 1
fi

# Desktop Setup
cd $HOME
mkdir $HOME/.config/gnupg/

sudo pacman -Syyu
sudo pacman -S \
    uwsm \
    qt5-wayland \
    qt6-wayland \
    xdg-desktop-portal-hyprland \
    hyprpolkitagent \
    pipewire \
    wireplumber \
    dunst \
    waybar \
    pavucontrol \
    bluetui \
    ansible \
    reflector \
    hyprlock \
    unzip \
    base-devel \
    git \
    man-db \
    xorg-xrdb \
    inetutils \
    fish \
    tmux \
    ghostty \
    nvim \
    ripgrep \
    bluez \
    bluez-utils \
    font-manager \
    kwallet \
    kwalletmanager \
    
systemctl --user enable --now hyprpolkitagent.service

# link configs
ln -s $DOTFILES_DIR/home/.config/nvim $HOME/.config/nvim
ln -s $DOTFILES_DIR/home/.config/fish $HOME/.config/fish
ln -s $DOTFILES_DIR/home/.config/omf $HOME/.config/omf
ln -s $DOTFILES_DIR/home/.config/ghostty $HOME/.config/ghostty
ln -s $DOTFILES_DIR/home/.config/hypr $HOME/.config/hypr
ln -s $DOTFILES_DIR/home/.config/fontconfig $HOME/.config/fontconfig
ln -s $DOTFILES_DIR/home/.config/dunst $HOME/.config/dunst
ln -s $DOTFILES_DIR/home/.config/waybar $HOME/.config/waybar
ln -s $DOTFILES_DIR/home/.config/brave-flags.conf $HOME/.config/brave-flags.conf

ln -s $DOTFILES_DIR/home/.gitconfig $HOME/.gitconfig
ln -s $DOTFILES_DIR/home/.tmux.conf $HOME/.tmux.conf
ln -s $DOTFILES_DIR/home/.Xresources $HOME/.Xresources

# Setup more tools
sudo pacman -S fzf

INSTALL_SCRIPTS=$DOTFILES_DIR/arch_setup

$INSTALL_SCRIPTS/install_yay.sh
$INSTALL_SCRIPTS/install_omf.sh
$INSTALL_SCRIPTS/setup_scripts.sh

echo "Setting up git stuff"
$INSTALL_SCRIPTS/setup_git.sh

sudo chsh -s /usr/bin/fish

# Setup fonts
sudo pacman -S \
    otf-monaspace \
    ttf-monaspace-variable \
    noto-fonts-emoji \
    nerd-fonts \
    noto-fonts \
    ttf-roboto

yay -S \
    ttf-segoe-ui-variable

# Applications
yay -S brave-bin 1password
sudo pacman -S spotify-launcher discord

yay -S pwvucontrol
