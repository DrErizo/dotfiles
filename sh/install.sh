#!/bin/sh

echo "\e[34m;1~ [Copying config files] ~\n\e[39m;1"
cp sh $HOME/ -r
cp .zshrc $HOME/ -r
cp .xinitrc $HOME/ -r
cp .config $HOME/ -r
sudo cp picom.conf /usr/xdg/ -r

echo "\e[34m;1~ [ Compiling WM ] ~\n\e[39m;1"
sudo make install -C dwm
sudo make install -C slstatus
sudo make install -C dmenu

echo "\e[34m;1~ [ Compiling paru ] ~\n\e[39m;1"
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

echo "\e[34m;1~ [ Installing essentials ] ~\n\e[39m;1"
paru -S picom dunst mpd yt-dlp fastfetch ncdu alacritty ranger exa base-devel mpv neovim nvim-packer-git clang ccls firefox flameshot volumeicon vimb nitrogen btop sddm

echo "\e[34m;1~ [ Setting sddm theme ] ~\n\e[39m;1"
sudo cp -r ./sddm /usr/share/
sudo cp dwm.desktop /usr/share/xsessions
sudo sed -i 's/^Current=.*/Current=CleanWind/' /etc/sddm.conf
sudo systemctl enable sddm

echo "\e[34m;1~ [ Setting grub theme ] ~\n\e[39m;1"
sudo cp -r ./CyberSynchro /boot/grub/themes/
sudo sed -i 's/^GRUB_THEME=.*/GRUB_THEME="/boot/grub/themes/CyberSynchro/theme.txt"/' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg


echo "\e[34m;1~ [ Changing to zsh] ~\n\e[39m;1"
chsh /bin/zsh

echo "\n\e[32m;1~ [ You are now free to reboot your machine ] ~\n\e[39m;1"
