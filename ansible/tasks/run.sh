#!/bin/bash


ansible -m ansible.builtin.import_tasks -a $1 -e dotfiles_path=$HOME/dotfiles -K localhost
