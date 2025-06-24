#!/bin/sh

# Desktop Setup
cd $HOME
mkdir $HOME/personal
mkdir $HOME/.config/gnupg/

sudo pacman -Syyu
sudo pacman -S \
    hyprlock \
    base-devel git man-db \
    xorg-xrdb \
    inetutils \
    fish tmux ghostty nvim \
    ansible waybar pavucontrol \
    bluez bluez-utils bluetui

cd $DOTFILES_DIR && git remote set-url origin git@github.com:MPDR200011/dotfiles.git && cd $HOME

# link configs
ln -s $DOTFILES_DIR/home/.config/nvim/ $HOME/.config/nvim/
ln -s $DOTFILES_DIR/home/.config/fish/ $HOME/.config/fish/
ln -s $DOTFILES_DIR/home/.config/omf/ $HOME/.config/omf/
ln -s $DOTFILES_DIR/home/.config/ghostty/ $HOME/.config/ghostty/
ln -s $DOTFILES_DIR/home/.config/hypr/ $HOME/.config/hypr/
ln -s $DOTFILES_DIR/home/.config/fontconfig/ $HOME/.config/fontconfig/
ln -s $DOTFILES_DIR/home/.config/dunst/ $HOME/.config/dunst/

ln -s $DOTFILES_DIR/home/.gitconfig $HOME/.gitconfig
ln -s $DOTFILES_DIR/home/.tmux.conf $HOME/.tmux.conf
ln -s $DOTFILES_DIR/home/.Xresources $HOME/.Xresources

# Setup more tools
sudo pacman -S fzf

INSTALL_SCRIPTS=$DOTFILES_DIR/arch_setup

$INSTALL_SCRIPTS/install_yay.sh
$INSTALL_SCRIPTS/install_omf.sh

echo "Setting up git stuff"
$INSTALL_SCRIPTS/setup_git.sh

chsh -s /usr/bin/fish

# Setup fonts
sudo pacman -S otf-monaspace ttf-monaspace-variable

# Applications
yay -S brave-bin 1password
sudo pacman -S spotify-launcher discord


