#!/bin/sh

set -ex

sudo dnf install ansible python3-libdnf5

ansible-galaxy collection install community.general

ansible-playbook -K -e dotfiles_path=$HOME/dotfiles playbooks/setup_fedora_workstation.yml

