#!/bin/bash

#
# kernel parameters: acpi_osi=Linux acpi_backlight=vendor intel_iommu=off i915.modeset=1
#

#########
# $Home #
#########
ln -s $HOME/Repositories/dotfiles/zshrc ~/.zshrc
ln -s $HOME/Repositories/dotfiles/gtkrc-2.0 ~/.gtkrc-2.0
ln -s $HOME/Repositories/dotfiles/vimrc ~/.vimrc
ln -s $HOME/Repositories/dotfiles/xprofile ~/.xprofile
ln -s $HOME/Repositories/dotfiles/Xresources ~/.Xresources

##########
## .zsh ##
##########
if [ ! -d ~/.zsh ]
then
    ln -s ~/Repositories/dotfiles/zsh ~/.zsh
fi

##########
# .local #
##########
if [ ! -d ~/.local/bin ]
then 
    ln -s ~/Repositories/dotfiles/bin ~/.local/bin
fi

###########
# .config #
###########
if [ ! -d ~/.config ]
then 
    mkdir $HOME/.config
fi
configs=( alacritty bspwm compton dunst fontconfig gtk-3.0 nvim polybar sxhkd )
for conf in "${configs[@]}"
do 
    if [ ! -d ~/.config/$conf ] 
    then
        ln -s ~/Repositories/dotfiles/config/$conf ~/.config/$conf
    fi
done
