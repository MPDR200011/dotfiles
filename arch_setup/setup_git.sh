#!/bin/sh


ANSIBLE_DIR=$1

mkdir $HOME/.ssh/

echo "Decrypting SSH keys"
ansible-vault decrypt --output $HOME/.ssh/id_ed25519 $ANSIBLE_DIR/secrets/id_ed25519
ansible-vault decrypt --output $HOME/.ssh/id_ed25519.pub $ANSIBLE_DIR/secrets/id_ed25519.pub
