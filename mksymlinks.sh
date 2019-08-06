#!/bin/bash

#
# kernel parameters: acpi_osi=Linux acpi_backlight=vendor intel_iommu=off
#

#########
# $Home #
#########
dotfiles=( gtkrc-2.0 vimrc xprofile Xresources zshrc )
for df in "${dotfiles[@]}"
do
    if [ ! -d $HOME/.$df ]
    then
        ln -s $HOME/Repositories/dotfiles/$df $HOME/.$df
    fi
done


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
if [ ! -d ~/.local ]
then
    mkdir ~/.local
fi

if [ ! -d ~/.local/bin ]
then
    ln -s ~/Repositories/dotfiles/bin ~/.local/bin
fi


###########
# .config #
###########
if [ ! -d $HOME/.config ]
then
    mkdir $HOME/.config
fi
configs=( alacritty bspwm compton dunst fontconfig gtk-3.0 nvim polybar sxhkd )
for conf in "${configs[@]}"
do
    if [ ! -d $HOME/.config/$conf ]
    then
        ln -s $HOME/Repositories/dotfiles/config/$conf ~/.config/$conf
    fi
done

chsh -s /bin/zsh $USER
