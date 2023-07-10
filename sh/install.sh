#!/bin/sh
cp sh $HOME/ -r
cp .vimrc $HOME/ -r
cp .zshrc $HOME/ -r
cp .xinitrc $HOME/ -r

git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

paru -S dunst polkit-gnome-authentication-agent mpd youtube-dl neofetch ncdu alacritty pcmanfm ranger exa base-devel mpv neovim clang ccls firefox flameshot volumeicon vimb nitrogen
