#!/bin/bash
#
# Author: Paul Claret
# Contact: paul.claret@thalesgroup.com
#
# apply.sh
#
# apply.sh is a simple script used to copy the config files and folders
# from my dotfiles repo (this folder) to the system home.
# Every file/folder is a pair of (dotfile location/system location)
# The script takes the dotfile location and moves it to the system location.
# If you modify the config and want this scirpt to take it into account,
# you need to add them to the list below
#
# This script also installs/trys to install packages used by the configs
#


i3_packages="polybar picom feh"
packages="$i3_packages"


if [[ -n $(which dnf) ]];then
    sudo dnf install $packages
fi;
if [[ -n $(which apt) ]];then
    sudo apt install $packages
fi;


# This version  tracks the following config files:
# tmux, i3, ghostty, vim, nvim, zsh

tmux_conf=".tmux.conf;.tmux.conf"
tmux_folder=".tmux/;.tmux/"
zsh=".zshrc;.zshrc"
vimrc=".vimrc;.vimrc"
viminfo=".viminfo;.viminfo"
vim_folder=".vim/;.vim/"
ghostty_folder="ghostty/;./config/ghostty"
whole_config_folder=".config/;.config/"

all_configs=($tmux_conf $tmux_folder $zsh $vimrc $viminfo $vim_folder $ghostty_folder $whole_config_folder)

for e in ${all_configs[@]};do
    IFS=";" read -r -a arr <<< "${e}"
    echo "${arr[0]}" | grep -qE "/$" 
    if [[ $? -eq 0 ]];then
        cp -r ${arr[0]} ~/${arr[1]}
    else
        cp ${arr[0]} ~/${arr[1]}
    fi;
done;
