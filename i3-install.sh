#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

git clone https://aur.archlinux.org/yay.git
cd yay/
makepkg -si --noconfirm

sudo pacman -S --noconfirm xorg xorg-xinit lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings i3 terminator light gpicview neovim ranger lxappearance playerctl zathura cmus smplayer scrot feh blueman arandr pcmanfm arc-gtk-theme rofi

sudo systemctl enable lightdm
