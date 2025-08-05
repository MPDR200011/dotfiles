#!/bin/sh

set -x

SCRIPTS_DIR=$HOME/.local/bin

mkdir -p $SCRIPTS_DIR

ln -s $DOTFILES_DIR/scripts $SCRIPTS_DIR/scripts
