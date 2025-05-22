#!/bin/bash

killall dwm         
killall slstatus    
killall picom       
killall volumeicon  
killall dunst       
killall pipewire    
killall flameshot   

dwm &
slstatus &
picom &
volumeicon &
dunst &
pipewire & 
flameshot &
firefox &

nitrogen --head=0 --set-auto --random ~/media/wallpapers --save
nitrogen --head=1 --set-auto --random ~/media/wallpapers --save
nitrogen --head=2 --set-auto --random ~/media/wallpapers --save

exec dwm
