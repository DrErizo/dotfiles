#!/bin/sh
cp ./.zshrc ~/
cp -r ./.config/* ~/.config/
sudo cp ./clearine.conf /etc/

git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..

paru -Sy git dunst mpd youtube-dl neofetch ncdu alacritty pcmanfm ranger exa base-devel mpv neovim clang ccls firefox flameshot volumeicon vimb azote wayland sway waybar wofi xorg-xwayland xorg-xlsclients qt5-wayland glfw-wayland zsh sddm fastfetch nvim-packer-git 
sudo cp -r ./sddm /usr/share/
sudo sed -i 's/^Current=.*/Current=CleanWind/' /etc/sddm.conf

sudo systemctl enable sddm
sudo cp -r ./CyberSynchro /boot/grub/themes/
sudo sed -i 's/^GRUB_THEME=.*/GRUB_THEME="/boot/grub/themes/CyberSynchro/theme.txt"/' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

chsh /bin/zsh
sudo reboot
