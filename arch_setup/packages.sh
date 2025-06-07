#!/bin/sh

sudo pacman -Syyu
sudo pacman -S base-devel git man-db inetutils

cd $HOME
mkdir $HOME/personal

git clone https://github.com/MPDR200011/dotfiles $HOME/personal/dotfiles

# link configs
ln -s $DOTFILES_DIR/home/.config/nvim/ $HOME/.config/nvim/
ln -s $DOTFILES_DIR/home/.config/fish/ $HOME/.config/fish/
ln -s $DOTFILES_DIR/home/.config/omf/ $HOME/.config/omf/
ln -s $DOTFILES_DIR/home/.config/ghostty/ $HOME/.config/ghostty/
ln -s $DOTFILES_DIR/home/.config/hypr/ $HOME/.config/hypr/

ln -s $DOTFILES_DIR/home/.gitconfig $HOME/.gitconfig
ln -s $DOTFILES_DIR/home/.tmux.conf $HOME/.tmux.conf

# Setup more tools
INSTALL_SCRIPTS=$DOTFILES_DIR/arch_setup

sudo pacman -S fish tmux ghostty ansible nvim
$INSTALL_SCRIPTS/install_yay.sh
$INSTALL_SCRIPTS/install_omf.sh

echo "Setting up git stuff"
$INSTALL_SCRIPTS/setup_git.sh

chsh -s /usr/bin/fish

# Setup fonts
# TODO


# Applications
yay -S yay brave-bin
sudo pacman -S spotify-launcher discord


